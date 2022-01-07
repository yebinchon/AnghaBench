; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_reinit_cached_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_reinit_cached_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_ring = type { i32, i32, %struct.xhci_segment* }
%struct.xhci_segment = type { %struct.xhci_segment*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@TRB_CYCLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_ring*, i32, i32)* @xhci_reinit_cached_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_reinit_cached_ring(%struct.xhci_hcd* %0, %struct.xhci_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xhci_segment*, align 8
  %10 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_ring* %1, %struct.xhci_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %12 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %11, i32 0, i32 2
  %13 = load %struct.xhci_segment*, %struct.xhci_segment** %12, align 8
  store %struct.xhci_segment* %13, %struct.xhci_segment** %9, align 8
  br label %14

14:                                               ; preds = %57, %4
  %15 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %16 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(%struct.TYPE_4__* %17, i32 0, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i32, i32* @TRB_CYCLE, align 4
  %32 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %33 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %31
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %26

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %48 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %49 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %50 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %49, i32 0, i32 0
  %51 = load %struct.xhci_segment*, %struct.xhci_segment** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @xhci_link_segments(%struct.xhci_hcd* %47, %struct.xhci_segment* %48, %struct.xhci_segment* %51, i32 %52)
  %54 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %55 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %54, i32 0, i32 0
  %56 = load %struct.xhci_segment*, %struct.xhci_segment** %55, align 8
  store %struct.xhci_segment* %56, %struct.xhci_segment** %9, align 8
  br label %57

57:                                               ; preds = %46
  %58 = load %struct.xhci_segment*, %struct.xhci_segment** %9, align 8
  %59 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %60 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %59, i32 0, i32 2
  %61 = load %struct.xhci_segment*, %struct.xhci_segment** %60, align 8
  %62 = icmp ne %struct.xhci_segment* %58, %61
  br i1 %62, label %14, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %66 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @xhci_initialize_ring_info(%struct.xhci_ring* %67, i32 %68)
  %70 = load %struct.xhci_ring*, %struct.xhci_ring** %6, align 8
  %71 = getelementptr inbounds %struct.xhci_ring, %struct.xhci_ring* %70, i32 0, i32 1
  %72 = call i32 @INIT_LIST_HEAD(i32* %71)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @xhci_link_segments(%struct.xhci_hcd*, %struct.xhci_segment*, %struct.xhci_segment*, i32) #1

declare dso_local i32 @xhci_initialize_ring_info(%struct.xhci_ring*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
