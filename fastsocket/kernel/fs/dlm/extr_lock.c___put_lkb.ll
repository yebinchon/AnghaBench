; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c___put_lkb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c___put_lkb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_lkb = type { i32, i64, i32, i32 }

@kill_lkb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*)* @__put_lkb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__put_lkb(%struct.dlm_ls* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca i64, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %5, align 8
  %7 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %8 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = ashr i32 %9, 16
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %13 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @write_lock(i32* %17)
  %19 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %20 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %19, i32 0, i32 3
  %21 = load i32, i32* @kill_lkb, align 4
  %22 = call i64 @kref_put(i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %2
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %26 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %25, i32 0, i32 2
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %29 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @write_unlock(i32* %33)
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %36 = call i32 @detach_lkb(%struct.dlm_lkb* %35)
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %24
  %42 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %43 = call i64 @is_master_copy(%struct.dlm_lkb* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %47 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @dlm_free_lvb(i64 %48)
  br label %50

50:                                               ; preds = %45, %41, %24
  %51 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %52 = call i32 @dlm_free_lkb(%struct.dlm_lkb* %51)
  store i32 1, i32* %3, align 4
  br label %61

53:                                               ; preds = %2
  %54 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %55 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @write_unlock(i32* %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %50
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @kref_put(i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @detach_lkb(%struct.dlm_lkb*) #1

declare dso_local i64 @is_master_copy(%struct.dlm_lkb*) #1

declare dso_local i32 @dlm_free_lvb(i64) #1

declare dso_local i32 @dlm_free_lkb(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
