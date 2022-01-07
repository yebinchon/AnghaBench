; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_bounce.c_blk_queue_bounce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_bounce.c_blk_queue_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio = type { i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@blk_max_pfn = common dso_local global i64 0, align 8
@page_pool = common dso_local global i32* null, align 8
@isa_page_pool = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_queue_bounce(%struct.request_queue* %0, %struct.bio** %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.bio**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.bio** %1, %struct.bio*** %4, align 8
  %7 = load %struct.bio**, %struct.bio*** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  %9 = call i32 @bio_has_data(%struct.bio* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %14 = load %struct.bio**, %struct.bio*** %4, align 8
  %15 = load %struct.bio*, %struct.bio** %14, align 8
  %16 = call i32 @must_snapshot_stable_pages(%struct.request_queue* %13, %struct.bio* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_DMA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %12
  %24 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %25 = call i64 @queue_bounce_pfn(%struct.request_queue* %24)
  %26 = load i64, i64* @blk_max_pfn, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %47

32:                                               ; preds = %28, %23
  %33 = load i32*, i32** @page_pool, align 8
  store i32* %33, i32** %6, align 8
  br label %41

34:                                               ; preds = %12
  %35 = load i32*, i32** @isa_page_pool, align 8
  %36 = icmp ne i32* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32*, i32** @isa_page_pool, align 8
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %34, %32
  %42 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %43 = load %struct.bio**, %struct.bio*** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @__blk_queue_bounce(%struct.request_queue* %42, %struct.bio** %43, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %31, %11
  ret void
}

declare dso_local i32 @bio_has_data(%struct.bio*) #1

declare dso_local i32 @must_snapshot_stable_pages(%struct.request_queue*, %struct.bio*) #1

declare dso_local i64 @queue_bounce_pfn(%struct.request_queue*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__blk_queue_bounce(%struct.request_queue*, %struct.bio**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
