; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_drop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.cbq_sched_data = type { %struct.cbq_class** }
%struct.cbq_class = type { %struct.TYPE_8__*, %struct.cbq_class* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*)* }

@TC_CBQ_MAXPRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*)* @cbq_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_drop(%struct.Qdisc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.cbq_sched_data*, align 8
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca %struct.cbq_class*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %10 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.cbq_sched_data* %10, %struct.cbq_sched_data** %4, align 8
  %11 = load i32, i32* @TC_CBQ_MAXPRIO, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %75, %1
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  %16 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %17 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %16, i32 0, i32 0
  %18 = load %struct.cbq_class**, %struct.cbq_class*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %18, i64 %20
  %22 = load %struct.cbq_class*, %struct.cbq_class** %21, align 8
  store %struct.cbq_class* %22, %struct.cbq_class** %6, align 8
  %23 = icmp eq %struct.cbq_class* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %75

25:                                               ; preds = %15
  %26 = load %struct.cbq_class*, %struct.cbq_class** %6, align 8
  store %struct.cbq_class* %26, %struct.cbq_class** %5, align 8
  br label %27

27:                                               ; preds = %68, %25
  %28 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %29 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_8__*)* %34, null
  br i1 %35, label %36, label %67

36:                                               ; preds = %27
  %37 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %38 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %42, align 8
  %44 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %45 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i32 %43(%struct.TYPE_8__* %46)
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %36
  %50 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %51 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %56 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %64 = call i32 @cbq_deactivate_class(%struct.cbq_class* %63)
  br label %65

65:                                               ; preds = %62, %49
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %79

67:                                               ; preds = %36, %27
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %70 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %69, i32 0, i32 1
  %71 = load %struct.cbq_class*, %struct.cbq_class** %70, align 8
  store %struct.cbq_class* %71, %struct.cbq_class** %5, align 8
  %72 = load %struct.cbq_class*, %struct.cbq_class** %6, align 8
  %73 = icmp ne %struct.cbq_class* %71, %72
  br i1 %73, label %27, label %74

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %24
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %7, align 4
  br label %12

78:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @cbq_deactivate_class(%struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
