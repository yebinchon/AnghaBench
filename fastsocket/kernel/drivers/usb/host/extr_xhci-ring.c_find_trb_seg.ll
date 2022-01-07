; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_find_trb_seg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-ring.c_find_trb_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_segment = type { %struct.xhci_segment*, %union.xhci_trb* }
%union.xhci_trb = type { %struct.xhci_generic_trb }
%struct.xhci_generic_trb = type { i32* }

@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@LINK_TOGGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xhci_segment* (%struct.xhci_segment*, %union.xhci_trb*, i32*)* @find_trb_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xhci_segment* @find_trb_seg(%struct.xhci_segment* %0, %union.xhci_trb* %1, i32* %2) #0 {
  %4 = alloca %struct.xhci_segment*, align 8
  %5 = alloca %struct.xhci_segment*, align 8
  %6 = alloca %union.xhci_trb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xhci_segment*, align 8
  %9 = alloca %struct.xhci_generic_trb*, align 8
  store %struct.xhci_segment* %0, %struct.xhci_segment** %5, align 8
  store %union.xhci_trb* %1, %union.xhci_trb** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  store %struct.xhci_segment* %10, %struct.xhci_segment** %8, align 8
  br label %11

11:                                               ; preds = %59, %3
  %12 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %13 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %12, i32 0, i32 1
  %14 = load %union.xhci_trb*, %union.xhci_trb** %13, align 8
  %15 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %16 = icmp ugt %union.xhci_trb* %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %11
  %18 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %19 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %18, i32 0, i32 1
  %20 = load %union.xhci_trb*, %union.xhci_trb** %19, align 8
  %21 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %20, i64 %23
  %25 = load %union.xhci_trb*, %union.xhci_trb** %6, align 8
  %26 = icmp ult %union.xhci_trb* %24, %25
  br label %27

27:                                               ; preds = %17, %11
  %28 = phi i1 [ true, %11 ], [ %26, %17 ]
  br i1 %28, label %29, label %60

29:                                               ; preds = %27
  %30 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %31 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %30, i32 0, i32 1
  %32 = load %union.xhci_trb*, %union.xhci_trb** %31, align 8
  %33 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %32, i64 %35
  %37 = bitcast %union.xhci_trb* %36 to %struct.xhci_generic_trb*
  store %struct.xhci_generic_trb* %37, %struct.xhci_generic_trb** %9, align 8
  %38 = load %struct.xhci_generic_trb*, %struct.xhci_generic_trb** %9, align 8
  %39 = getelementptr inbounds %struct.xhci_generic_trb, %struct.xhci_generic_trb* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @LINK_TOGGLE, align 4
  %44 = call i32 @cpu_to_le32(i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %29
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %47, %29
  %52 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %53 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %52, i32 0, i32 0
  %54 = load %struct.xhci_segment*, %struct.xhci_segment** %53, align 8
  store %struct.xhci_segment* %54, %struct.xhci_segment** %8, align 8
  %55 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  %56 = load %struct.xhci_segment*, %struct.xhci_segment** %5, align 8
  %57 = icmp eq %struct.xhci_segment* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store %struct.xhci_segment* null, %struct.xhci_segment** %4, align 8
  br label %62

59:                                               ; preds = %51
  br label %11

60:                                               ; preds = %27
  %61 = load %struct.xhci_segment*, %struct.xhci_segment** %8, align 8
  store %struct.xhci_segment* %61, %struct.xhci_segment** %4, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  ret %struct.xhci_segment* %63
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
