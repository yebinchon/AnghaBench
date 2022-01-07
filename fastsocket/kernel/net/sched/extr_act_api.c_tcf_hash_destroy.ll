; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_hash_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_common = type { i32, i32, %struct.tcf_common*, i32 }
%struct.tcf_hashinfo = type { i32, %struct.tcf_common**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcf_hash_destroy(%struct.tcf_common* %0, %struct.tcf_hashinfo* %1) #0 {
  %3 = alloca %struct.tcf_common*, align 8
  %4 = alloca %struct.tcf_hashinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_common**, align 8
  store %struct.tcf_common* %0, %struct.tcf_common** %3, align 8
  store %struct.tcf_hashinfo* %1, %struct.tcf_hashinfo** %4, align 8
  %7 = load %struct.tcf_common*, %struct.tcf_common** %3, align 8
  %8 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %11 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @tcf_hash(i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %15 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %14, i32 0, i32 1
  %16 = load %struct.tcf_common**, %struct.tcf_common*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tcf_common*, %struct.tcf_common** %16, i64 %18
  store %struct.tcf_common** %19, %struct.tcf_common*** %6, align 8
  br label %20

20:                                               ; preds = %50, %2
  %21 = load %struct.tcf_common**, %struct.tcf_common*** %6, align 8
  %22 = load %struct.tcf_common*, %struct.tcf_common** %21, align 8
  %23 = icmp ne %struct.tcf_common* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %20
  %25 = load %struct.tcf_common**, %struct.tcf_common*** %6, align 8
  %26 = load %struct.tcf_common*, %struct.tcf_common** %25, align 8
  %27 = load %struct.tcf_common*, %struct.tcf_common** %3, align 8
  %28 = icmp eq %struct.tcf_common* %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %31 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @write_lock_bh(i32 %32)
  %34 = load %struct.tcf_common*, %struct.tcf_common** %3, align 8
  %35 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %34, i32 0, i32 2
  %36 = load %struct.tcf_common*, %struct.tcf_common** %35, align 8
  %37 = load %struct.tcf_common**, %struct.tcf_common*** %6, align 8
  store %struct.tcf_common* %36, %struct.tcf_common** %37, align 8
  %38 = load %struct.tcf_hashinfo*, %struct.tcf_hashinfo** %4, align 8
  %39 = getelementptr inbounds %struct.tcf_hashinfo, %struct.tcf_hashinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @write_unlock_bh(i32 %40)
  %42 = load %struct.tcf_common*, %struct.tcf_common** %3, align 8
  %43 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %42, i32 0, i32 1
  %44 = load %struct.tcf_common*, %struct.tcf_common** %3, align 8
  %45 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %44, i32 0, i32 0
  %46 = call i32 @gen_kill_estimator(i32* %43, i32* %45)
  %47 = load %struct.tcf_common*, %struct.tcf_common** %3, align 8
  %48 = call i32 @kfree(%struct.tcf_common* %47)
  br label %56

49:                                               ; preds = %24
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.tcf_common**, %struct.tcf_common*** %6, align 8
  %52 = load %struct.tcf_common*, %struct.tcf_common** %51, align 8
  %53 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %52, i32 0, i32 2
  store %struct.tcf_common** %53, %struct.tcf_common*** %6, align 8
  br label %20

54:                                               ; preds = %20
  %55 = call i32 @WARN_ON(i32 1)
  br label %56

56:                                               ; preds = %54, %29
  ret void
}

declare dso_local i32 @tcf_hash(i32, i32) #1

declare dso_local i32 @write_lock_bh(i32) #1

declare dso_local i32 @write_unlock_bh(i32) #1

declare dso_local i32 @gen_kill_estimator(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.tcf_common*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
