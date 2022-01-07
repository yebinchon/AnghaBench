; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_change_vq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_gred.c_gred_change_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.tc_gred_qopt = type { i32, i32, i32, i32, i32, i32 }
%struct.gred_sched = type { %struct.gred_sched_data** }
%struct.gred_sched_data = type { i32, i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i32, %struct.tc_gred_qopt*, i32, i32*)* @gred_change_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gred_change_vq(%struct.Qdisc* %0, i32 %1, %struct.tc_gred_qopt* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tc_gred_qopt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.gred_sched*, align 8
  %13 = alloca %struct.gred_sched_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.tc_gred_qopt* %2, %struct.tc_gred_qopt** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %15 = call %struct.gred_sched* @qdisc_priv(%struct.Qdisc* %14)
  store %struct.gred_sched* %15, %struct.gred_sched** %12, align 8
  %16 = load %struct.gred_sched*, %struct.gred_sched** %12, align 8
  %17 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %16, i32 0, i32 0
  %18 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %18, i64 %20
  %22 = load %struct.gred_sched_data*, %struct.gred_sched_data** %21, align 8
  %23 = icmp eq %struct.gred_sched_data* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %5
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.gred_sched_data* @kzalloc(i32 24, i32 %25)
  %27 = load %struct.gred_sched*, %struct.gred_sched** %12, align 8
  %28 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %27, i32 0, i32 0
  %29 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %29, i64 %31
  store %struct.gred_sched_data* %26, %struct.gred_sched_data** %32, align 8
  %33 = load %struct.gred_sched*, %struct.gred_sched** %12, align 8
  %34 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %33, i32 0, i32 0
  %35 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %35, i64 %37
  %39 = load %struct.gred_sched_data*, %struct.gred_sched_data** %38, align 8
  %40 = icmp eq %struct.gred_sched_data* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %92

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %44, %5
  %46 = load %struct.gred_sched*, %struct.gred_sched** %12, align 8
  %47 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %46, i32 0, i32 0
  %48 = load %struct.gred_sched_data**, %struct.gred_sched_data*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.gred_sched_data*, %struct.gred_sched_data** %48, i64 %50
  %52 = load %struct.gred_sched_data*, %struct.gred_sched_data** %51, align 8
  store %struct.gred_sched_data* %52, %struct.gred_sched_data** %13, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.gred_sched_data*, %struct.gred_sched_data** %13, align 8
  %55 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.gred_sched_data*, %struct.gred_sched_data** %13, align 8
  %58 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %9, align 8
  %60 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.gred_sched_data*, %struct.gred_sched_data** %13, align 8
  %63 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.gred_sched_data*, %struct.gred_sched_data** %13, align 8
  %65 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %45
  %69 = load %struct.gred_sched_data*, %struct.gred_sched_data** %13, align 8
  %70 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %69, i32 0, i32 3
  %71 = call i32 @red_end_of_idle_period(i32* %70)
  br label %72

72:                                               ; preds = %68, %45
  %73 = load %struct.gred_sched_data*, %struct.gred_sched_data** %13, align 8
  %74 = getelementptr inbounds %struct.gred_sched_data, %struct.gred_sched_data* %73, i32 0, i32 3
  %75 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %9, align 8
  %76 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %9, align 8
  %79 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %9, align 8
  %82 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %9, align 8
  %85 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.tc_gred_qopt*, %struct.tc_gred_qopt** %9, align 8
  %88 = getelementptr inbounds %struct.tc_gred_qopt, %struct.tc_gred_qopt* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @red_set_parms(i32* %74, i32 %77, i32 %80, i32 %83, i32 %86, i32 %89, i32* %90)
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %72, %41
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.gred_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.gred_sched_data* @kzalloc(i32, i32) #1

declare dso_local i32 @red_end_of_idle_period(i32*) #1

declare dso_local i32 @red_set_parms(i32*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
