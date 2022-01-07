; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_sl811-hcd.c_port_power.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_sl811-hcd.c_port_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sl811 = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)*, i32 (i32, i32)* }
%struct.usb_hcd = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@USB_PORT_FEAT_POWER = common dso_local global i32 0, align 4
@SL11H_INTMASK_INSRMV = common dso_local global i32 0, align 4
@HC_STATE_HALT = common dso_local global i32 0, align 4
@SL11H_IRQ_ENABLE = common dso_local global i32 0, align 4
@SL11H_IRQ_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"power %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@SL11H_CTLREG1 = common dso_local global i32 0, align 4
@SL11H_CTL1MASK_SE0 = common dso_local global i32 0, align 4
@SL811HS_CTLREG2 = common dso_local global i32 0, align 4
@SL811HS_CTL2_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sl811*, i32)* @port_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_power(%struct.sl811* %0, i32 %1) #0 {
  %3 = alloca %struct.sl811*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  store %struct.sl811* %0, %struct.sl811** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sl811*, %struct.sl811** %3, align 8
  %7 = call %struct.usb_hcd* @sl811_to_hcd(%struct.sl811* %6)
  store %struct.usb_hcd* %7, %struct.usb_hcd** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.sl811*, %struct.sl811** %3, align 8
  %12 = getelementptr inbounds %struct.sl811, %struct.sl811* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %121

19:                                               ; preds = %10
  %20 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %21 = shl i32 1, %20
  %22 = load %struct.sl811*, %struct.sl811** %3, align 8
  %23 = getelementptr inbounds %struct.sl811, %struct.sl811* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @SL11H_INTMASK_INSRMV, align 4
  %25 = load %struct.sl811*, %struct.sl811** %3, align 8
  %26 = getelementptr inbounds %struct.sl811, %struct.sl811* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.sl811*, %struct.sl811** %3, align 8
  %29 = getelementptr inbounds %struct.sl811, %struct.sl811* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.sl811*, %struct.sl811** %3, align 8
  %31 = getelementptr inbounds %struct.sl811, %struct.sl811* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @HC_STATE_HALT, align 4
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %34 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %27, %19
  %36 = load %struct.sl811*, %struct.sl811** %3, align 8
  %37 = getelementptr inbounds %struct.sl811, %struct.sl811* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  %38 = load %struct.sl811*, %struct.sl811** %3, align 8
  %39 = load i32, i32* @SL11H_IRQ_ENABLE, align 4
  %40 = call i32 @sl811_write(%struct.sl811* %38, i32 %39, i32 0)
  %41 = load %struct.sl811*, %struct.sl811** %3, align 8
  %42 = load i32, i32* @SL11H_IRQ_STATUS, align 4
  %43 = call i32 @sl811_write(%struct.sl811* %41, i32 %42, i32 -1)
  %44 = load %struct.sl811*, %struct.sl811** %3, align 8
  %45 = getelementptr inbounds %struct.sl811, %struct.sl811* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %35
  %49 = load %struct.sl811*, %struct.sl811** %3, align 8
  %50 = getelementptr inbounds %struct.sl811, %struct.sl811* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32 (i32, i32)*, i32 (i32, i32)** %52, align 8
  %54 = icmp ne i32 (i32, i32)* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %60 = call i32 @DBG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = load %struct.sl811*, %struct.sl811** %3, align 8
  %62 = getelementptr inbounds %struct.sl811, %struct.sl811* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32 (i32, i32)*, i32 (i32, i32)** %64, align 8
  %66 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %67 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 %65(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %55, %48, %35
  %73 = load %struct.sl811*, %struct.sl811** %3, align 8
  %74 = getelementptr inbounds %struct.sl811, %struct.sl811* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = icmp ne %struct.TYPE_3__* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load %struct.sl811*, %struct.sl811** %3, align 8
  %79 = getelementptr inbounds %struct.sl811, %struct.sl811* %78, i32 0, i32 3
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32 (i32)*, i32 (i32)** %81, align 8
  %83 = icmp ne i32 (i32)* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.sl811*, %struct.sl811** %3, align 8
  %86 = getelementptr inbounds %struct.sl811, %struct.sl811* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32 (i32)*, i32 (i32)** %88, align 8
  %90 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %91 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %89(i32 %93)
  br label %101

95:                                               ; preds = %77, %72
  %96 = load %struct.sl811*, %struct.sl811** %3, align 8
  %97 = load i32, i32* @SL11H_CTLREG1, align 4
  %98 = load i32, i32* @SL11H_CTL1MASK_SE0, align 4
  %99 = call i32 @sl811_write(%struct.sl811* %96, i32 %97, i32 %98)
  %100 = call i32 @mdelay(i32 20)
  br label %101

101:                                              ; preds = %95, %84
  %102 = load %struct.sl811*, %struct.sl811** %3, align 8
  %103 = load i32, i32* @SL11H_IRQ_ENABLE, align 4
  %104 = call i32 @sl811_write(%struct.sl811* %102, i32 %103, i32 0)
  %105 = load %struct.sl811*, %struct.sl811** %3, align 8
  %106 = load i32, i32* @SL11H_CTLREG1, align 4
  %107 = load %struct.sl811*, %struct.sl811** %3, align 8
  %108 = getelementptr inbounds %struct.sl811, %struct.sl811* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @sl811_write(%struct.sl811* %105, i32 %106, i32 %109)
  %111 = load %struct.sl811*, %struct.sl811** %3, align 8
  %112 = load i32, i32* @SL811HS_CTLREG2, align 4
  %113 = load i32, i32* @SL811HS_CTL2_INIT, align 4
  %114 = call i32 @sl811_write(%struct.sl811* %111, i32 %112, i32 %113)
  %115 = load %struct.sl811*, %struct.sl811** %3, align 8
  %116 = load i32, i32* @SL11H_IRQ_ENABLE, align 4
  %117 = load %struct.sl811*, %struct.sl811** %3, align 8
  %118 = getelementptr inbounds %struct.sl811, %struct.sl811* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @sl811_write(%struct.sl811* %115, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %101, %18
  ret void
}

declare dso_local %struct.usb_hcd* @sl811_to_hcd(%struct.sl811*) #1

declare dso_local i32 @sl811_write(%struct.sl811*, i32, i32) #1

declare dso_local i32 @DBG(i8*, i8*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
