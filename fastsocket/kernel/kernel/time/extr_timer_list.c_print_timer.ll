; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timer_list.c_print_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_timer_list.c_print_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hrtimer = type { i32, i32, %struct.hrtimer*, i32, %struct.hrtimer* }

@.str = private unnamed_addr constant [7 x i8] c" #%d: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c", S:%02lx\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c" # expires at %Lu-%Lu nsecs [in %Ld to %Ld nsecs]\0A\00", align 1
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.hrtimer*, %struct.hrtimer*, i32, i64)* @print_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_timer(%struct.seq_file* %0, %struct.hrtimer* %1, %struct.hrtimer* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.hrtimer*, align 8
  %8 = alloca %struct.hrtimer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store %struct.hrtimer* %1, %struct.hrtimer** %7, align 8
  store %struct.hrtimer* %2, %struct.hrtimer** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %15 = load %struct.hrtimer*, %struct.hrtimer** %7, align 8
  %16 = call i32 @print_name_offset(%struct.seq_file* %14, %struct.hrtimer* %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %18 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %20 = load %struct.hrtimer*, %struct.hrtimer** %8, align 8
  %21 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %20, i32 0, i32 4
  %22 = load %struct.hrtimer*, %struct.hrtimer** %21, align 8
  %23 = call i32 @print_name_offset(%struct.seq_file* %19, %struct.hrtimer* %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %25 = load %struct.hrtimer*, %struct.hrtimer** %8, align 8
  %26 = getelementptr inbounds %struct.hrtimer, %struct.hrtimer* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %30 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %32 = load %struct.hrtimer*, %struct.hrtimer** %8, align 8
  %33 = call i32 @hrtimer_get_softexpires(%struct.hrtimer* %32)
  %34 = call i64 @ktime_to_ns(i32 %33)
  %35 = load %struct.hrtimer*, %struct.hrtimer** %8, align 8
  %36 = call i32 @hrtimer_get_expires(%struct.hrtimer* %35)
  %37 = call i64 @ktime_to_ns(i32 %36)
  %38 = load %struct.hrtimer*, %struct.hrtimer** %8, align 8
  %39 = call i32 @hrtimer_get_softexpires(%struct.hrtimer* %38)
  %40 = call i64 @ktime_to_ns(i32 %39)
  %41 = load i64, i64* %10, align 8
  %42 = sub nsw i64 %40, %41
  %43 = load %struct.hrtimer*, %struct.hrtimer** %8, align 8
  %44 = call i32 @hrtimer_get_expires(%struct.hrtimer* %43)
  %45 = call i64 @ktime_to_ns(i32 %44)
  %46 = load i64, i64* %10, align 8
  %47 = sub nsw i64 %45, %46
  %48 = call i32 (%struct.seq_file*, i8*, ...) @SEQ_printf(%struct.seq_file* %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %34, i64 %37, i64 %42, i64 %47)
  ret void
}

declare dso_local i32 @SEQ_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @print_name_offset(%struct.seq_file*, %struct.hrtimer*) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @hrtimer_get_softexpires(%struct.hrtimer*) #1

declare dso_local i32 @hrtimer_get_expires(%struct.hrtimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
