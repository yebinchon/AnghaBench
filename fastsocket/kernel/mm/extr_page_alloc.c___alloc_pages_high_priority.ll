; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___alloc_pages_high_priority.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c___alloc_pages_high_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zonelist = type { i32 }
%struct.zone = type { i32 }

@ALLOC_NO_WATERMARKS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@BLK_RW_ASYNC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i32, i32, %struct.zonelist*, i32, i32*, %struct.zone*, i32)* @__alloc_pages_high_priority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @__alloc_pages_high_priority(i32 %0, i32 %1, %struct.zonelist* %2, i32 %3, i32* %4, %struct.zone* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.zonelist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.zone*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.zonelist* %2, %struct.zonelist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.zone* %5, %struct.zone** %13, align 8
  store i32 %6, i32* %14, align 4
  br label %16

16:                                               ; preds = %48, %7
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.zonelist*, %struct.zonelist** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @ALLOC_NO_WATERMARKS, align 4
  %23 = load %struct.zone*, %struct.zone** %13, align 8
  %24 = load i32, i32* %14, align 4
  %25 = call %struct.page* @get_page_from_freelist(i32 %17, i32* %18, i32 %19, %struct.zonelist* %20, i32 %21, i32 %22, %struct.zone* %23, i32 %24)
  store %struct.page* %25, %struct.page** %15, align 8
  %26 = load %struct.page*, %struct.page** %15, align 8
  %27 = icmp ne %struct.page* %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @__GFP_NOFAIL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.zone*, %struct.zone** %13, align 8
  %35 = load i32, i32* @BLK_RW_ASYNC, align 4
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 %36, 50
  %38 = call i32 @wait_iff_congested(%struct.zone* %34, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %33, %28, %16
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.page*, %struct.page** %15, align 8
  %42 = icmp ne %struct.page* %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @__GFP_NOFAIL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ %47, %43 ]
  br i1 %49, label %16, label %50

50:                                               ; preds = %48
  %51 = load %struct.page*, %struct.page** %15, align 8
  ret %struct.page* %51
}

declare dso_local %struct.page* @get_page_from_freelist(i32, i32*, i32, %struct.zonelist*, i32, i32, %struct.zone*, i32) #1

declare dso_local i32 @wait_iff_congested(%struct.zone*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
