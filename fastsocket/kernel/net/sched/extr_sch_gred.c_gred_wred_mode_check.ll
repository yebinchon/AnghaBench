; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_wred_mode_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_wred_mode_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gred_sched = type { i32, %struct.gred_sched_data** }
%struct.gred_sched_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @gred_wred_mode_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_wred_mode_check(%struct.Qdisc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.gred_sched*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gred_sched_data*, align 8
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.gred_sched* %9, %struct.gred_sched** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %73, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %13 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %76

16:                                               ; preds = %10
  %17 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %18 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %17, i32 0, i32 1
  %19 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %19, i64 %21
  %23 = load %struct.gred_sched_data*, %struct.gred_sched_data** %22, align 8
  store %struct.gred_sched_data* %23, %struct.gred_sched_data** %6, align 8
  %24 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %25 = icmp eq %struct.gred_sched_data* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %73

27:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %69, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %31 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %28
  %35 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %36 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %35, i32 0, i32 1
  %37 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %37, i64 %39
  %41 = load %struct.gred_sched_data*, %struct.gred_sched_data** %40, align 8
  %42 = icmp ne %struct.gred_sched_data* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %34
  %44 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %45 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %44, i32 0, i32 1
  %46 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %46, i64 %48
  %50 = load %struct.gred_sched_data*, %struct.gred_sched_data** %49, align 8
  %51 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %52 = icmp ne %struct.gred_sched_data* %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %43
  %54 = load %struct.gred_sched*, %struct.gred_sched** %4, align 8
  %55 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %54, i32 0, i32 1
  %56 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %56, i64 %58
  %60 = load %struct.gred_sched_data*, %struct.gred_sched_data** %59, align 8
  %61 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.gred_sched_data*, %struct.gred_sched_data** %6, align 8
  %64 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %77

68:                                               ; preds = %53, %43, %34
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %28

72:                                               ; preds = %28
  br label %73

73:                                               ; preds = %72, %26
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %10

76:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %67
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
