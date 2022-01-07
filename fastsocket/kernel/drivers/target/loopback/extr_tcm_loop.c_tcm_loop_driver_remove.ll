; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_driver_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_driver_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tcm_loop_hba = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tcm_loop_driver_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_driver_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.tcm_loop_hba*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.tcm_loop_hba* @to_tcm_loop_hba(%struct.device* %5)
  store %struct.tcm_loop_hba* %6, %struct.tcm_loop_hba** %3, align 8
  %7 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %3, align 8
  %8 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %7, i32 0, i32 0
  %9 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %4, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = call i32 @scsi_remove_host(%struct.Scsi_Host* %10)
  %12 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %13 = call i32 @scsi_host_put(%struct.Scsi_Host* %12)
  ret i32 0
}

declare dso_local %struct.tcm_loop_hba* @to_tcm_loop_hba(%struct.device*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
