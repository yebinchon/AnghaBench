; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_pmode_enable_hba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pscsi.c_pscsi_pmode_enable_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_hba = type { i32, %struct.pscsi_hba_virt* }
%struct.pscsi_hba_virt = type { i32, %struct.Scsi_Host*, i32 }
%struct.Scsi_Host = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@PHV_VIRTUAL_HOST_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"CORE_HBA[%d] - Disabled pSCSI HBA Passthrough %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"pSCSI: Unable to locate SCSI Host for phv_host_id: %d\0A\00", align 1
@PHV_LLD_SCSI_HOST_NO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"CORE_HBA[%d] - Enabled pSCSI HBA Passthrough %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_hba*, i64)* @pscsi_pmode_enable_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pscsi_pmode_enable_hba(%struct.se_hba* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.se_hba*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pscsi_hba_virt*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %9 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %8, i32 0, i32 1
  %10 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %9, align 8
  store %struct.pscsi_hba_virt* %10, %struct.pscsi_hba_virt** %6, align 8
  %11 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %6, align 8
  %12 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %11, i32 0, i32 1
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %2
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %18 = icmp ne %struct.Scsi_Host* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %88

20:                                               ; preds = %16
  %21 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %6, align 8
  %22 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %21, i32 0, i32 1
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %22, align 8
  %23 = load i32, i32* @PHV_VIRTUAL_HOST_ID, align 4
  %24 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %6, align 8
  %25 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %27 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %30 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %37 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  br label %42

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi i8* [ %40, %35 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %41 ]
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %43)
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %46 = call i32 @scsi_host_put(%struct.Scsi_Host* %45)
  store i32 0, i32* %3, align 4
  br label %88

47:                                               ; preds = %2
  %48 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %6, align 8
  %49 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.Scsi_Host* @scsi_host_lookup(i32 %50)
  store %struct.Scsi_Host* %51, %struct.Scsi_Host** %7, align 8
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %53 = call i64 @IS_ERR(%struct.Scsi_Host* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %6, align 8
  %57 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %61 = call i32 @PTR_ERR(%struct.Scsi_Host* %60)
  store i32 %61, i32* %3, align 4
  br label %88

62:                                               ; preds = %47
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %64 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %6, align 8
  %65 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %64, i32 0, i32 1
  store %struct.Scsi_Host* %63, %struct.Scsi_Host** %65, align 8
  %66 = load i32, i32* @PHV_LLD_SCSI_HOST_NO, align 4
  %67 = load %struct.pscsi_hba_virt*, %struct.pscsi_hba_virt** %6, align 8
  %68 = getelementptr inbounds %struct.pscsi_hba_virt, %struct.pscsi_hba_virt* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.se_hba*, %struct.se_hba** %4, align 8
  %70 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %73 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %80 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  br label %85

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84, %78
  %86 = phi i8* [ %83, %78 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %84 ]
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %71, i8* %86)
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %55, %42, %19
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_lookup(i32) #1

declare dso_local i64 @IS_ERR(%struct.Scsi_Host*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
