; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_common = type { i32, i32 }
%struct.tc_action = type { %struct.tcf_common* }
%struct.tcf_hashinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcf_common* @tcf_hash_check(i64 %0, %struct.tc_action* %1, i32 %2, %struct.tcf_hashinfo* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tc_action*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcf_hashinfo*, align 8
  %9 = alloca %struct.tcf_common*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.tc_action* %1, %struct.tc_action** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tcf_hashinfo* %3, %struct.tcf_hashinfo** %8, align 8
  store %struct.tcf_common* null, %struct.tcf_common** %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %4
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %8, align 8
  %15 = call %struct.tcf_common* @tcf_hash_lookup(i64 %13, %struct.tcf_hashinfo* %14)
  store %struct.tcf_common* %15, %struct.tcf_common** %9, align 8
  %16 = icmp ne %struct.tcf_common* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  %22 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  %27 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  %31 = load %struct.tc_action*, %struct.tc_action** %6, align 8
  %32 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %31, i32 0, i32 0
  store %struct.tcf_common* %30, %struct.tcf_common** %32, align 8
  br label %33

33:                                               ; preds = %25, %12, %4
  %34 = load %struct.tcf_common*, %struct.tcf_common** %9, align 8
  ret %struct.tcf_common* %34
}

declare dso_local %struct.tcf_common* @tcf_hash_lookup(i64, %struct.tcf_hashinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
