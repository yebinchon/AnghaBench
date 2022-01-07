; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_check_scsi2_reservation_conflict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_target_check_scsi2_reservation_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_device*, %struct.se_session* }
%struct.se_device = type { %struct.t10_reservation }
%struct.t10_reservation = type { i32, i32 }
%struct.se_session = type { i32 }
%struct.t10_pr_registration = type { i64, i64 }

@PR_TYPE_WRITE_EXCLUSIVE_REGONLY = common dso_local global i64 0, align 8
@PR_TYPE_EXCLUSIVE_ACCESS_REGONLY = common dso_local global i64 0, align 8
@PR_TYPE_WRITE_EXCLUSIVE_ALLREG = common dso_local global i64 0, align 8
@PR_TYPE_EXCLUSIVE_ACCESS_ALLREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [110 x i8] c"Received legacy SPC-2 RESERVE/RELEASE while active SPC-3 registrations exist, returning RESERVATION_CONFLICT\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @target_check_scsi2_reservation_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_check_scsi2_reservation_conflict(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca %struct.se_session*, align 8
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.t10_pr_registration*, align 8
  %7 = alloca %struct.t10_reservation*, align 8
  %8 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  %9 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %10 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %9, i32 0, i32 1
  %11 = load %struct.se_session*, %struct.se_session** %10, align 8
  store %struct.se_session* %11, %struct.se_session** %4, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 0
  %14 = load %struct.se_device*, %struct.se_device** %13, align 8
  store %struct.se_device* %14, %struct.se_device** %5, align 8
  %15 = load %struct.se_device*, %struct.se_device** %5, align 8
  %16 = getelementptr inbounds %struct.se_device, %struct.se_device* %15, i32 0, i32 0
  store %struct.t10_reservation* %16, %struct.t10_reservation** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %17, i32 0, i32 0
  %19 = load %struct.se_device*, %struct.se_device** %18, align 8
  %20 = load %struct.se_session*, %struct.se_session** %4, align 8
  %21 = getelementptr inbounds %struct.se_session, %struct.se_session* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.se_session*, %struct.se_session** %4, align 8
  %24 = call %struct.t10_pr_registration* @core_scsi3_locate_pr_reg(%struct.se_device* %19, i32 %22, %struct.se_session* %23)
  store %struct.t10_pr_registration* %24, %struct.t10_pr_registration** %6, align 8
  %25 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %26 = icmp ne %struct.t10_pr_registration* %25, null
  br i1 %26, label %27, label %65

27:                                               ; preds = %1
  %28 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %29 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %34 = call i32 @core_scsi3_put_pr_reg(%struct.t10_pr_registration* %33)
  store i32 1, i32* %2, align 4
  br label %86

35:                                               ; preds = %27
  %36 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %37 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PR_TYPE_WRITE_EXCLUSIVE_REGONLY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %43 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PR_TYPE_EXCLUSIVE_ACCESS_REGONLY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %49 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PR_TYPE_WRITE_EXCLUSIVE_ALLREG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %55 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PR_TYPE_EXCLUSIVE_ACCESS_ALLREG, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %47, %41, %35
  %60 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %61 = call i32 @core_scsi3_put_pr_reg(%struct.t10_pr_registration* %60)
  store i32 1, i32* %2, align 4
  br label %86

62:                                               ; preds = %53
  %63 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %6, align 8
  %64 = call i32 @core_scsi3_put_pr_reg(%struct.t10_pr_registration* %63)
  store i32 1, i32* %8, align 4
  br label %78

65:                                               ; preds = %1
  %66 = load %struct.t10_reservation*, %struct.t10_reservation** %7, align 8
  %67 = getelementptr inbounds %struct.t10_reservation, %struct.t10_reservation* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.t10_reservation*, %struct.t10_reservation** %7, align 8
  %70 = getelementptr inbounds %struct.t10_reservation, %struct.t10_reservation* %69, i32 0, i32 1
  %71 = call i64 @list_empty(i32* %70)
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 0, i32 1
  store i32 %74, i32* %8, align 4
  %75 = load %struct.t10_reservation*, %struct.t10_reservation** %7, align 8
  %76 = getelementptr inbounds %struct.t10_reservation, %struct.t10_reservation* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  br label %78

78:                                               ; preds = %65, %62
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %86

85:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %81, %59, %32
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.t10_pr_registration* @core_scsi3_locate_pr_reg(%struct.se_device*, i32, %struct.se_session*) #1

declare dso_local i32 @core_scsi3_put_pr_reg(%struct.t10_pr_registration*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
