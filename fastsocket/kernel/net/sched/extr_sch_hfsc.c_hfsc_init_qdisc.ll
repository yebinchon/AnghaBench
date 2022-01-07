; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_init_qdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_init_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.hfsc_sched = type { i32, i32, %struct.TYPE_3__, i32, i8*, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i8*, i8*, i32, i32*, %struct.hfsc_sched* }
%struct.TYPE_4__ = type { i32 }
%struct.tc_hfsc_qopt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @hfsc_init_qdisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_init_qdisc(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.hfsc_sched*, align 8
  %7 = alloca %struct.tc_hfsc_qopt*, align 8
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.hfsc_sched* %10, %struct.hfsc_sched** %6, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %12 = icmp eq %struct.nlattr* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %15 = call i32 @nla_len(%struct.nlattr* %14)
  %16 = sext i32 %15 to i64
  %17 = icmp ult i64 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %105

21:                                               ; preds = %13
  %22 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %23 = call %struct.tc_hfsc_qopt* @nla_data(%struct.nlattr* %22)
  store %struct.tc_hfsc_qopt* %23, %struct.tc_hfsc_qopt** %7, align 8
  %24 = load %struct.tc_hfsc_qopt*, %struct.tc_hfsc_qopt** %7, align 8
  %25 = getelementptr inbounds %struct.tc_hfsc_qopt, %struct.tc_hfsc_qopt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %28 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %30 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %29, i32 0, i32 1
  %31 = call i32 @qdisc_class_hash_init(i32* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %105

36:                                               ; preds = %21
  %37 = load i8*, i8** @RB_ROOT, align 8
  %38 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %39 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %41 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %40, i32 0, i32 3
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %44 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %47 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %51 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %54 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %55 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 6
  store %struct.hfsc_sched* %53, %struct.hfsc_sched** %56, align 8
  %57 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %58 = call i32 @qdisc_dev(%struct.Qdisc* %57)
  %59 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %60 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %63 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32* @qdisc_create_dflt(i32 %58, i32 %61, i32* @pfifo_qdisc_ops, i32 %64)
  %66 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %67 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 5
  store i32* %65, i32** %68, align 8
  %69 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %70 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %36
  %75 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %76 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  store i32* @noop_qdisc, i32** %77, align 8
  br label %78

78:                                               ; preds = %74, %36
  %79 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %80 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 4
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load i8*, i8** @RB_ROOT, align 8
  %84 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %85 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i8* %83, i8** %86, align 8
  %87 = load i8*, i8** @RB_ROOT, align 8
  %88 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %89 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i8* %87, i8** %90, align 8
  %91 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %92 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %91, i32 0, i32 1
  %93 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %94 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = call i32 @qdisc_class_hash_insert(i32* %92, %struct.TYPE_4__* %95)
  %97 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %98 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %99 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %98, i32 0, i32 1
  %100 = call i32 @qdisc_class_hash_grow(%struct.Qdisc* %97, i32* %99)
  %101 = load %struct.hfsc_sched*, %struct.hfsc_sched** %6, align 8
  %102 = getelementptr inbounds %struct.hfsc_sched, %struct.hfsc_sched* %101, i32 0, i32 0
  %103 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %104 = call i32 @qdisc_watchdog_init(i32* %102, %struct.Qdisc* %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %78, %34, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.hfsc_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.tc_hfsc_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @qdisc_class_hash_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_class_hash_insert(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @qdisc_class_hash_grow(%struct.Qdisc*, i32*) #1

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
