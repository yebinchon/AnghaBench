; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_ep = type { i32 }
%struct.pxa27x_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@UDCCSR = common dso_local global i32 0, align 4
@UDCCSR_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Clearing Transmit Complete, udccsr=%x\0A\00", align 1
@UDCCSR_TRN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Clearing Underrun on, udccsr=%x\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@UDCCSR_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"wrote count:%d bytes%s%s, left:%d req=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/L\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"/S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_ep*, %struct.pxa27x_request*)* @write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fifo(%struct.pxa_ep* %0, %struct.pxa27x_request* %1) #0 {
  %3 = alloca %struct.pxa_ep*, align 8
  %4 = alloca %struct.pxa27x_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pxa_ep* %0, %struct.pxa_ep** %3, align 8
  store %struct.pxa27x_request* %1, %struct.pxa27x_request** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %13 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %102, %2
  store i32 0, i32* %7, align 4
  %16 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %17 = load i32, i32* @UDCCSR, align 4
  %18 = call i32 @udc_ep_readl(%struct.pxa_ep* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @UDCCSR_PC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @ep_vdbg(%struct.pxa_ep* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %28 = load i32, i32* @UDCCSR_PC, align 4
  %29 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %15
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @UDCCSR_TRN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @ep_vdbg(%struct.pxa_ep* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %40 = load i32, i32* @UDCCSR_TRN, align 4
  %41 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %44 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @write_packet(%struct.pxa_ep* %43, %struct.pxa27x_request* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @USB_DIR_IN, align 4
  %50 = call i32 @inc_ep_stats_bytes(%struct.pxa_ep* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ult i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @unlikely(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %42
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %90

61:                                               ; preds = %42
  %62 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %63 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %67 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %65, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @likely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %61
  %75 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %76 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %61
  store i32 0, i32* %8, align 4
  br label %82

81:                                               ; preds = %74
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %85 = getelementptr inbounds %struct.pxa_ep, %struct.pxa_ep* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ult i32 %83, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @unlikely(i32 %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %82, %60
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %95 = load i32, i32* @UDCCSR_SP, align 4
  %96 = call i32 @ep_write_UDCCSR(%struct.pxa_ep* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 1, i32* %9, align 4
  br label %107

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %104 = call i32 @ep_is_full(%struct.pxa_ep* %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %15, label %107

107:                                              ; preds = %102, %100
  %108 = load %struct.pxa_ep*, %struct.pxa_ep** %3, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %118 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %119 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %123 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %121, %125
  %127 = load %struct.pxa27x_request*, %struct.pxa27x_request** %4, align 8
  %128 = getelementptr inbounds %struct.pxa27x_request, %struct.pxa27x_request* %127, i32 0, i32 0
  %129 = call i32 @ep_dbg(%struct.pxa_ep* %108, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %109, i8* %113, i8* %117, i64 %126, %struct.TYPE_2__* %128)
  %130 = load i32, i32* %9, align 4
  ret i32 %130
}

declare dso_local i32 @udc_ep_readl(%struct.pxa_ep*, i32) #1

declare dso_local i32 @ep_vdbg(%struct.pxa_ep*, i8*, i32) #1

declare dso_local i32 @ep_write_UDCCSR(%struct.pxa_ep*, i32) #1

declare dso_local i32 @write_packet(%struct.pxa_ep*, %struct.pxa27x_request*, i32) #1

declare dso_local i32 @inc_ep_stats_bytes(%struct.pxa_ep*, i32, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ep_is_full(%struct.pxa_ep*) #1

declare dso_local i32 @ep_dbg(%struct.pxa_ep*, i8*, i32, i8*, i8*, i64, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
