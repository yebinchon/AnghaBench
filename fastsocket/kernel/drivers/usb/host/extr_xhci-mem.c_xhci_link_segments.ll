; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_link_segments.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-mem.c_xhci_link_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_segment = type { %struct.TYPE_4__*, i32, %struct.xhci_segment* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@TYPE_EVENT = common dso_local global i32 0, align 4
@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@TRB_TYPE_BITMASK = common dso_local global i32 0, align 4
@TRB_LINK = common dso_local global i32 0, align 4
@TYPE_ISOC = common dso_local global i32 0, align 4
@XHCI_AMD_0x96_HOST = common dso_local global i32 0, align 4
@TRB_CHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_segment*, %struct.xhci_segment*, i32)* @xhci_link_segments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_link_segments(%struct.xhci_hcd* %0, %struct.xhci_segment* %1, %struct.xhci_segment* %2, i32 %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_segment*, align 8
  %7 = alloca %struct.xhci_segment*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_segment* %1, %struct.xhci_segment** %6, align 8
  store %struct.xhci_segment* %2, %struct.xhci_segment** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %11 = icmp ne %struct.xhci_segment* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.xhci_segment*, %struct.xhci_segment** %7, align 8
  %14 = icmp ne %struct.xhci_segment* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %4
  br label %86

16:                                               ; preds = %12
  %17 = load %struct.xhci_segment*, %struct.xhci_segment** %7, align 8
  %18 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %19 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %18, i32 0, i32 2
  store %struct.xhci_segment* %17, %struct.xhci_segment** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @TYPE_EVENT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %86

23:                                               ; preds = %16
  %24 = load %struct.xhci_segment*, %struct.xhci_segment** %7, align 8
  %25 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cpu_to_le64(i32 %26)
  %28 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %29 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %27, i32* %36, align 4
  %37 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %38 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @TRB_TYPE_BITMASK, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* @TRB_LINK, align 4
  %53 = call i32 @TRB_TYPE(i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %57 = call i64 @xhci_link_trb_quirk(%struct.xhci_hcd* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %23
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @TYPE_ISOC, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %65 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @XHCI_AMD_0x96_HOST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63, %23
  %71 = load i32, i32* @TRB_CHAIN, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %63, %59
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @cpu_to_le32(i32 %75)
  %77 = load %struct.xhci_segment*, %struct.xhci_segment** %6, align 8
  %78 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %76, i32* %85, align 4
  br label %86

86:                                               ; preds = %15, %74, %16
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

declare dso_local i64 @xhci_link_trb_quirk(%struct.xhci_hcd*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
