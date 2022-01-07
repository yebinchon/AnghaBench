; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_scsiglue.c_usb_stor_report_device_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_scsiglue.c_usb_stor_report_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.Scsi_Host = type { i32 }

@US_FL_SCM_MULT_TARG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_report_device_reset(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %5 = load %struct.us_data*, %struct.us_data** %2, align 8
  %6 = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %5)
  store %struct.Scsi_Host* %6, %struct.Scsi_Host** %4, align 8
  %7 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %8 = call i32 @scsi_report_device_reset(%struct.Scsi_Host* %7, i32 0, i32 0)
  %9 = load %struct.us_data*, %struct.us_data** %2, align 8
  %10 = getelementptr inbounds %struct.us_data, %struct.us_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @US_FL_SCM_MULT_TARG, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @scsi_report_device_reset(%struct.Scsi_Host* %23, i32 0, i32 %24)
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %16

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local %struct.Scsi_Host* @us_to_host(%struct.us_data*) #1

declare dso_local i32 @scsi_report_device_reset(%struct.Scsi_Host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
