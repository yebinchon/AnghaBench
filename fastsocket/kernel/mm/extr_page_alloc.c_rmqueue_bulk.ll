; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_rmqueue_bulk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_rmqueue_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }
%struct.list_head = type { i32 }
%struct.page = type { %struct.list_head }

@NR_FREE_PAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zone*, i32, i64, %struct.list_head*, i32, i32)* @rmqueue_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmqueue_bulk(%struct.zone* %0, i32 %1, i64 %2, %struct.list_head* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.zone*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.zone* %0, %struct.zone** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.list_head* %3, %struct.list_head** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.zone*, %struct.zone** %7, align 8
  %16 = getelementptr inbounds %struct.zone, %struct.zone* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %56, %6
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load %struct.zone*, %struct.zone** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call %struct.page* @__rmqueue(%struct.zone* %24, i32 %25, i32 %26)
  store %struct.page* %27, %struct.page** %14, align 8
  %28 = load %struct.page*, %struct.page** %14, align 8
  %29 = icmp eq %struct.page* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %59

34:                                               ; preds = %23
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @likely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.page*, %struct.page** %14, align 8
  %42 = getelementptr inbounds %struct.page, %struct.page* %41, i32 0, i32 0
  %43 = load %struct.list_head*, %struct.list_head** %10, align 8
  %44 = call i32 @list_add(%struct.list_head* %42, %struct.list_head* %43)
  br label %50

45:                                               ; preds = %34
  %46 = load %struct.page*, %struct.page** %14, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = load %struct.list_head*, %struct.list_head** %10, align 8
  %49 = call i32 @list_add_tail(%struct.list_head* %47, %struct.list_head* %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.page*, %struct.page** %14, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @set_page_private(%struct.page* %51, i32 %52)
  %54 = load %struct.page*, %struct.page** %14, align 8
  %55 = getelementptr inbounds %struct.page, %struct.page* %54, i32 0, i32 0
  store %struct.list_head* %55, %struct.list_head** %10, align 8
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %18

59:                                               ; preds = %33, %18
  %60 = load %struct.zone*, %struct.zone** %7, align 8
  %61 = load i32, i32* @NR_FREE_PAGES, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 %62, %63
  %65 = sub nsw i32 0, %64
  %66 = call i32 @__mod_zone_page_state(%struct.zone* %60, i32 %61, i32 %65)
  %67 = load %struct.zone*, %struct.zone** %7, align 8
  %68 = getelementptr inbounds %struct.zone, %struct.zone* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  %70 = load i32, i32* %13, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.page* @__rmqueue(%struct.zone*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_add(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @__mod_zone_page_state(%struct.zone*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
