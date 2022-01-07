; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___alloc_pages_may_oom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___alloc_pages_may_oom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zonelist = type { i32 }
%struct.zone = type { i32 }

@__GFP_HARDWALL = common dso_local global i32 0, align 4
@ALLOC_WMARK_HIGH = common dso_local global i32 0, align 4
@ALLOC_CPUSET = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@PAGE_ALLOC_COSTLY_ORDER = common dso_local global i32 0, align 4
@__GFP_THISNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32, i32, %struct.zonelist*, i32, i32*, %struct.zone*, i32)* @__alloc_pages_may_oom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__alloc_pages_may_oom(i32 %0, i32 %1, %struct.zonelist* %2, i32 %3, i32* %4, %struct.zone* %5, i32 %6) #0 {
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.zonelist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.zone*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct.zonelist* %2, %struct.zonelist** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store %struct.zone* %5, %struct.zone** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load %struct.zonelist*, %struct.zonelist** %11, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @try_set_zonelist_oom(%struct.zonelist* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %7
  %22 = call i32 @schedule_timeout_uninterruptible(i32 1)
  store %struct.page* null, %struct.page** %8, align 8
  br label %68

23:                                               ; preds = %7
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @__GFP_HARDWALL, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.zonelist*, %struct.zonelist** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @ALLOC_WMARK_HIGH, align 4
  %32 = load i32, i32* @ALLOC_CPUSET, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.zone*, %struct.zone** %14, align 8
  %35 = load i32, i32* %15, align 4
  %36 = call %struct.page* @get_page_from_freelist(i32 %26, i32* %27, i32 %28, %struct.zonelist* %29, i32 %30, i32 %33, %struct.zone* %34, i32 %35)
  store %struct.page* %36, %struct.page** %16, align 8
  %37 = load %struct.page*, %struct.page** %16, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %63

40:                                               ; preds = %23
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @__GFP_NOFAIL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @PAGE_ALLOC_COSTLY_ORDER, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %63

50:                                               ; preds = %45
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @__GFP_THISNODE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %63

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %40
  %58 = load %struct.zonelist*, %struct.zonelist** %11, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @out_of_memory(%struct.zonelist* %58, i32 %59, i32 %60, i32* %61)
  br label %63

63:                                               ; preds = %57, %55, %49, %39
  %64 = load %struct.zonelist*, %struct.zonelist** %11, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @clear_zonelist_oom(%struct.zonelist* %64, i32 %65)
  %67 = load %struct.page*, %struct.page** %16, align 8
  store %struct.page* %67, %struct.page** %8, align 8
  br label %68

68:                                               ; preds = %63, %21
  %69 = load %struct.page*, %struct.page** %8, align 8
  ret %struct.page* %69
}

declare dso_local i32 @try_set_zonelist_oom(%struct.zonelist*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local %struct.page* @get_page_from_freelist(i32, i32*, i32, %struct.zonelist*, i32, i32, %struct.zone*, i32) #1

declare dso_local i32 @out_of_memory(%struct.zonelist*, i32, i32, i32*) #1

declare dso_local i32 @clear_zonelist_oom(%struct.zonelist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
