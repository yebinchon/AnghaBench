; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_gen_estimator.c_gen_new_estimator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_gen_estimator.c_gen_new_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gnet_stats_basic_packed = type { i32, i32 }
%struct.gnet_stats_rate_est = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.gen_estimator = type { i32, i32, i32, i32, i32, i32, i32*, %struct.gnet_stats_rate_est*, %struct.gnet_stats_basic_packed* }
%struct.gnet_estimator = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@elist = common dso_local global %struct.TYPE_5__* null, align 8
@est_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_new_estimator(%struct.gnet_stats_basic_packed* %0, %struct.gnet_stats_rate_est* %1, i32* %2, %struct.nlattr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gnet_stats_basic_packed*, align 8
  %7 = alloca %struct.gnet_stats_rate_est*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.gen_estimator*, align 8
  %11 = alloca %struct.gnet_estimator*, align 8
  %12 = alloca i32, align 4
  store %struct.gnet_stats_basic_packed* %0, %struct.gnet_stats_basic_packed** %6, align 8
  store %struct.gnet_stats_rate_est* %1, %struct.gnet_stats_rate_est** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.nlattr* %3, %struct.nlattr** %9, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %14 = call %struct.gnet_estimator* @nla_data(%struct.nlattr* %13)
  store %struct.gnet_estimator* %14, %struct.gnet_estimator** %11, align 8
  %15 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %16 = call i32 @nla_len(%struct.nlattr* %15)
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %140

22:                                               ; preds = %4
  %23 = load %struct.gnet_estimator*, %struct.gnet_estimator** %11, align 8
  %24 = getelementptr inbounds %struct.gnet_estimator, %struct.gnet_estimator* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, -2
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.gnet_estimator*, %struct.gnet_estimator** %11, align 8
  %29 = getelementptr inbounds %struct.gnet_estimator, %struct.gnet_estimator* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %140

35:                                               ; preds = %27
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.gen_estimator* @kzalloc(i32 48, i32 %36)
  store %struct.gen_estimator* %37, %struct.gen_estimator** %10, align 8
  %38 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %39 = icmp eq %struct.gen_estimator* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOBUFS, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %140

43:                                               ; preds = %35
  %44 = load %struct.gnet_estimator*, %struct.gnet_estimator** %11, align 8
  %45 = getelementptr inbounds %struct.gnet_estimator, %struct.gnet_estimator* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 2
  store i32 %47, i32* %12, align 4
  %48 = load %struct.gnet_stats_basic_packed*, %struct.gnet_stats_basic_packed** %6, align 8
  %49 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %50 = getelementptr inbounds %struct.gen_estimator, %struct.gen_estimator* %49, i32 0, i32 8
  store %struct.gnet_stats_basic_packed* %48, %struct.gnet_stats_basic_packed** %50, align 8
  %51 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %7, align 8
  %52 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %53 = getelementptr inbounds %struct.gen_estimator, %struct.gen_estimator* %52, i32 0, i32 7
  store %struct.gnet_stats_rate_est* %51, %struct.gnet_stats_rate_est** %53, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %56 = getelementptr inbounds %struct.gen_estimator, %struct.gen_estimator* %55, i32 0, i32 6
  store i32* %54, i32** %56, align 8
  %57 = load %struct.gnet_estimator*, %struct.gnet_estimator** %11, align 8
  %58 = getelementptr inbounds %struct.gnet_estimator, %struct.gnet_estimator* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %61 = getelementptr inbounds %struct.gen_estimator, %struct.gen_estimator* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.gnet_stats_basic_packed*, %struct.gnet_stats_basic_packed** %6, align 8
  %63 = getelementptr inbounds %struct.gnet_stats_basic_packed, %struct.gnet_stats_basic_packed* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %66 = getelementptr inbounds %struct.gen_estimator, %struct.gen_estimator* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %7, align 8
  %68 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 5
  %71 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %72 = getelementptr inbounds %struct.gen_estimator, %struct.gen_estimator* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.gnet_stats_basic_packed*, %struct.gnet_stats_basic_packed** %6, align 8
  %74 = getelementptr inbounds %struct.gnet_stats_basic_packed, %struct.gnet_stats_basic_packed* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %77 = getelementptr inbounds %struct.gen_estimator, %struct.gen_estimator* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.gnet_stats_rate_est*, %struct.gnet_stats_rate_est** %7, align 8
  %79 = getelementptr inbounds %struct.gnet_stats_rate_est, %struct.gnet_stats_rate_est* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 10
  %82 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %83 = getelementptr inbounds %struct.gen_estimator, %struct.gen_estimator* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** @elist, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %43
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @elist, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = call i32 @INIT_LIST_HEAD(i32* %97)
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @elist, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* @est_timer, align 4
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @setup_timer(%struct.TYPE_4__* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %92, %43
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @elist, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = call i64 @list_empty(i32* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %107
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @elist, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* @jiffies, align 8
  %122 = load i32, i32* @HZ, align 4
  %123 = sdiv i32 %122, 4
  %124 = load i32, i32* %12, align 4
  %125 = shl i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %121, %126
  %128 = call i32 @mod_timer(%struct.TYPE_4__* %120, i64 %127)
  br label %129

129:                                              ; preds = %115, %107
  %130 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %131 = getelementptr inbounds %struct.gen_estimator, %struct.gen_estimator* %130, i32 0, i32 2
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** @elist, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = call i32 @list_add_rcu(i32* %131, i32* %136)
  %138 = load %struct.gen_estimator*, %struct.gen_estimator** %10, align 8
  %139 = call i32 @gen_add_node(%struct.gen_estimator* %138)
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %129, %40, %32, %19
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local %struct.gnet_estimator* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.gen_estimator* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @setup_timer(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @gen_add_node(%struct.gen_estimator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
