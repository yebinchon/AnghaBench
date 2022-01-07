; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_make_scsi_hba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_make_scsi_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_wwn = type { i32 }
%struct.target_fabric_configfs = type { i32 }
%struct.config_group = type { i32 }
%struct.tcm_loop_hba = type { %struct.se_wwn, %struct.Scsi_Host*, i32*, i32 }
%struct.Scsi_Host = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate struct tcm_loop_hba\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"naa.\00", align 1
@SCSI_PROTOCOL_SAS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fc.\00", align 1
@SCSI_PROTOCOL_FCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"iqn.\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Unable to locate prefix for emulated Target Port: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SCSI_PROTOCOL_ISCSI = common dso_local global i32 0, align 4
@TL_WWN_ADDR_LEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"Emulated NAA %s Address: %s, exceeds max: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tcm_loop_hba_no_cnt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [87 x i8] c"TCM_Loop_ConfigFS: Allocated emulated Target %s Address: %s at Linux/SCSI Host ID: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_wwn* @tcm_loop_make_scsi_hba(%struct.target_fabric_configfs* %0, %struct.config_group* %1, i8* %2) #0 {
  %4 = alloca %struct.se_wwn*, align 8
  %5 = alloca %struct.target_fabric_configfs*, align 8
  %6 = alloca %struct.config_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tcm_loop_hba*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %5, align 8
  store %struct.config_group* %1, %struct.config_group** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.tcm_loop_hba* @kzalloc(i32 32, i32 %13)
  store %struct.tcm_loop_hba* %14, %struct.tcm_loop_hba** %8, align 8
  %15 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %16 = icmp ne %struct.tcm_loop_hba* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.se_wwn* @ERR_PTR(i32 %20)
  store %struct.se_wwn* %21, %struct.se_wwn** %4, align 8
  br label %104

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strstr(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %10, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @SCSI_PROTOCOL_SAS, align 4
  %29 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %30 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  br label %54

31:                                               ; preds = %22
  %32 = load i8*, i8** %7, align 8
  %33 = call i8* @strstr(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %10, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @SCSI_PROTOCOL_FCP, align 4
  %38 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %39 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  store i32 3, i32* %12, align 4
  br label %54

40:                                               ; preds = %31
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @strstr(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %42, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %99

50:                                               ; preds = %40
  %51 = load i32, i32* @SCSI_PROTOCOL_ISCSI, align 4
  %52 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %53 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %36, %27
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = load i64, i64* @TL_WWN_ADDR_LEN, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %62 = call i32 @tcm_loop_dump_proto_id(%struct.tcm_loop_hba* %61)
  %63 = load i64, i64* @TL_WWN_ADDR_LEN, align 8
  %64 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %60, i32 %62, i64 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %11, align 4
  br label %99

67:                                               ; preds = %54
  %68 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %69 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i64, i64* @TL_WWN_ADDR_LEN, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = call i32 @snprintf(i32* %71, i64 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %76)
  %78 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %79 = load i32, i32* @tcm_loop_hba_no_cnt, align 4
  %80 = call i32 @tcm_loop_setup_hba_bus(%struct.tcm_loop_hba* %78, i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %67
  br label %99

84:                                               ; preds = %67
  %85 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %86 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %85, i32 0, i32 1
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %86, align 8
  store %struct.Scsi_Host* %87, %struct.Scsi_Host** %9, align 8
  %88 = load i32, i32* @tcm_loop_hba_no_cnt, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @tcm_loop_hba_no_cnt, align 4
  %90 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %91 = call i32 @tcm_loop_dump_proto_id(%struct.tcm_loop_hba* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pr_debug(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i64 0, i64 0), i32 %91, i8* %92, i32 %95)
  %97 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %98 = getelementptr inbounds %struct.tcm_loop_hba, %struct.tcm_loop_hba* %97, i32 0, i32 0
  store %struct.se_wwn* %98, %struct.se_wwn** %4, align 8
  br label %104

99:                                               ; preds = %83, %59, %45
  %100 = load %struct.tcm_loop_hba*, %struct.tcm_loop_hba** %8, align 8
  %101 = call i32 @kfree(%struct.tcm_loop_hba* %100)
  %102 = load i32, i32* %11, align 4
  %103 = call %struct.se_wwn* @ERR_PTR(i32 %102)
  store %struct.se_wwn* %103, %struct.se_wwn** %4, align 8
  br label %104

104:                                              ; preds = %99, %84, %17
  %105 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  ret %struct.se_wwn* %105
}

declare dso_local %struct.tcm_loop_hba* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.se_wwn* @ERR_PTR(i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @tcm_loop_dump_proto_id(%struct.tcm_loop_hba*) #1

declare dso_local i32 @snprintf(i32*, i64, i8*, i8*) #1

declare dso_local i32 @tcm_loop_setup_hba_bus(%struct.tcm_loop_hba*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.tcm_loop_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
