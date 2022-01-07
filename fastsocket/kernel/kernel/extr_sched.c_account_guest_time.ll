; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_account_guest_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_account_guest_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cpu_usage_stat }
%struct.cpu_usage_stat = type { i8*, i8* }
%struct.task_struct = type { i8*, i8*, i8* }

@kstat_this_cpu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, i32, i32)* @account_guest_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account_guest_time(%struct.task_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpu_usage_stat*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.cpu_usage_stat* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kstat_this_cpu, i32 0, i32 0), %struct.cpu_usage_stat** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @cputime_to_cputime64(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i8* @cputime_add(i8* %13, i32 %14)
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @cputime_add(i8* %20, i32 %21)
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @account_group_user_time(%struct.task_struct* %25, i32 %26)
  %28 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i8* @cputime_add(i8* %30, i32 %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.cpu_usage_stat*, %struct.cpu_usage_stat** %8, align 8
  %36 = getelementptr inbounds %struct.cpu_usage_stat, %struct.cpu_usage_stat* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @cputime64_add(i8* %37, i32 %38)
  %40 = load %struct.cpu_usage_stat*, %struct.cpu_usage_stat** %8, align 8
  %41 = getelementptr inbounds %struct.cpu_usage_stat, %struct.cpu_usage_stat* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.cpu_usage_stat*, %struct.cpu_usage_stat** %8, align 8
  %43 = getelementptr inbounds %struct.cpu_usage_stat, %struct.cpu_usage_stat* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i8* @cputime64_add(i8* %44, i32 %45)
  %47 = load %struct.cpu_usage_stat*, %struct.cpu_usage_stat** %8, align 8
  %48 = getelementptr inbounds %struct.cpu_usage_stat, %struct.cpu_usage_stat* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  ret void
}

declare dso_local i32 @cputime_to_cputime64(i32) #1

declare dso_local i8* @cputime_add(i8*, i32) #1

declare dso_local i32 @account_group_user_time(%struct.task_struct*, i32) #1

declare dso_local i8* @cputime64_add(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
