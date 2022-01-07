; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_declare_cpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/iucv/extr_iucv.c_iucv_declare_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@iucv_buffer_cpumask = common dso_local global i32 0, align 4
@iucv_param_irq = common dso_local global %union.iucv_param** null, align 8
@iucv_irq_data = common dso_local global i32* null, align 8
@IUCV_DECLARE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Directory error\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Invalid length\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Buffer already exists\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Buffer overlap\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Paging or storage error\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"Defining an interrupt buffer on CPU %i failed with 0x%02x (%s)\0A\00", align 1
@iucv_nonsmp_handler = common dso_local global i64 0, align 8
@iucv_irq_cpumask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iucv_declare_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_declare_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.iucv_param*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @iucv_buffer_cpumask, align 4
  %10 = call i64 @cpu_isset(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %61

13:                                               ; preds = %1
  %14 = load %union.iucv_param**, %union.iucv_param*** @iucv_param_irq, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %14, i64 %16
  %18 = load %union.iucv_param*, %union.iucv_param** %17, align 8
  store %union.iucv_param* %18, %union.iucv_param** %4, align 8
  %19 = load %union.iucv_param*, %union.iucv_param** %4, align 8
  %20 = call i32 @memset(%union.iucv_param* %19, i32 0, i32 4)
  %21 = load i32*, i32** @iucv_irq_data, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @virt_to_phys(i32 %25)
  %27 = load %union.iucv_param*, %union.iucv_param** %4, align 8
  %28 = bitcast %union.iucv_param* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @IUCV_DECLARE_BUFFER, align 4
  %31 = load %union.iucv_param*, %union.iucv_param** %4, align 8
  %32 = call i32 @iucv_call_b2f0(i32 %30, %union.iucv_param* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %13
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %42 [
    i32 3, label %37
    i32 10, label %38
    i32 19, label %39
    i32 62, label %40
    i32 92, label %41
  ]

37:                                               ; preds = %35
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %42

38:                                               ; preds = %35
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %42

39:                                               ; preds = %35
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %42

40:                                               ; preds = %35
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %42

41:                                               ; preds = %35
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %42

42:                                               ; preds = %35, %41, %40, %39, %38, %37
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @pr_warning(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0), i32 %43, i32 %44, i8* %45)
  br label %61

47:                                               ; preds = %13
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @iucv_buffer_cpumask, align 4
  %50 = call i32 @cpu_set(i32 %48, i32 %49)
  %51 = load i64, i64* @iucv_nonsmp_handler, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @iucv_irq_cpumask, align 4
  %55 = call i64 @cpus_empty(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %47
  %58 = call i32 @iucv_allow_cpu(i32* null)
  br label %61

59:                                               ; preds = %53
  %60 = call i32 @iucv_block_cpu(i32* null)
  br label %61

61:                                               ; preds = %12, %42, %59, %57
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpu_isset(i32, i32) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, i8*) #1

declare dso_local i32 @cpu_set(i32, i32) #1

declare dso_local i64 @cpus_empty(i32) #1

declare dso_local i32 @iucv_allow_cpu(i32*) #1

declare dso_local i32 @iucv_block_cpu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
