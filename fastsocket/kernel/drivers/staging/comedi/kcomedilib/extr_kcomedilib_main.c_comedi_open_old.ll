; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_open_old.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/kcomedilib/extr_kcomedilib_main.c_comedi_open_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device_file_info = type { %struct.comedi_device* }
%struct.comedi_device = type { i32 }

@COMEDI_NUM_MINORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @comedi_open_old(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device_file_info*, align 8
  %5 = alloca %struct.comedi_device*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @COMEDI_NUM_MINORS, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.comedi_device_file_info* @comedi_get_device_file_info(i32 %11)
  store %struct.comedi_device_file_info* %12, %struct.comedi_device_file_info** %4, align 8
  %13 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %4, align 8
  %14 = icmp eq %struct.comedi_device_file_info* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i8* null, i8** %2, align 8
  br label %31

16:                                               ; preds = %10
  %17 = load %struct.comedi_device_file_info*, %struct.comedi_device_file_info** %4, align 8
  %18 = getelementptr inbounds %struct.comedi_device_file_info, %struct.comedi_device_file_info* %17, i32 0, i32 0
  %19 = load %struct.comedi_device*, %struct.comedi_device** %18, align 8
  store %struct.comedi_device* %19, %struct.comedi_device** %5, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %21 = icmp eq %struct.comedi_device* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %16
  store i8* null, i8** %2, align 8
  br label %31

28:                                               ; preds = %22
  %29 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %30 = bitcast %struct.comedi_device* %29 to i8*
  store i8* %30, i8** %2, align 8
  br label %31

31:                                               ; preds = %28, %27, %15, %9
  %32 = load i8*, i8** %2, align 8
  ret i8* %32
}

declare dso_local %struct.comedi_device_file_info* @comedi_get_device_file_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
