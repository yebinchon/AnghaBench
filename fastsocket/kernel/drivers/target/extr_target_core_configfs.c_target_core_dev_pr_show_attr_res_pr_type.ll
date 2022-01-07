; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_attr_res_pr_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_dev_pr_show_attr_res_pr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, %struct.t10_pr_registration* }
%struct.t10_pr_registration = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"SPC-3 Reservation Type: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No SPC-3 Reservation holder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_device*, i8*)* @target_core_dev_pr_show_attr_res_pr_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_core_dev_pr_show_attr_res_pr_type(%struct.se_device* %0, i8* %1) #0 {
  %3 = alloca %struct.se_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.t10_pr_registration*, align 8
  %6 = alloca i32, align 4
  store %struct.se_device* %0, %struct.se_device** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.se_device*, %struct.se_device** %3, align 8
  %8 = getelementptr inbounds %struct.se_device, %struct.se_device* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.se_device*, %struct.se_device** %3, align 8
  %11 = getelementptr inbounds %struct.se_device, %struct.se_device* %10, i32 0, i32 1
  %12 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %11, align 8
  store %struct.t10_pr_registration* %12, %struct.t10_pr_registration** %5, align 8
  %13 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %14 = icmp ne %struct.t10_pr_registration* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.t10_pr_registration*, %struct.t10_pr_registration** %5, align 8
  %18 = getelementptr inbounds %struct.t10_pr_registration, %struct.t10_pr_registration* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @core_scsi3_pr_dump_type(i32 %19)
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %6, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.se_device*, %struct.se_device** %3, align 8
  %27 = getelementptr inbounds %struct.se_device, %struct.se_device* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @core_scsi3_pr_dump_type(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
