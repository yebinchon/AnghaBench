; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_update_cpu_load_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_update_cpu_load_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@LOAD_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*)* @update_cpu_load_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_cpu_load_active(%struct.rq* %0) #0 {
  %2 = alloca %struct.rq*, align 8
  store %struct.rq* %0, %struct.rq** %2, align 8
  %3 = load %struct.rq*, %struct.rq** %2, align 8
  %4 = call i32 @update_cpu_load(%struct.rq* %3)
  %5 = load i32, i32* @jiffies, align 4
  %6 = load %struct.rq*, %struct.rq** %2, align 8
  %7 = getelementptr inbounds %struct.rq, %struct.rq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @time_after_eq(i32 %5, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i64, i64* @LOAD_FREQ, align 8
  %13 = load %struct.rq*, %struct.rq** %2, align 8
  %14 = getelementptr inbounds %struct.rq, %struct.rq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load %struct.rq*, %struct.rq** %2, align 8
  %20 = call i32 @calc_load_account_active(%struct.rq* %19)
  br label %21

21:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @update_cpu_load(%struct.rq*) #1

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i32 @calc_load_account_active(%struct.rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
