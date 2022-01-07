; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_police_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_police_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_common = type { %struct.tcf_common* }
%struct.tcf_police = type { i64, i64, i32, i32, %struct.tcf_common*, %struct.tcf_common, i32 }

@POL_TAB_MASK = common dso_local global i32 0, align 4
@tcf_police_ht = common dso_local global %struct.tcf_common** null, align 8
@police_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_police*)* @tcf_police_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_police_destroy(%struct.tcf_police* %0) #0 {
  %2 = alloca %struct.tcf_police*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_common**, align 8
  store %struct.tcf_police* %0, %struct.tcf_police** %2, align 8
  %5 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %6 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @POL_TAB_MASK, align 4
  %9 = call i32 @tcf_hash(i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.tcf_common**, %struct.tcf_common*** @tcf_police_ht, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.tcf_common*, %struct.tcf_common** %10, i64 %12
  store %struct.tcf_common** %13, %struct.tcf_common*** %4, align 8
  br label %14

14:                                               ; preds = %59, %1
  %15 = load %struct.tcf_common**, %struct.tcf_common*** %4, align 8
  %16 = load %struct.tcf_common*, %struct.tcf_common** %15, align 8
  %17 = icmp ne %struct.tcf_common* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.tcf_common**, %struct.tcf_common*** %4, align 8
  %20 = load %struct.tcf_common*, %struct.tcf_common** %19, align 8
  %21 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %22 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %21, i32 0, i32 5
  %23 = icmp eq %struct.tcf_common* %20, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %18
  %25 = call i32 @write_lock_bh(i32* @police_lock)
  %26 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %27 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %26, i32 0, i32 4
  %28 = load %struct.tcf_common*, %struct.tcf_common** %27, align 8
  %29 = load %struct.tcf_common**, %struct.tcf_common*** %4, align 8
  store %struct.tcf_common* %28, %struct.tcf_common** %29, align 8
  %30 = call i32 @write_unlock_bh(i32* @police_lock)
  %31 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %32 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %31, i32 0, i32 3
  %33 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %34 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %33, i32 0, i32 2
  %35 = call i32 @gen_kill_estimator(i32* %32, i32* %34)
  %36 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %37 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %24
  %41 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %42 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @qdisc_put_rtab(i64 %43)
  br label %45

45:                                               ; preds = %40, %24
  %46 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %47 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %52 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @qdisc_put_rtab(i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.tcf_police*, %struct.tcf_police** %2, align 8
  %57 = call i32 @kfree(%struct.tcf_police* %56)
  br label %65

58:                                               ; preds = %18
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.tcf_common**, %struct.tcf_common*** %4, align 8
  %61 = load %struct.tcf_common*, %struct.tcf_common** %60, align 8
  %62 = getelementptr inbounds %struct.tcf_common, %struct.tcf_common* %61, i32 0, i32 0
  store %struct.tcf_common** %62, %struct.tcf_common*** %4, align 8
  br label %14

63:                                               ; preds = %14
  %64 = call i32 @WARN_ON(i32 1)
  br label %65

65:                                               ; preds = %63, %55
  ret void
}

declare dso_local i32 @tcf_hash(i32, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @gen_kill_estimator(i32*, i32*) #1

declare dso_local i32 @qdisc_put_rtab(i64) #1

declare dso_local i32 @kfree(%struct.tcf_police*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
