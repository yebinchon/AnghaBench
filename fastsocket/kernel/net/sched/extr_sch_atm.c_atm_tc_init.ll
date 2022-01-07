; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_atm.c_atm_tc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.atm_qdisc_data = type { i32, %struct.TYPE_2__, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, i32, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [39 x i8] c"atm_tc_init(sch %p,[qdisc %p],opt %p)\0A\00", align 1
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"atm_tc_init: link (%p) qdisc %p\0A\00", align 1
@sch_atm_dequeue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @atm_tc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atm_tc_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.atm_qdisc_data*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %6 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %7 = call %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc* %6)
  store %struct.atm_qdisc_data* %7, %struct.atm_qdisc_data** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %9 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %11 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.Qdisc* %8, %struct.atm_qdisc_data* %9, %struct.nlattr* %10)
  %12 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %13 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %12, i32 0, i32 1
  %14 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %15 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %14, i32 0, i32 2
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %15, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %17 = call i32 @qdisc_dev(%struct.Qdisc* %16)
  %18 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %22 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32* @qdisc_create_dflt(i32 %17, i32 %20, i32* @pfifo_qdisc_ops, i32 %23)
  %25 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %26 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 6
  store i32* %24, i32** %27, align 8
  %28 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %29 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %35 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 6
  store i32* @noop_qdisc, i32** %36, align 8
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %39 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %38, i32 0, i32 1
  %40 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %41 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_2__* %39, i32* %43)
  %45 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %46 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  store i32* null, i32** %47, align 8
  %48 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %49 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  store i32* null, i32** %50, align 8
  %51 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %52 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %55 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %58 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %61 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %64 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.atm_qdisc_data*, %struct.atm_qdisc_data** %5, align 8
  %67 = getelementptr inbounds %struct.atm_qdisc_data, %struct.atm_qdisc_data* %66, i32 0, i32 0
  %68 = load i32, i32* @sch_atm_dequeue, align 4
  %69 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %70 = ptrtoint %struct.Qdisc* %69 to i64
  %71 = call i32 @tasklet_init(i32* %67, i32 %68, i64 %70)
  ret i32 0
}

declare dso_local %struct.atm_qdisc_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
