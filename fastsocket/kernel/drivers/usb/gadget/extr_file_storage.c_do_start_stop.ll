; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_start_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.fsg_dev = type { i32*, i32, %struct.lun* }
%struct.lun = type { i32, i64 }

@mod_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SS_INVALID_FIELD_IN_CDB = common dso_local global i32 0, align 4
@SS_MEDIUM_NOT_PRESENT = common dso_local global i32 0, align 4
@SS_MEDIUM_REMOVAL_PREVENTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*)* @do_start_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_start_stop(%struct.fsg_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.lun*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  %7 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %8 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %7, i32 0, i32 2
  %9 = load %struct.lun*, %struct.lun** %8, align 8
  store %struct.lun* %9, %struct.lun** %4, align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mod_data, i32 0, i32 0), align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %14 = load %struct.lun*, %struct.lun** %4, align 8
  %15 = getelementptr inbounds %struct.lun, %struct.lun* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %31

18:                                               ; preds = %1
  %19 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %20 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 2
  store i32 %24, i32* %5, align 4
  %25 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %26 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 1
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %18, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
