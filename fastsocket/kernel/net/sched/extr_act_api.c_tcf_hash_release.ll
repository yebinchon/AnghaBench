; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_common = type { i64, i64 }
%struct.tcf_hashinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_hash_release(%struct.tcf_common* %0, i32 %1, %struct.tcf_hashinfo* %2) #0 {
  %4 = alloca %struct.tcf_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_hashinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.tcf_common* %0, %struct.tcf_common** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tcf_hashinfo* %2, %struct.tcf_hashinfo** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.tcf_common*, %struct.tcf_common** %4, align 8
  %9 = icmp ne %struct.tcf_common* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.tcf_common*, %struct.tcf_common** %4, align 8
  %15 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  br label %18

18:                                               ; preds = %13, %10
  %19 = load %struct.tcf_common*, %struct.tcf_common** %4, align 8
  %20 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.tcf_common*, %struct.tcf_common** %4, align 8
  %24 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.tcf_common*, %struct.tcf_common** %4, align 8
  %29 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sle i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.tcf_common*, %struct.tcf_common** %4, align 8
  %34 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %6, align 8
  %35 = call i32 @tcf_hash_destroy(%struct.tcf_common* %33, %struct.tcf_hashinfo* %34)
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %27, %18
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i32 @tcf_hash_destroy(%struct.tcf_common*, %struct.tcf_hashinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
