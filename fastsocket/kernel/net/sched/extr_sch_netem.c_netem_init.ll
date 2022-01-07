; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_netem_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_netem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netem_sched_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@tfifo_qdisc_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"netem: qdisc create failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"netem: change failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @netem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netem_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.netem_sched_data*, align 8
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.netem_sched_data* %9, %struct.netem_sched_data** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %17 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %16, i32 0, i32 1
  %18 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %19 = call i32 @qdisc_watchdog_init(i32* %17, %struct.Qdisc* %18)
  %20 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %21 = call i32 @qdisc_dev(%struct.Qdisc* %20)
  %22 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TC_H_MAKE(i32 %27, i32 1)
  %29 = call i32 @qdisc_create_dflt(i32 %21, i32 %24, i32* @tfifo_qdisc_ops, i32 %28)
  %30 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %31 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %33 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %15
  %37 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %54

40:                                               ; preds = %15
  %41 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %42 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %43 = call i32 @netem_change(%struct.Qdisc* %41, %struct.nlattr* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %49 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @qdisc_destroy(i32 %50)
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %36, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @TC_H_MAKE(i32, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @netem_change(%struct.Qdisc*, %struct.nlattr*) #1

declare dso_local i32 @qdisc_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
