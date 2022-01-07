; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree_trace.c_print_one_rcu_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree_trace.c_print_one_rcu_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rcu_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"%3d%cnp=%ld qsp=%ld cbr=%ld cng=%ld gpc=%ld gps=%ld nf=%ld nn=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.rcu_data*)* @print_one_rcu_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_one_rcu_pending(%struct.seq_file* %0, %struct.rcu_data* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.rcu_data*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.rcu_data* %1, %struct.rcu_data** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %7 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %6, i32 0, i32 8
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %10 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @cpu_is_offline(i32 %11)
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 33, i32 32
  %16 = trunc i32 %15 to i8
  %17 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %18 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %21 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %24 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %27 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %30 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %33 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %36 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rcu_data*, %struct.rcu_data** %4, align 8
  %39 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %8, i8 signext %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8 signext, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @cpu_is_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
