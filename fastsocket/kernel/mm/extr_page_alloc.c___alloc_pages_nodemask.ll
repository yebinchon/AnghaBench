; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___alloc_pages_nodemask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___alloc_pages_nodemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zonelist = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.zone = type { i32 }

@gfp_allowed_mask = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@__GFP_HARDWALL = common dso_local global i32 0, align 4
@ALLOC_WMARK_LOW = common dso_local global i32 0, align 4
@ALLOC_CPUSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @__alloc_pages_nodemask(i32 %0, i32 %1, %struct.zonelist* %2, i32* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zonelist*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.zone*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.zonelist* %2, %struct.zonelist** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @gfp_zone(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @allocflags_to_migratetype(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @gfp_allowed_mask, align 4
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @lockdep_trace_alloc(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @__GFP_WAIT, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @might_sleep_if(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @should_fail_alloc_page(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store %struct.page* null, %struct.page** %5, align 8
  br label %91

32:                                               ; preds = %4
  %33 = load %struct.zonelist*, %struct.zonelist** %8, align 8
  %34 = getelementptr inbounds %struct.zonelist, %struct.zonelist* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store %struct.page* null, %struct.page** %5, align 8
  br label %91

44:                                               ; preds = %32
  %45 = call i32 (...) @get_mems_allowed()
  %46 = load %struct.zonelist*, %struct.zonelist** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @first_zones_zonelist(%struct.zonelist* %46, i32 %47, i32* %48, %struct.zone** %11)
  %50 = load %struct.zone*, %struct.zone** %11, align 8
  %51 = icmp ne %struct.zone* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = call i32 (...) @put_mems_allowed()
  store %struct.page* null, %struct.page** %5, align 8
  br label %91

54:                                               ; preds = %44
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @__GFP_HARDWALL, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.zonelist*, %struct.zonelist** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ALLOC_WMARK_LOW, align 4
  %63 = load i32, i32* @ALLOC_CPUSET, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.zone*, %struct.zone** %11, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call %struct.page* @get_page_from_freelist(i32 %57, i32* %58, i32 %59, %struct.zonelist* %60, i32 %61, i32 %64, %struct.zone* %65, i32 %66)
  store %struct.page* %67, %struct.page** %12, align 8
  %68 = load %struct.page*, %struct.page** %12, align 8
  %69 = icmp ne %struct.page* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %54
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.zonelist*, %struct.zonelist** %8, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.zone*, %struct.zone** %11, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call %struct.page* @__alloc_pages_slowpath(i32 %75, i32 %76, %struct.zonelist* %77, i32 %78, i32* %79, %struct.zone* %80, i32 %81)
  store %struct.page* %82, %struct.page** %12, align 8
  br label %83

83:                                               ; preds = %74, %54
  %84 = call i32 (...) @put_mems_allowed()
  %85 = load %struct.page*, %struct.page** %12, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @trace_mm_page_alloc(%struct.page* %85, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %90, %struct.page** %5, align 8
  br label %91

91:                                               ; preds = %83, %52, %43, %31
  %92 = load %struct.page*, %struct.page** %5, align 8
  ret %struct.page* %92
}

declare dso_local i32 @gfp_zone(i32) #1

declare dso_local i32 @allocflags_to_migratetype(i32) #1

declare dso_local i32 @lockdep_trace_alloc(i32) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local i64 @should_fail_alloc_page(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_mems_allowed(...) #1

declare dso_local i32 @first_zones_zonelist(%struct.zonelist*, i32, i32*, %struct.zone**) #1

declare dso_local i32 @put_mems_allowed(...) #1

declare dso_local %struct.page* @get_page_from_freelist(i32, i32*, i32, %struct.zonelist*, i32, i32, %struct.zone*, i32) #1

declare dso_local %struct.page* @__alloc_pages_slowpath(i32, i32, %struct.zonelist*, i32, i32*, %struct.zone*, i32) #1

declare dso_local i32 @trace_mm_page_alloc(%struct.page*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
