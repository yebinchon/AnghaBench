; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_common = type { i64, %struct.tcf_common* }
%struct.tcf_hashinfo = type { i32, i32, %struct.tcf_common** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcf_common* @tcf_hash_lookup(i64 %0, %struct.tcf_hashinfo* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcf_hashinfo*, align 8
  %5 = alloca %struct.tcf_common*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.tcf_hashinfo* %1, %struct.tcf_hashinfo** %4, align 8
  %6 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %7 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @read_lock_bh(i32 %8)
  %10 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %11 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %10, i32 0, i32 2
  %12 = load %struct.tcf_common**, %struct.tcf_common*** %11, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %15 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @tcf_hash(i64 %13, i32 %16)
  %18 = getelementptr inbounds %struct.tcf_common*, %struct.tcf_common** %12, i64 %17
  %19 = load %struct.tcf_common*, %struct.tcf_common** %18, align 8
  store %struct.tcf_common* %19, %struct.tcf_common** %5, align 8
  br label %20

20:                                               ; preds = %31, %2
  %21 = load %struct.tcf_common*, %struct.tcf_common** %5, align 8
  %22 = icmp ne %struct.tcf_common* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load %struct.tcf_common*, %struct.tcf_common** %5, align 8
  %25 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %35

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.tcf_common*, %struct.tcf_common** %5, align 8
  %33 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %32, i32 0, i32 1
  %34 = load %struct.tcf_common*, %struct.tcf_common** %33, align 8
  store %struct.tcf_common* %34, %struct.tcf_common** %5, align 8
  br label %20

35:                                               ; preds = %29, %20
  %36 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %37 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @read_unlock_bh(i32 %38)
  %40 = load %struct.tcf_common*, %struct.tcf_common** %5, align 8
  ret %struct.tcf_common* %40
}

declare dso_local i32 @read_lock_bh(i32) #1

declare dso_local i64 @tcf_hash(i64, i32) #1

declare dso_local i32 @read_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
