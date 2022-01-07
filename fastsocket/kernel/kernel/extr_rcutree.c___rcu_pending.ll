; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c___rcu_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutree.c___rcu_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_state = type { i32, i32, i32 }
%struct.rcu_data = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcu_state*, %struct.rcu_data*)* @__rcu_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rcu_pending(%struct.rcu_state* %0, %struct.rcu_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rcu_state*, align 8
  %5 = alloca %struct.rcu_data*, align 8
  store %struct.rcu_state* %0, %struct.rcu_state** %4, align 8
  store %struct.rcu_data* %1, %struct.rcu_data** %5, align 8
  %6 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %7 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %6, i32 0, i32 10
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 8
  %10 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %11 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %12 = call i32 @check_cpu_stall(%struct.rcu_state* %10, %struct.rcu_data* %11)
  %13 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %14 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %13, i32 0, i32 9
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %19 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  store i32 1, i32* %3, align 4
  br label %91

22:                                               ; preds = %2
  %23 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %24 = call i64 @cpu_has_callbacks_ready_to_invoke(%struct.rcu_data* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %28 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  store i32 1, i32* %3, align 4
  br label %91

31:                                               ; preds = %22
  %32 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %33 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %34 = call i64 @cpu_needs_another_gp(%struct.rcu_state* %32, %struct.rcu_data* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %38 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  store i32 1, i32* %3, align 4
  br label %91

41:                                               ; preds = %31
  %42 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %43 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ACCESS_ONCE(i32 %44)
  %46 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %47 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %52 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  store i32 1, i32* %3, align 4
  br label %91

55:                                               ; preds = %41
  %56 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %57 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ACCESS_ONCE(i32 %58)
  %60 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %61 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %66 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  store i32 1, i32* %3, align 4
  br label %91

69:                                               ; preds = %55
  %70 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %71 = call i64 @rcu_gp_in_progress(%struct.rcu_state* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load %struct.rcu_state*, %struct.rcu_state** %4, align 8
  %75 = getelementptr inbounds %struct.rcu_state, %struct.rcu_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @ACCESS_ONCE(i32 %76)
  %78 = load i64, i64* @jiffies, align 8
  %79 = sub nsw i64 %77, %78
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %83 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  store i32 1, i32* %3, align 4
  br label %91

86:                                               ; preds = %73, %69
  %87 = load %struct.rcu_data*, %struct.rcu_data** %5, align 8
  %88 = getelementptr inbounds %struct.rcu_data, %struct.rcu_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %81, %64, %50, %36, %26, %17
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @check_cpu_stall(%struct.rcu_state*, %struct.rcu_data*) #1

declare dso_local i64 @cpu_has_callbacks_ready_to_invoke(%struct.rcu_data*) #1

declare dso_local i64 @cpu_needs_another_gp(%struct.rcu_state*, %struct.rcu_data*) #1

declare dso_local i64 @ACCESS_ONCE(i32) #1

declare dso_local i64 @rcu_gp_in_progress(%struct.rcu_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
