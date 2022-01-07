; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32, i32, %struct.qdisc_size_table*, %struct.TYPE_2__* }
%struct.qdisc_size_table = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.Qdisc*, %struct.nlattr*)* }
%struct.nlattr = type { i32 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TCA_STAB = common dso_local global i64 0, align 8
@TCA_RATE = common dso_local global i64 0, align 8
@TCQ_F_MQROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr**)* @qdisc_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qdisc_change(%struct.Qdisc* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.qdisc_size_table*, align 8
  %7 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store %struct.qdisc_size_table* null, %struct.qdisc_size_table** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %9 = load i64, i64* @TCA_OPTIONS, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %15 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.Qdisc*, %struct.nlattr*)*, i32 (%struct.Qdisc*, %struct.nlattr*)** %17, align 8
  %19 = icmp eq i32 (%struct.Qdisc*, %struct.nlattr*)* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %94

23:                                               ; preds = %13
  %24 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %25 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.Qdisc*, %struct.nlattr*)*, i32 (%struct.Qdisc*, %struct.nlattr*)** %27, align 8
  %29 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %30 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %31 = load i64, i64* @TCA_OPTIONS, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 %28(%struct.Qdisc* %29, %struct.nlattr* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %94

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %42 = load i64, i64* @TCA_STAB, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %48 = load i64, i64* @TCA_STAB, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call %struct.qdisc_size_table* @qdisc_get_stab(%struct.nlattr* %50)
  store %struct.qdisc_size_table* %51, %struct.qdisc_size_table** %6, align 8
  %52 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %6, align 8
  %53 = call i64 @IS_ERR(%struct.qdisc_size_table* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %6, align 8
  %57 = call i32 @PTR_ERR(%struct.qdisc_size_table* %56)
  store i32 %57, i32* %3, align 4
  br label %94

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %40
  %60 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %61 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %60, i32 0, i32 3
  %62 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %61, align 8
  %63 = call i32 @qdisc_put_stab(%struct.qdisc_size_table* %62)
  %64 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %6, align 8
  %65 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %66 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %65, i32 0, i32 3
  store %struct.qdisc_size_table* %64, %struct.qdisc_size_table** %66, align 8
  %67 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %68 = load i64, i64* @TCA_RATE, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %59
  %73 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %74 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @TCQ_F_MQROOT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %93

80:                                               ; preds = %72
  %81 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %82 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %81, i32 0, i32 2
  %83 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %84 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %83, i32 0, i32 1
  %85 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %86 = call i32 @qdisc_root_sleeping_lock(%struct.Qdisc* %85)
  %87 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %88 = load i64, i64* @TCA_RATE, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %87, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = call i32 @gen_replace_estimator(i32* %82, i32* %84, i32 %86, %struct.nlattr* %90)
  br label %92

92:                                               ; preds = %80, %59
  br label %93

93:                                               ; preds = %92, %79
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %55, %37, %20
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.qdisc_size_table* @qdisc_get_stab(%struct.nlattr*) #1

declare dso_local i64 @IS_ERR(%struct.qdisc_size_table*) #1

declare dso_local i32 @PTR_ERR(%struct.qdisc_size_table*) #1

declare dso_local i32 @qdisc_put_stab(%struct.qdisc_size_table*) #1

declare dso_local i32 @gen_replace_estimator(i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
