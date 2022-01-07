; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_s3c2410_udc_write_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_s3c2410_udc.c_s3c2410_udc_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2410_ep = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.s3c2410_request = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@S3C2410_UDC_EP0_FIFO_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_EP1_FIFO_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_EP2_FIFO_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_EP3_FIFO_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_EP4_FIFO_REG = common dso_local global i32 0, align 4
@DEBUG_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Written ep%d %d.%d of %d b [last %d,z %d]\0A\00", align 1
@S3C2410_UDC_USB_INT_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_USBINT_RESET = common dso_local global i32 0, align 4
@base_addr = common dso_local global i32 0, align 4
@EP0_IDLE = common dso_local global i32 0, align 4
@S3C2410_UDC_INDEX_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_IN_CSR1_REG = common dso_local global i32 0, align 4
@S3C2410_UDC_ICSR1_PKTRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c2410_ep*, %struct.s3c2410_request*)* @s3c2410_udc_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2410_udc_write_fifo(%struct.s3c2410_ep* %0, %struct.s3c2410_request* %1) #0 {
  %3 = alloca %struct.s3c2410_ep*, align 8
  %4 = alloca %struct.s3c2410_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.s3c2410_ep* %0, %struct.s3c2410_ep** %3, align 8
  store %struct.s3c2410_request* %1, %struct.s3c2410_request** %4, align 8
  %10 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %3, align 8
  %11 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 127
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %15 [
    i32 0, label %16
    i32 1, label %18
    i32 2, label %20
    i32 3, label %22
    i32 4, label %24
  ]

15:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %2, %15
  %17 = load i32, i32* @S3C2410_UDC_EP0_FIFO_REG, align 4
  store i32 %17, i32* %8, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @S3C2410_UDC_EP1_FIFO_REG, align 4
  store i32 %19, i32* %8, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @S3C2410_UDC_EP2_FIFO_REG, align 4
  store i32 %21, i32* %8, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load i32, i32* @S3C2410_UDC_EP3_FIFO_REG, align 4
  store i32 %23, i32* %8, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @S3C2410_UDC_EP4_FIFO_REG, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.s3c2410_request*, %struct.s3c2410_request** %4, align 8
  %29 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %3, align 8
  %30 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @s3c2410_udc_write_packet(i32 %27, %struct.s3c2410_request* %28, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %3, align 8
  %36 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %60

41:                                               ; preds = %26
  %42 = load %struct.s3c2410_request*, %struct.s3c2410_request** %4, align 8
  %43 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.s3c2410_request*, %struct.s3c2410_request** %4, align 8
  %47 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %45, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %41
  %52 = load %struct.s3c2410_request*, %struct.s3c2410_request** %4, align 8
  %53 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %41
  store i32 0, i32* %6, align 4
  br label %59

58:                                               ; preds = %51
  store i32 2, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %57
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i32, i32* @DEBUG_NORMAL, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.s3c2410_request*, %struct.s3c2410_request** %4, align 8
  %68 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.s3c2410_request*, %struct.s3c2410_request** %4, align 8
  %72 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.s3c2410_request*, %struct.s3c2410_request** %4, align 8
  %77 = getelementptr inbounds %struct.s3c2410_request, %struct.s3c2410_request* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dprintk(i32 %64, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %70, i32 %74, i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %63, %60
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %120

84:                                               ; preds = %81
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %89 = call i32 @udc_read(i32 %88)
  %90 = load i32, i32* @S3C2410_UDC_USBINT_RESET, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @base_addr, align 4
  %95 = call i32 @s3c2410_udc_set_ep0_de_in(i32 %94)
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i32, i32* @EP0_IDLE, align 4
  %98 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %3, align 8
  %99 = getelementptr inbounds %struct.s3c2410_ep, %struct.s3c2410_ep* %98, i32 0, i32 1
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 %97, i32* %101, align 4
  br label %116

102:                                              ; preds = %84
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %105 = call i32 @udc_write(i32 %103, i32 %104)
  %106 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %107 = call i32 @udc_read(i32 %106)
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %110 = call i32 @udc_write(i32 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @S3C2410_UDC_ICSR1_PKTRDY, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %115 = call i32 @udc_write(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %102, %96
  %117 = load %struct.s3c2410_ep*, %struct.s3c2410_ep** %3, align 8
  %118 = load %struct.s3c2410_request*, %struct.s3c2410_request** %4, align 8
  %119 = call i32 @s3c2410_udc_done(%struct.s3c2410_ep* %117, %struct.s3c2410_request* %118, i32 0)
  store i32 1, i32* %6, align 4
  br label %148

120:                                              ; preds = %81
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32, i32* @S3C2410_UDC_USB_INT_REG, align 4
  %125 = call i32 @udc_read(i32 %124)
  %126 = load i32, i32* @S3C2410_UDC_USBINT_RESET, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @base_addr, align 4
  %131 = call i32 @s3c2410_udc_set_ep0_ipr(i32 %130)
  br label %132

132:                                              ; preds = %129, %123
  br label %147

133:                                              ; preds = %120
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %136 = call i32 @udc_write(i32 %134, i32 %135)
  %137 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %138 = call i32 @udc_read(i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @S3C2410_UDC_INDEX_REG, align 4
  %141 = call i32 @udc_write(i32 %139, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @S3C2410_UDC_ICSR1_PKTRDY, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @S3C2410_UDC_IN_CSR1_REG, align 4
  %146 = call i32 @udc_write(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %133, %132
  br label %148

148:                                              ; preds = %147, %116
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @s3c2410_udc_write_packet(i32, %struct.s3c2410_request*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @udc_read(i32) #1

declare dso_local i32 @s3c2410_udc_set_ep0_de_in(i32) #1

declare dso_local i32 @udc_write(i32, i32) #1

declare dso_local i32 @s3c2410_udc_done(%struct.s3c2410_ep*, %struct.s3c2410_request*, i32) #1

declare dso_local i32 @s3c2410_udc_set_ep0_ipr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
