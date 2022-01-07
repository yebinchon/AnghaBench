; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_quiesce_and_remove_host.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_quiesce_and_remove_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.Scsi_Host = type { i32 }

@USB_STATE_NOTATTACHED = common dso_local global i64 0, align 8
@US_FLIDX_DISCONNECTING = common dso_local global i32 0, align 4
@US_FLIDX_DONT_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*)* @quiesce_and_remove_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quiesce_and_remove_host(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %4 = load %struct.us_data*, %struct.us_data** %2, align 8
  %5 = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %4)
  store %struct.Scsi_Host* %5, %struct.Scsi_Host** %3, align 8
  %6 = load %struct.us_data*, %struct.us_data** %2, align 8
  %7 = getelementptr inbounds %struct.us_data, %struct.us_data* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @USB_STATE_NOTATTACHED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @US_FLIDX_DISCONNECTING, align 4
  %15 = load %struct.us_data*, %struct.us_data** %2, align 8
  %16 = getelementptr inbounds %struct.us_data, %struct.us_data* %15, i32 0, i32 1
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @US_FLIDX_DONT_SCAN, align 4
  %20 = load %struct.us_data*, %struct.us_data** %2, align 8
  %21 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 1
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load %struct.us_data*, %struct.us_data** %2, align 8
  %24 = getelementptr inbounds %struct.us_data, %struct.us_data* %23, i32 0, i32 0
  %25 = call i32 @wake_up(i32* %24)
  %26 = load %struct.us_data*, %struct.us_data** %2, align 8
  %27 = getelementptr inbounds %struct.us_data, %struct.us_data* %26, i32 0, i32 2
  %28 = call i32 @wait_for_completion(i32* %27)
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %30 = call i32 @scsi_remove_host(%struct.Scsi_Host* %29)
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %32 = call i32 @scsi_lock(%struct.Scsi_Host* %31)
  %33 = load i32, i32* @US_FLIDX_DISCONNECTING, align 4
  %34 = load %struct.us_data*, %struct.us_data** %2, align 8
  %35 = getelementptr inbounds %struct.us_data, %struct.us_data* %34, i32 0, i32 1
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %38 = call i32 @scsi_unlock(%struct.Scsi_Host* %37)
  %39 = load %struct.us_data*, %struct.us_data** %2, align 8
  %40 = getelementptr inbounds %struct.us_data, %struct.us_data* %39, i32 0, i32 0
  %41 = call i32 @wake_up(i32* %40)
  ret void
}

declare dso_local %struct.Scsi_Host* @us_to_host(%struct.us_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_lock(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_unlock(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
