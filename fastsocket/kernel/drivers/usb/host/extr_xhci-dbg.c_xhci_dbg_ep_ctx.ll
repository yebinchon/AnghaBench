; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_ep_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-dbg.c_xhci_dbg_ep_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_container_ctx = type { i64, i64 }
%struct.xhci_ep_ctx = type { i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Endpoint %02d Context:\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"@%p (virt) @%08llx (dma) %#08x - ep_info\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"@%p (virt) @%08llx (dma) %#08x - ep_info2\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"@%p (virt) @%08llx (dma) %#08llx - deq\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"@%p (virt) @%08llx (dma) %#08x - tx_info\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"@%p (virt) @%08llx (dma) %#08x - rsvd[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.xhci_container_ctx*, i32)* @xhci_dbg_ep_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_dbg_ep_ctx(%struct.xhci_hcd* %0, %struct.xhci_container_ctx* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_container_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xhci_ep_ctx*, align 8
  %13 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_container_ctx* %1, %struct.xhci_container_ctx** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 31, i32* %9, align 4
  store i32 4, i32* %10, align 4
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @HCC_64BYTE_CONTEXT(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %18, 31
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %20, %3
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %138, %23
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %141

28:                                               ; preds = %24
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %30 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd* %29, %struct.xhci_container_ctx* %30, i32 %31)
  store %struct.xhci_ep_ctx* %32, %struct.xhci_ep_ctx** %12, align 8
  %33 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %37 = ptrtoint %struct.xhci_ep_ctx* %36 to i64
  %38 = load %struct.xhci_container_ctx*, %struct.xhci_container_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.xhci_container_ctx, %struct.xhci_container_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  %42 = add i64 %35, %41
  store i64 %42, i64* %13, align 8
  %43 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %47 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %48 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %47, i32 0, i32 4
  %49 = ptrtoint i32* %48 to i32
  %50 = load i64, i64* %13, align 8
  %51 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %52 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %46, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %49, i64 %50, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %13, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %13, align 8
  %59 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %60 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %61 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %60, i32 0, i32 3
  %62 = ptrtoint i32* %61 to i32
  %63 = load i64, i64* %13, align 8
  %64 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %65 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %62, i64 %63, i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %13, align 8
  %72 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %73 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %74 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %73, i32 0, i32 2
  %75 = ptrtoint i32* %74 to i32
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %78 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %75, i64 %76, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = mul nsw i32 2, %81
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %13, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %13, align 8
  %86 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %87 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %88 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %87, i32 0, i32 1
  %89 = ptrtoint i32* %88 to i32
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %92 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %89, i64 %90, i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = load i64, i64* %13, align 8
  %98 = add nsw i64 %97, %96
  store i64 %98, i64* %13, align 8
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %125, %28
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 3
  br i1 %101, label %102, label %128

102:                                              ; preds = %99
  %103 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %104 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %105 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = ptrtoint i32* %109 to i32
  %111 = load i64, i64* %13, align 8
  %112 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %113 = getelementptr inbounds %struct.xhci_ep_ctx, %struct.xhci_ep_ctx* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %103, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %110, i64 %111, i32 %118, i32 %119)
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %13, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %13, align 8
  br label %125

125:                                              ; preds = %102
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %99

128:                                              ; preds = %99
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %133 = load %struct.xhci_ep_ctx*, %struct.xhci_ep_ctx** %12, align 8
  %134 = bitcast %struct.xhci_ep_ctx* %133 to i32*
  %135 = load i64, i64* %13, align 8
  %136 = call i32 @dbg_rsvd64(%struct.xhci_hcd* %132, i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %131, %128
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %24

141:                                              ; preds = %24
  ret void
}

declare dso_local i32 @HCC_64BYTE_CONTEXT(i32) #1

declare dso_local %struct.xhci_ep_ctx* @xhci_get_ep_ctx(%struct.xhci_hcd*, %struct.xhci_container_ctx*, i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, ...) #1

declare dso_local i32 @dbg_rsvd64(%struct.xhci_hcd*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
