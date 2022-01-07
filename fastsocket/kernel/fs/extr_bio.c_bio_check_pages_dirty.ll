; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_check_pages_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_check_pages_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.bio*, %struct.bio_vec* }
%struct.bio_vec = type { %struct.page* }
%struct.page = type { i32 }

@bio_dirty_lock = common dso_local global i32 0, align 4
@bio_dirty_list = common dso_local global %struct.bio* null, align 8
@bio_dirty_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bio_check_pages_dirty(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio_vec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 2
  %10 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  store %struct.bio_vec* %10, %struct.bio_vec** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %43, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.bio*, %struct.bio** %2, align 8
  %14 = getelementptr inbounds %struct.bio, %struct.bio* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %11
  %18 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %18, i64 %20
  %22 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %21, i32 0, i32 0
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %6, align 8
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = call i64 @PageDirty(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %17
  %28 = load %struct.page*, %struct.page** %6, align 8
  %29 = call i64 @PageCompound(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27, %17
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i32 @page_cache_release(%struct.page* %32)
  %34 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %34, i64 %36
  %38 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %37, i32 0, i32 0
  store %struct.page* null, %struct.page** %38, align 8
  br label %42

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %11

46:                                               ; preds = %11
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_lock_irqsave(i32* @bio_dirty_lock, i64 %50)
  %52 = load %struct.bio*, %struct.bio** @bio_dirty_list, align 8
  %53 = load %struct.bio*, %struct.bio** %2, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 1
  store %struct.bio* %52, %struct.bio** %54, align 8
  %55 = load %struct.bio*, %struct.bio** %2, align 8
  store %struct.bio* %55, %struct.bio** @bio_dirty_list, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* @bio_dirty_lock, i64 %56)
  %58 = call i32 @schedule_work(i32* @bio_dirty_work)
  br label %62

59:                                               ; preds = %46
  %60 = load %struct.bio*, %struct.bio** %2, align 8
  %61 = call i32 @bio_put(%struct.bio* %60)
  br label %62

62:                                               ; preds = %59, %49
  ret void
}

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i64 @PageCompound(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
