; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_debug_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_debug_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_segment = type { i32, %union.xhci_trb* }
%union.xhci_trb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@TRBS_PER_SEGMENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"@%016llx %08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_debug_segment(%struct.xhci_hcd* %0, %struct.xhci_segment* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.xhci_segment*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.xhci_trb*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.xhci_segment* %1, %struct.xhci_segment** %4, align 8
  %8 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %9 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %12 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %11, i32 0, i32 1
  %13 = load %union.xhci_trb*, %union.xhci_trb** %12, align 8
  store %union.xhci_trb* %13, %union.xhci_trb** %7, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %54, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TRBS_PER_SEGMENT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load %struct.xhci_segment*, %struct.xhci_segment** %4, align 8
  %20 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %19, i32 0, i32 1
  %21 = load %union.xhci_trb*, %union.xhci_trb** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %union.xhci_trb, %union.xhci_trb* %21, i64 %23
  store %union.xhci_trb* %24, %union.xhci_trb** %7, align 8
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %28 = bitcast %union.xhci_trb* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le64_to_cpu(i32 %30)
  %32 = call i32 @lower_32_bits(i32 %31)
  %33 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %34 = bitcast %union.xhci_trb* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le64_to_cpu(i32 %36)
  %38 = call i32 @upper_32_bits(i32 %37)
  %39 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %40 = bitcast %union.xhci_trb* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %union.xhci_trb*, %union.xhci_trb** %7, align 8
  %45 = bitcast %union.xhci_trb* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = call i32 @xhci_dbg(%struct.xhci_hcd* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %32, i32 %38, i32 %43, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 12
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %18
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %14

57:                                               ; preds = %14
  ret void
}

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
