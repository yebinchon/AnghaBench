; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_sl811_cs.c_sl811_cs_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_sl811_cs.c_sl811_cs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { %struct.pcmcia_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_TYPE_EXCLUSIVE = common dso_local global i32 0, align 4
@IRQ_INFO2_VALID = common dso_local global i32 0, align 4
@IRQ_LEVEL_ID = common dso_local global i32 0, align 4
@INT_MEMORY_AND_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @sl811_cs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sl811_cs_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.TYPE_7__* @kzalloc(i32 8, i32 %5)
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp ne %struct.TYPE_7__* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store %struct.pcmcia_device* %13, %struct.pcmcia_device** %15, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %18 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %17, i32 0, i32 2
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %18, align 8
  %19 = load i32, i32* @IRQ_TYPE_EXCLUSIVE, align 4
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 8
  %23 = load i32, i32* @IRQ_INFO2_VALID, align 4
  %24 = load i32, i32* @IRQ_LEVEL_ID, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %27 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %33 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* @INT_MEMORY_AND_IO, align 4
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %37 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %40 = call i32 @sl811_cs_config(%struct.pcmcia_device* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %12, %9
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_7__* @kzalloc(i32, i32) #1

declare dso_local i32 @sl811_cs_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
