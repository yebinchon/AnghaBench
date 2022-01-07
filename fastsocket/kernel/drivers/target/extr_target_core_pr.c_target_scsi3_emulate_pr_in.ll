; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_scsi3_emulate_pr_in.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_scsi3_emulate_pr_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DRF_SPC2_RESERVATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"Received PERSISTENT_RESERVE CDB while legacy SPC-2 reservation is held, returning RESERVATION_CONFLICT\0A\00", align 1
@TCM_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Unknown PERSISTENT_RESERVE_IN service action: 0x%02x\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@GOOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_scsi3_emulate_pr_in(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DRF_SPC2_RESERVATIONS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @TCM_RESERVATION_CONFLICT, align 4
  store i32 %15, i32* %2, align 4
  br label %53

16:                                               ; preds = %1
  %17 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 31
  switch i32 %22, label %35 [
    i32 130, label %23
    i32 129, label %26
    i32 128, label %29
    i32 131, label %32
  ]

23:                                               ; preds = %16
  %24 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %25 = call i32 @core_scsi3_pri_read_keys(%struct.se_cmd* %24)
  store i32 %25, i32* %4, align 4
  br label %44

26:                                               ; preds = %16
  %27 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %28 = call i32 @core_scsi3_pri_read_reservation(%struct.se_cmd* %27)
  store i32 %28, i32* %4, align 4
  br label %44

29:                                               ; preds = %16
  %30 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %31 = call i32 @core_scsi3_pri_report_capabilities(%struct.se_cmd* %30)
  store i32 %31, i32* %4, align 4
  br label %44

32:                                               ; preds = %16
  %33 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %34 = call i32 @core_scsi3_pri_read_full_status(%struct.se_cmd* %33)
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %16
  %36 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 31
  %42 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %43, i32* %2, align 4
  br label %53

44:                                               ; preds = %32, %29, %26, %23
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %49 = load i32, i32* @GOOD, align 4
  %50 = call i32 @target_complete_cmd(%struct.se_cmd* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %35, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @core_scsi3_pri_read_keys(%struct.se_cmd*) #1

declare dso_local i32 @core_scsi3_pri_read_reservation(%struct.se_cmd*) #1

declare dso_local i32 @core_scsi3_pri_report_capabilities(%struct.se_cmd*) #1

declare dso_local i32 @core_scsi3_pri_read_full_status(%struct.se_cmd*) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
