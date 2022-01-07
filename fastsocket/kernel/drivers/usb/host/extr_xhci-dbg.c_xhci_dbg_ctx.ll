; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_container_ctx = type { i64, i64 }
%struct.xhci_input_control_ctx = type { i32*, i32, i32 }

@XHCI_CTX_TYPE_INPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"@%p (virt) @%08llx (dma) %#08x - drop flags\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"@%p (virt) @%08llx (dma) %#08x - add flags\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"@%p (virt) @%08llx (dma) %#08x - rsvd2[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_dbg_ctx(%struct.xhci_hcd* %0, %struct.xhci_container_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_container_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.xhci_input_control_ctx*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_container_ctx* %1, %struct.xhci_container_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 4, i32* %8, align 4
  %12 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @HCC_64BYTE_CONTEXT(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XHCI_CTX_TYPE_INPUT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %90

24:                                               ; preds = %3
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %26 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %27 = call %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(%struct.xhci_hcd* %25, %struct.xhci_container_ctx* %26)
  store %struct.xhci_input_control_ctx* %27, %struct.xhci_input_control_ctx** %11, align 8
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %29 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %11, align 8
  %30 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %29, i32 0, i32 2
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %11, align 8
  %33 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (%struct.xhci_hcd*, i8*, i32*, i64, i32, ...) @xhci_dbg(%struct.xhci_hcd* %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %30, i64 %31, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %41 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %11, align 8
  %42 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %41, i32 0, i32 1
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %11, align 8
  %45 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.xhci_hcd*, i8*, i32*, i64, i32, ...) @xhci_dbg(%struct.xhci_hcd* %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* %42, i64 %43, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, %49
  store i64 %51, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %77, %24
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 6
  br i1 %54, label %55, label %80

55:                                               ; preds = %52
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %57 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %11, align 8
  %58 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %11, align 8
  %65 = getelementptr inbounds %struct.xhci_input_control_ctx, %struct.xhci_input_control_ctx* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (%struct.xhci_hcd*, i8*, i32*, i64, i32, ...) @xhci_dbg(%struct.xhci_hcd* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32* %62, i64 %63, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %9, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %55
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %85 = load %struct.xhci_input_control_ctx*, %struct.xhci_input_control_ctx** %11, align 8
  %86 = bitcast %struct.xhci_input_control_ctx* %85 to i32*
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @dbg_rsvd64(%struct.xhci_hcd* %84, i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %83, %80
  br label %90

90:                                               ; preds = %89, %3
  %91 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %92 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %93 = call i32 @xhci_dbg_slot_ctx(%struct.xhci_hcd* %91, %struct.xhci_container_ctx* %92)
  %94 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %95 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @xhci_dbg_ep_ctx(%struct.xhci_hcd* %94, %struct.xhci_container_ctx* %95, i32 %96)
  ret void
}

declare dso_local i32 @HCC_64BYTE_CONTEXT(i32) #1

declare dso_local %struct.xhci_input_control_ctx* @xhci_get_input_control_ctx(%struct.xhci_hcd*, %struct.xhci_container_ctx*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32*, i64, i32, ...) #1

declare dso_local i32 @dbg_rsvd64(%struct.xhci_hcd*, i32*, i64) #1

declare dso_local i32 @xhci_dbg_slot_ctx(%struct.xhci_hcd*, %struct.xhci_container_ctx*) #1

declare dso_local i32 @xhci_dbg_ep_ctx(%struct.xhci_hcd*, %struct.xhci_container_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
