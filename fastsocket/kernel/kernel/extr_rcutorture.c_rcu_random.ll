; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_random.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_random_state = type { i64, i64 }

@RCU_RANDOM_REFRESH = common dso_local global i64 0, align 8
@RCU_RANDOM_MULT = common dso_local global i32 0, align 4
@RCU_RANDOM_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rcu_random_state*)* @rcu_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rcu_random(%struct.rcu_random_state* %0) #0 {
  %2 = alloca %struct.rcu_random_state*, align 8
  store %struct.rcu_random_state* %0, %struct.rcu_random_state** %2, align 8
  %3 = load %struct.rcu_random_state*, %struct.rcu_random_state** %2, align 8
  %4 = getelementptr inbounds %struct.rcu_random_state, %struct.rcu_random_state* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add nsw i64 %5, -1
  store i64 %6, i64* %4, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = call i32 (...) @raw_smp_processor_id()
  %10 = call i64 @cpu_clock(i32 %9)
  %11 = load %struct.rcu_random_state*, %struct.rcu_random_state** %2, align 8
  %12 = getelementptr inbounds %struct.rcu_random_state, %struct.rcu_random_state* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, %10
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* @RCU_RANDOM_REFRESH, align 8
  %16 = load %struct.rcu_random_state*, %struct.rcu_random_state** %2, align 8
  %17 = getelementptr inbounds %struct.rcu_random_state, %struct.rcu_random_state* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %8, %1
  %19 = load %struct.rcu_random_state*, %struct.rcu_random_state** %2, align 8
  %20 = getelementptr inbounds %struct.rcu_random_state, %struct.rcu_random_state* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @RCU_RANDOM_MULT, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %21, %23
  %25 = load i32, i32* @RCU_RANDOM_ADD, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %24, %26
  %28 = load %struct.rcu_random_state*, %struct.rcu_random_state** %2, align 8
  %29 = getelementptr inbounds %struct.rcu_random_state, %struct.rcu_random_state* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.rcu_random_state*, %struct.rcu_random_state** %2, align 8
  %31 = getelementptr inbounds %struct.rcu_random_state, %struct.rcu_random_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i64 @swahw32(i32 %33)
  ret i64 %34
}

declare dso_local i64 @cpu_clock(i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @swahw32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
