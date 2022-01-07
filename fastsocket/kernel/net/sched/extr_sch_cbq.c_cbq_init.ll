; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.cbq_sched_data = type { %struct.TYPE_13__, i32, i32, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__*, i32, i32, i32, i32, i8*, i8*, i8*, i32*, %struct.Qdisc*, %struct.TYPE_9__, %struct.TYPE_13__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.tc_ratespec = type { i32 }

@TCA_CBQ_MAX = common dso_local global i32 0, align 4
@cbq_policy = common dso_local global i32 0, align 4
@TCA_CBQ_RTAB = common dso_local global i64 0, align 8
@TCA_CBQ_RATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@TC_CBQ_MAXPRIO = common dso_local global i8* null, align 8
@TC_CBQ_OVL_CLASSIC = common dso_local global i32 0, align 4
@cbq_ovl_classic = common dso_local global i32 0, align 4
@TC_CBQ_DEF_EWMA = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@cbq_undelay = common dso_local global i32 0, align 4
@TC_CBQ_MAXLEVEL = common dso_local global i32 0, align 4
@TCA_CBQ_LSSOPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @cbq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_init(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.cbq_sched_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tc_ratespec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.cbq_sched_data* %13, %struct.cbq_sched_data** %6, align 8
  %14 = load i32, i32* @TCA_CBQ_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i32, i32* @TCA_CBQ_MAX, align 4
  %20 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %21 = load i32, i32* @cbq_policy, align 4
  %22 = call i32 @nla_parse_nested(%struct.nlattr** %18, i32 %19, %struct.nlattr* %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %214

27:                                               ; preds = %2
  %28 = load i64, i64* @TCA_CBQ_RTAB, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp eq %struct.nlattr* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* @TCA_CBQ_RATE, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp eq %struct.nlattr* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %214

40:                                               ; preds = %32
  %41 = load i64, i64* @TCA_CBQ_RATE, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call %struct.tc_ratespec* @nla_data(%struct.nlattr* %43)
  store %struct.tc_ratespec* %44, %struct.tc_ratespec** %9, align 8
  %45 = load %struct.tc_ratespec*, %struct.tc_ratespec** %9, align 8
  %46 = load i64, i64* @TCA_CBQ_RTAB, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call %struct.TYPE_11__* @qdisc_get_rtab(%struct.tc_ratespec* %45, %struct.nlattr* %48)
  %50 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %51 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 5
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %52, align 8
  %53 = icmp eq %struct.TYPE_11__* %49, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %40
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %214

57:                                               ; preds = %40
  %58 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %59 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %58, i32 0, i32 6
  %60 = call i32 @qdisc_class_hash_init(i32* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %207

64:                                               ; preds = %57
  %65 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %66 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %69 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %68, i32 0, i32 0
  %70 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %71 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 16
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %72, align 8
  %73 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %74 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %77 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 15
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %81 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %82 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 14
  store %struct.Qdisc* %80, %struct.Qdisc** %83, align 8
  %84 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %85 = call i32 @qdisc_dev(%struct.Qdisc* %84)
  %86 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %87 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %90 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32* @qdisc_create_dflt(i32 %85, i32 %88, i32* @pfifo_qdisc_ops, i32 %91)
  %93 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %94 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 13
  store i32* %92, i32** %95, align 8
  %96 = icmp ne i32* %92, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %64
  %98 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %99 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 13
  store i32* @noop_qdisc, i32** %100, align 8
  br label %101

101:                                              ; preds = %97, %64
  %102 = load i8*, i8** @TC_CBQ_MAXPRIO, align 8
  %103 = getelementptr i8, i8* %102, i64 -1
  %104 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %105 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 12
  store i8* %103, i8** %106, align 8
  %107 = load i8*, i8** @TC_CBQ_MAXPRIO, align 8
  %108 = getelementptr i8, i8* %107, i64 -1
  %109 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %110 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 11
  store i8* %108, i8** %111, align 8
  %112 = load i8*, i8** @TC_CBQ_MAXPRIO, align 8
  %113 = getelementptr i8, i8* %112, i64 -1
  %114 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %115 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 10
  store i8* %113, i8** %116, align 8
  %117 = load i32, i32* @TC_CBQ_OVL_CLASSIC, align 4
  %118 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %119 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 9
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @cbq_ovl_classic, align 4
  %122 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %123 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 8
  store i32 %121, i32* %124, align 8
  %125 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %126 = call i32 @qdisc_dev(%struct.Qdisc* %125)
  %127 = call i32 @psched_mtu(i32 %126)
  %128 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %129 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %132 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %136 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  store i32 %134, i32* %137, align 8
  %138 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %139 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 5
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %146 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 7
  store i32 %144, i32* %147, align 4
  %148 = load i32, i32* @TC_CBQ_DEF_EWMA, align 4
  %149 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %150 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 6
  store i32 %148, i32* %151, align 8
  %152 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %153 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sdiv i32 %155, 2
  %157 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %158 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  store i32 %156, i32* %159, align 4
  %160 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %161 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 4
  store i32 -2147483647, i32* %162, align 8
  %163 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %164 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %163, i32 0, i32 5
  %165 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %166 = call i32 @qdisc_watchdog_init(i32* %164, %struct.Qdisc* %165)
  %167 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %168 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %167, i32 0, i32 4
  %169 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %170 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %171 = call i32 @hrtimer_init(%struct.TYPE_12__* %168, i32 %169, i32 %170)
  %172 = load i32, i32* @cbq_undelay, align 4
  %173 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %174 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 4
  %176 = load i32, i32* @TC_CBQ_MAXLEVEL, align 4
  %177 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %178 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = call i32 (...) @psched_get_time()
  %180 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %181 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  %182 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %183 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %186 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  %187 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %188 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %187, i32 0, i32 0
  %189 = call i32 @cbq_link_class(%struct.TYPE_13__* %188)
  %190 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %191 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %190
  %192 = load %struct.nlattr*, %struct.nlattr** %191, align 8
  %193 = icmp ne %struct.nlattr* %192, null
  br i1 %193, label %194, label %202

194:                                              ; preds = %101
  %195 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %196 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %195, i32 0, i32 0
  %197 = load i64, i64* @TCA_CBQ_LSSOPT, align 8
  %198 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %197
  %199 = load %struct.nlattr*, %struct.nlattr** %198, align 8
  %200 = call %struct.tc_ratespec* @nla_data(%struct.nlattr* %199)
  %201 = call i32 @cbq_set_lss(%struct.TYPE_13__* %196, %struct.tc_ratespec* %200)
  br label %202

202:                                              ; preds = %194, %101
  %203 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %204 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %205 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %204, i32 0, i32 0
  %206 = call i32 @cbq_addprio(%struct.cbq_sched_data* %203, %struct.TYPE_13__* %205)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %214

207:                                              ; preds = %63
  %208 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %209 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = call i32 @qdisc_put_rtab(%struct.TYPE_11__* %211)
  %213 = load i32, i32* %10, align 4
  store i32 %213, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %214

214:                                              ; preds = %207, %202, %54, %37, %25
  %215 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #1

declare dso_local %struct.tc_ratespec* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.TYPE_11__* @qdisc_get_rtab(%struct.tc_ratespec*, %struct.nlattr*) #1

declare dso_local i32 @qdisc_class_hash_init(i32*) #1

declare dso_local i32* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_watchdog_init(i32*, %struct.Qdisc*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @psched_get_time(...) #1

declare dso_local i32 @cbq_link_class(%struct.TYPE_13__*) #1

declare dso_local i32 @cbq_set_lss(%struct.TYPE_13__*, %struct.tc_ratespec*) #1

declare dso_local i32 @cbq_addprio(%struct.cbq_sched_data*, %struct.TYPE_13__*) #1

declare dso_local i32 @qdisc_put_rtab(%struct.TYPE_11__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
