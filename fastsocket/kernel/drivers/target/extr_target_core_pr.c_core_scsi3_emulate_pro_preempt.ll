; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_emulate_pro_preempt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_pr.c_core_scsi3_emulate_pro_preempt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"SPC-3 PR: Unknown Service Action PREEMPT%s Type: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"_AND_ABORT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*, i32, i32, i32, i32, i32)* @core_scsi3_emulate_pro_preempt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_scsi3_emulate_pro_preempt(%struct.se_cmd* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.se_cmd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %23 [
    i32 130, label %15
    i32 133, label %15
    i32 128, label %15
    i32 131, label %15
    i32 129, label %15
    i32 132, label %15
  ]

15:                                               ; preds = %6, %6, %6, %6, %6, %6
  %16 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @core_scsi3_pro_preempt(%struct.se_cmd* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  br label %31

23:                                               ; preds = %6
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28)
  %30 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %23, %15
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @core_scsi3_pro_preempt(%struct.se_cmd*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
