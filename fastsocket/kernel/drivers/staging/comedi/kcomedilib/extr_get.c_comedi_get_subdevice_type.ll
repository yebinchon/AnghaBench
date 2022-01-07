; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_get.c_comedi_get_subdevice_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_get.c_comedi_get_subdevice_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_get_subdevice_type(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.comedi_device*
  store %struct.comedi_device* %8, %struct.comedi_device** %5, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i64 %13
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %6, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
