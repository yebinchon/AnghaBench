; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedidev.h_comedi_get_read_subdevice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_comedidev.h_comedi_get_read_subdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32 }
%struct.comedi_device_file_info = type { %struct.TYPE_2__*, %struct.comedi_subdevice* }
%struct.TYPE_2__ = type { %struct.comedi_subdevice* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_subdevice* (%struct.comedi_device_file_info*)* @comedi_get_read_subdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_subdevice* @comedi_get_read_subdevice(%struct.comedi_device_file_info* %0) #0 {
  %2 = alloca %struct.comedi_subdevice*, align 8
  %3 = alloca %struct.comedi_device_file_info*, align 8
  store %struct.comedi_device_file_info* %0, %struct.comedi_device_file_info** %3, align 8
  %4 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %3, align 8
  %5 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %4, i32 0, i32 1
  %6 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %7 = icmp ne %struct.comedi_subdevice* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %9, i32 0, i32 1
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  store %struct.comedi_subdevice* %11, %struct.comedi_subdevice** %2, align 8
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %2, align 8
  br label %24

18:                                               ; preds = %12
  %19 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %3, align 8
  %20 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %22, align 8
  store %struct.comedi_subdevice* %23, %struct.comedi_subdevice** %2, align 8
  br label %24

24:                                               ; preds = %18, %17, %8
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  ret %struct.comedi_subdevice* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
