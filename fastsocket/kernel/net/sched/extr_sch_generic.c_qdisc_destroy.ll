; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_qdisc_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_generic.c_qdisc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32, i32, i32, i32, i32, i32, %struct.Qdisc_ops* }
%struct.Qdisc_ops = type { i32, i32 (%struct.Qdisc.0*)*, i32 (%struct.Qdisc.1*)* }
%struct.Qdisc.0 = type opaque
%struct.Qdisc.1 = type opaque

@TCQ_F_BUILTIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_destroy(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  %3 = alloca %struct.Qdisc_ops*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %4 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %5 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %4, i32 0, i32 7
  %6 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %5, align 8
  store %struct.Qdisc_ops* %6, %struct.Qdisc_ops** %3, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %8 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @TCQ_F_BUILTIN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 6
  %16 = call i32 @atomic_dec_and_test(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %1
  br label %69

19:                                               ; preds = %13
  %20 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %21 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %20, i32 0, i32 4
  %22 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %23 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %22, i32 0, i32 3
  %24 = call i32 @gen_kill_estimator(i32* %21, i32* %23)
  %25 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %26 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %25, i32 0, i32 2
  %27 = load i32 (%struct.Qdisc.1*)*, i32 (%struct.Qdisc.1*)** %26, align 8
  %28 = icmp ne i32 (%struct.Qdisc.1*)* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %31 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %30, i32 0, i32 2
  %32 = load i32 (%struct.Qdisc.1*)*, i32 (%struct.Qdisc.1*)** %31, align 8
  %33 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %34 = bitcast %struct.Qdisc* %33 to %struct.Qdisc.1*
  %35 = call i32 %32(%struct.Qdisc.1* %34)
  br label %36

36:                                               ; preds = %29, %19
  %37 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %38 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %37, i32 0, i32 1
  %39 = load i32 (%struct.Qdisc.0*)*, i32 (%struct.Qdisc.0*)** %38, align 8
  %40 = icmp ne i32 (%struct.Qdisc.0*)* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %43 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %42, i32 0, i32 1
  %44 = load i32 (%struct.Qdisc.0*)*, i32 (%struct.Qdisc.0*)** %43, align 8
  %45 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %46 = bitcast %struct.Qdisc* %45 to %struct.Qdisc.0*
  %47 = call i32 %44(%struct.Qdisc.0* %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %50 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @module_put(i32 %51)
  %53 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %54 = call i32 @qdisc_dev(%struct.Qdisc* %53)
  %55 = call i32 @dev_put(i32 %54)
  %56 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %57 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kfree_skb(i32 %58)
  %60 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %61 = bitcast %struct.Qdisc* %60 to i8*
  %62 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %63 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i8, i8* %61, i64 %66
  %68 = call i32 @kfree(i8* %67)
  br label %69

69:                                               ; preds = %48, %18
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @gen_kill_estimator(i32*, i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
