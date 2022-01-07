; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_mode_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_do_mode_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { %struct.lun* }
%struct.lun = type { i32 }
%struct.fsg_buffhd = type { i32 }

@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.fsg_buffhd*)* @do_mode_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mode_select(%struct.fsg_dev* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca %struct.fsg_dev*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca %struct.lun*, align 8
  store %struct.fsg_dev* %0, %struct.fsg_dev** %3, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %4, align 8
  %6 = load %struct.fsg_dev*, %struct.fsg_dev** %3, align 8
  %7 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %6, i32 0, i32 0
  %8 = load %struct.lun*, %struct.lun** %7, align 8
  store %struct.lun* %8, %struct.lun** %5, align 8
  %9 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %10 = load %struct.lun*, %struct.lun** %5, align 8
  %11 = getelementptr inbounds %struct.lun, %struct.lun* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
