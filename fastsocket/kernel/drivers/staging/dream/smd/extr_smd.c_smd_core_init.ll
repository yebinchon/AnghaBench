; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_core_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd.c_smd_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"smd_core_init()\0A\00", align 1
@INT_A9_M2A_0 = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"smd_dev\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"smd_core_init: enable_irq_wake failed for A9_M2A_0\0A\00", align 1
@INT_A9_M2A_5 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"smsm_dev\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"smd_core_init: enable_irq_wake failed for A9_M2A_5\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"smd_core_init() done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smd_core_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @INT_A9_M2A_0, align 4
  %5 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %6 = call i32 @request_irq(i32 %4, i32 (i32, i32)* @smd_irq_handler, i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %38

11:                                               ; preds = %0
  %12 = load i32, i32* @INT_A9_M2A_0, align 4
  %13 = call i32 @enable_irq_wake(i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* @INT_A9_M2A_5, align 4
  %20 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %21 = call i32 @request_irq(i32 %19, i32 (i32, i32)* @smsm_irq_handler, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @INT_A9_M2A_0, align 4
  %26 = call i32 @free_irq(i32 %25, i32 0)
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %38

28:                                               ; preds = %18
  %29 = load i32, i32* @INT_A9_M2A_5, align 4
  %30 = call i32 @enable_irq_wake(i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = call i32 @smsm_irq_handler(i32 0, i32 0)
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %35, %24, %9
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @request_irq(i32, i32 (i32, i32)*, i32, i8*, i32) #1

declare dso_local i32 @smd_irq_handler(i32, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smsm_irq_handler(i32, i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
