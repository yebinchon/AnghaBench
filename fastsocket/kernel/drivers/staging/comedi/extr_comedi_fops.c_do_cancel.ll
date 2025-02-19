; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_cancel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedi_fops.c_do_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)* }
%struct.comedi_device.0 = type opaque

@SRF_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @do_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %7 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %6)
  %8 = load i32, i32* @SRF_RUNNING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)** %13, align 8
  %15 = icmp ne i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)*, i32 (%struct.comedi_device.0*, %struct.comedi_subdevice*)** %18, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %21 = bitcast %struct.comedi_device* %20 to %struct.comedi_device.0*
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %23 = call i32 %19(%struct.comedi_device.0* %21, %struct.comedi_subdevice* %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %16, %11, %2
  %25 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %27 = call i32 @do_become_nonbusy(%struct.comedi_device* %25, %struct.comedi_subdevice* %26)
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice*) #1

declare dso_local i32 @do_become_nonbusy(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
