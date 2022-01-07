; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_common = type { %struct.tcf_common*, i32 }
%struct.tcf_hashinfo = type { i32, %struct.tcf_common**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcf_hash_insert(%struct.tcf_common* %0, %struct.tcf_hashinfo* %1) #0 {
  %3 = alloca %struct.tcf_common*, align 8
  %4 = alloca %struct.tcf_hashinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.tcf_common* %0, %struct.tcf_common** %3, align 8
  store %struct.tcf_hashinfo* %1, %struct.tcf_hashinfo** %4, align 8
  %6 = load %struct.tcf_common*, %struct.tcf_common** %3, align 8
  %7 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %10 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @tcf_hash(i32 %8, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %14 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @write_lock_bh(i32 %15)
  %17 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %18 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %17, i32 0, i32 1
  %19 = load %struct.tcf_common**, %struct.tcf_common*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.tcf_common*, %struct.tcf_common** %19, i64 %21
  %23 = load %struct.tcf_common*, %struct.tcf_common** %22, align 8
  %24 = load %struct.tcf_common*, %struct.tcf_common** %3, align 8
  %25 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %24, i32 0, i32 0
  store %struct.tcf_common* %23, %struct.tcf_common** %25, align 8
  %26 = load %struct.tcf_common*, %struct.tcf_common** %3, align 8
  %27 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %28 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %27, i32 0, i32 1
  %29 = load %struct.tcf_common**, %struct.tcf_common*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tcf_common*, %struct.tcf_common** %29, i64 %31
  store %struct.tcf_common* %26, %struct.tcf_common** %32, align 8
  %33 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %34 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @write_unlock_bh(i32 %35)
  ret void
}

declare dso_local i32 @tcf_hash(i32, i32) #1

declare dso_local i32 @write_lock_bh(i32) #1

declare dso_local i32 @write_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
