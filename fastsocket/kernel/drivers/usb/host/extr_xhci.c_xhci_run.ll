; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci.c_xhci_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"xhci_run\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Command ring memory map follows:\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ERST memory map follows:\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Event ring:\0A\00", align 1
@ERST_PTR_MASK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"ERST deq = 64'h%0lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"// Set the interrupt modulation register\0A\00", align 1
@ER_IRQ_INTERVAL_MASK = common dso_local global i64 0, align 8
@CMD_EIE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"// Enable interrupts, cmd = 0x%x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"// Enabling event ring interrupter %p by writing 0x%x to irq_pending\0A\00", align 1
@XHCI_NEC_HOST = common dso_local global i32 0, align 4
@TRB_NEC_GET_FW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Finished xhci_run for USB2 roothub\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@POLL_TIMEOUT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@xhci_event_ring_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_run(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %8)
  store %struct.xhci_hcd* %9, %struct.xhci_hcd** %7, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %17 = call i32 @xhci_run_finished(%struct.xhci_hcd* %16)
  store i32 %17, i32* %2, align 4
  br label %151

18:                                               ; preds = %1
  %19 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %20 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %22 = call i32 @xhci_try_enable_msi(%struct.usb_hcd* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %151

27:                                               ; preds = %18
  %28 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %29 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %31 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %32 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @xhci_debug_ring(%struct.xhci_hcd* %30, i32 %33)
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %36 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %37 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @xhci_dbg_ring_ptrs(%struct.xhci_hcd* %35, i32 %38)
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %41 = call i32 @xhci_dbg_cmd_ptrs(%struct.xhci_hcd* %40)
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %43 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %45 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %46 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %45, i32 0, i32 4
  %47 = call i32 @xhci_dbg_erst(%struct.xhci_hcd* %44, i32* %46)
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %49 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %52 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @xhci_debug_ring(%struct.xhci_hcd* %50, i32 %53)
  %55 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %57 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @xhci_dbg_ring_ptrs(%struct.xhci_hcd* %55, i32 %58)
  %60 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %61 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %62 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = call i64 @xhci_read_64(%struct.xhci_hcd* %60, i32* %64)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* @ERST_PTR_MASK, align 8
  %67 = xor i64 %66, -1
  %68 = load i64, i64* %5, align 8
  %69 = and i64 %68, %67
  store i64 %69, i64* %5, align 8
  %70 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %71)
  %73 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %74 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %75 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %76 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %77 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = call i64 @xhci_readl(%struct.xhci_hcd* %75, i32* %79)
  store i64 %80, i64* %4, align 8
  %81 = load i64, i64* @ER_IRQ_INTERVAL_MASK, align 8
  %82 = xor i64 %81, -1
  %83 = load i64, i64* %4, align 8
  %84 = and i64 %83, %82
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = or i64 %85, 160
  store i64 %86, i64* %4, align 8
  %87 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %88 = load i64, i64* %4, align 8
  %89 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %90 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = call i32 @xhci_writel(%struct.xhci_hcd* %87, i64 %88, i32* %92)
  %94 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %95 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %96 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %95, i32 0, i32 2
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i64 @xhci_readl(%struct.xhci_hcd* %94, i32* %98)
  store i64 %99, i64* %4, align 8
  %100 = load i64, i64* @CMD_EIE, align 8
  %101 = load i64, i64* %4, align 8
  %102 = or i64 %101, %100
  store i64 %102, i64* %4, align 8
  %103 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %104 = load i64, i64* %4, align 8
  %105 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %104)
  %106 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %107 = load i64, i64* %4, align 8
  %108 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %109 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %108, i32 0, i32 2
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = call i32 @xhci_writel(%struct.xhci_hcd* %106, i64 %107, i32* %111)
  %113 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %114 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %115 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %114, i32 0, i32 1
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = call i64 @xhci_readl(%struct.xhci_hcd* %113, i32* %117)
  store i64 %118, i64* %4, align 8
  %119 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %120 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %121 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i64, i64* %4, align 8
  %124 = call i64 @ER_IRQ_ENABLE(i64 %123)
  %125 = trunc i64 %124 to i32
  %126 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %119, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_6__* %122, i32 %125)
  %127 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %128 = load i64, i64* %4, align 8
  %129 = call i64 @ER_IRQ_ENABLE(i64 %128)
  %130 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %131 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %130, i32 0, i32 1
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = call i32 @xhci_writel(%struct.xhci_hcd* %127, i64 %129, i32* %133)
  %135 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %136 = call i32 @xhci_print_ir_set(%struct.xhci_hcd* %135, i32 0)
  %137 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %138 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @XHCI_NEC_HOST, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %27
  %144 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %145 = load i32, i32* @TRB_NEC_GET_FW, align 4
  %146 = call i32 @TRB_TYPE(i32 %145)
  %147 = call i32 @xhci_queue_vendor_command(%struct.xhci_hcd* %144, i32 0, i32 0, i32 0, i32 %146)
  br label %148

148:                                              ; preds = %143, %27
  %149 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %150 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %149, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %148, %25, %15
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_run_finished(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i32 @xhci_try_enable_msi(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_debug_ring(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @xhci_dbg_ring_ptrs(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @xhci_dbg_cmd_ptrs(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_dbg_erst(%struct.xhci_hcd*, i32*) #1

declare dso_local i64 @xhci_read_64(%struct.xhci_hcd*, i32*) #1

declare dso_local i64 @xhci_readl(%struct.xhci_hcd*, i32*) #1

declare dso_local i32 @xhci_writel(%struct.xhci_hcd*, i64, i32*) #1

declare dso_local i64 @ER_IRQ_ENABLE(i64) #1

declare dso_local i32 @xhci_print_ir_set(%struct.xhci_hcd*, i32) #1

declare dso_local i32 @xhci_queue_vendor_command(%struct.xhci_hcd*, i32, i32, i32, i32) #1

declare dso_local i32 @TRB_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
