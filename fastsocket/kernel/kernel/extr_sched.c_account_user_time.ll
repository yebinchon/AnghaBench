; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_account_user_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_account_user_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cpu_usage_stat }
%struct.cpu_usage_stat = type { i8*, i8* }
%struct.task_struct = type { i8*, i8* }

@kstat_this_cpu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CPUACCT_STAT_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @account_user_time(%struct.task_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpu_usage_stat*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.cpu_usage_stat* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kstat_this_cpu, i32 0, i32 0), %struct.cpu_usage_stat** %7, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @cputime_add(i8* %11, i32 %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @cputime_add(i8* %18, i32 %19)
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @account_group_user_time(%struct.task_struct* %23, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @cputime_to_cputime64(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = call i64 @TASK_NICE(%struct.task_struct* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.cpu_usage_stat*, %struct.cpu_usage_stat** %7, align 8
  %33 = getelementptr inbounds %struct.cpu_usage_stat, %struct.cpu_usage_stat* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @cputime64_add(i8* %34, i32 %35)
  %37 = load %struct.cpu_usage_stat*, %struct.cpu_usage_stat** %7, align 8
  %38 = getelementptr inbounds %struct.cpu_usage_stat, %struct.cpu_usage_stat* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  br label %47

39:                                               ; preds = %3
  %40 = load %struct.cpu_usage_stat*, %struct.cpu_usage_stat** %7, align 8
  %41 = getelementptr inbounds %struct.cpu_usage_stat, %struct.cpu_usage_stat* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i8* @cputime64_add(i8* %42, i32 %43)
  %45 = load %struct.cpu_usage_stat*, %struct.cpu_usage_stat** %7, align 8
  %46 = getelementptr inbounds %struct.cpu_usage_stat, %struct.cpu_usage_stat* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %31
  %48 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %49 = load i32, i32* @CPUACCT_STAT_USER, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @cpuacct_update_stats(%struct.task_struct* %48, i32 %49, i32 %50)
  %52 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %53 = call i32 @acct_update_integrals(%struct.task_struct* %52)
  ret void
}

declare dso_local i8* @cputime_add(i8*, i32) #1

declare dso_local i32 @account_group_user_time(%struct.task_struct*, i32) #1

declare dso_local i32 @cputime_to_cputime64(i32) #1

declare dso_local i64 @TASK_NICE(%struct.task_struct*) #1

declare dso_local i8* @cputime64_add(i8*, i32) #1

declare dso_local i32 @cpuacct_update_stats(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @acct_update_integrals(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
