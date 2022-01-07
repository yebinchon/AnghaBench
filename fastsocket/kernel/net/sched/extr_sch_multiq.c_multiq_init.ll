; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_multiq.c_multiq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_multiq.c_multiq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.multiq_sched_data = type { i32, i32** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @multiq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.multiq_sched_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.multiq_sched_data* %10, %struct.multiq_sched_data** %6, align 8
  %11 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %12 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %11, i32 0, i32 1
  store i32** null, i32*** %12, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %14 = icmp eq %struct.nlattr* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %20 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %24 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %26 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32** @kcalloc(i32 %27, i32 8, i32 %28)
  %30 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %31 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %30, i32 0, i32 1
  store i32** %29, i32*** %31, align 8
  %32 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %33 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = icmp ne i32** %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %18
  %37 = load i32, i32* @ENOBUFS, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %53, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %43 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %48 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %47, i32 0, i32 1
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* @noop_qdisc, i32** %52, align 8
  br label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %59 = call i32 @multiq_tune(%struct.Qdisc* %57, %struct.nlattr* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %6, align 8
  %64 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %63, i32 0, i32 1
  %65 = load i32**, i32*** %64, align 8
  %66 = call i32 @kfree(i32** %65)
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %36, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @multiq_tune(%struct.Qdisc*, %struct.nlattr*) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
