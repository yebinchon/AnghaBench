; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_request_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_spc.c_spc_emulate_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i8*, i32 }

@SE_SENSE_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"REQUEST_SENSE description emulation not supported\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i8 0, align 1
@SPC_SENSE_KEY_OFFSET = common dso_local global i64 0, align 8
@SPC_ASC_KEY_OFFSET = common dso_local global i64 0, align 8
@SPC_ASCQ_KEY_OFFSET = common dso_local global i64 0, align 8
@NO_SENSE = common dso_local global i8 0, align 1
@u32 = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @spc_emulate_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spc_emulate_request_sense(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %11 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %12 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  store i8 0, i8* %6, align 1
  store i8 0, i8* %7, align 1
  %14 = load i32, i32* @SE_SENSE_BUF, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @SE_SENSE_BUF, align 4
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %74

29:                                               ; preds = %1
  %30 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %31 = call i8* @transport_kmap_data_sg(%struct.se_cmd* %30)
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %74

36:                                               ; preds = %29
  %37 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %38 = call i32 @core_scsi3_ua_clear_for_request_sense(%struct.se_cmd* %37, i8* %6, i8* %7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 112, i8* %41, align 16
  %42 = load i8, i8* @UNIT_ATTENTION, align 1
  %43 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %44 = getelementptr inbounds i8, i8* %17, i64 %43
  store i8 %42, i8* %44, align 1
  %45 = load i8, i8* %6, align 1
  %46 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %47 = getelementptr inbounds i8, i8* %17, i64 %46
  store i8 %45, i8* %47, align 1
  %48 = load i8, i8* %7, align 1
  %49 = load i64, i64* @SPC_ASCQ_KEY_OFFSET, align 8
  %50 = getelementptr inbounds i8, i8* %17, i64 %49
  store i8 %48, i8* %50, align 1
  %51 = getelementptr inbounds i8, i8* %17, i64 7
  store i8 10, i8* %51, align 1
  br label %60

52:                                               ; preds = %36
  %53 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 112, i8* %53, align 16
  %54 = load i8, i8* @NO_SENSE, align 1
  %55 = load i64, i64* @SPC_SENSE_KEY_OFFSET, align 8
  %56 = getelementptr inbounds i8, i8* %17, i64 %55
  store i8 %54, i8* %56, align 1
  %57 = load i64, i64* @SPC_ASC_KEY_OFFSET, align 8
  %58 = getelementptr inbounds i8, i8* %17, i64 %57
  store i8 0, i8* %58, align 1
  %59 = getelementptr inbounds i8, i8* %17, i64 7
  store i8 10, i8* %59, align 1
  br label %60

60:                                               ; preds = %52, %40
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @u32, align 4
  %63 = trunc i64 %15 to i32
  %64 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %65 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @min_t(i32 %62, i32 %63, i32 %66)
  %68 = call i32 @memcpy(i8* %61, i8* %17, i32 %67)
  %69 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %70 = call i32 @transport_kunmap_data_sg(%struct.se_cmd* %69)
  %71 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %72 = load i32, i32* @GOOD, align 4
  %73 = call i32 @target_complete_cmd(%struct.se_cmd* %71, i32 %72)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %60, %34, %26
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i8* @transport_kmap_data_sg(%struct.se_cmd*) #2

declare dso_local i32 @core_scsi3_ua_clear_for_request_sense(%struct.se_cmd*, i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @min_t(i32, i32, i32) #2

declare dso_local i32 @transport_kunmap_data_sg(%struct.se_cmd*) #2

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
