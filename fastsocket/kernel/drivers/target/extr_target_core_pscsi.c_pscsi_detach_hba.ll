; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_detach_hba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_detach_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_hba = type { %struct.pscsi_hba_virt*, i32 }
%struct.pscsi_hba_virt = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [63 x i8] c"CORE_HBA[%d] - Detached SCSI HBA: %s from Generic Target Core\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"CORE_HBA[%d] - Detached Virtual SCSI HBA from Generic Target Core\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_hba*)* @pscsi_detach_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pscsi_detach_hba(%struct.se_hba* %0) #0 {
  %2 = alloca %struct.se_hba*, align 8
  %3 = alloca %struct.pscsi_hba_virt*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %2, align 8
  %5 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %6 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %5, i32 0, i32 0
  %7 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %6, align 8
  store %struct.pscsi_hba_virt* %7, %struct.pscsi_hba_virt** %3, align 8
  %8 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %3, align 8
  %9 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = icmp ne %struct.Scsi_Host* %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = call i32 @scsi_host_put(%struct.Scsi_Host* %14)
  %16 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %17 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i8* [ %30, %25 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %31 ]
  %34 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %33)
  br label %40

35:                                               ; preds = %1
  %36 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %37 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %3, align 8
  %42 = call i32 @kfree(%struct.pscsi_hba_virt* %41)
  %43 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %44 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %43, i32 0, i32 0
  store %struct.pscsi_hba_virt* null, %struct.pscsi_hba_virt** %44, align 8
  ret void
}

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @kfree(%struct.pscsi_hba_virt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
