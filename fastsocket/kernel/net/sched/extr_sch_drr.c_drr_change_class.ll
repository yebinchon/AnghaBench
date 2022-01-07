; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_change_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_drr.c_drr_change_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.drr_sched = type { i32 }
%struct.drr_class = type { i32, %struct.TYPE_2__, i32*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_DRR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@drr_policy = common dso_local global i32 0, align 4
@TCA_DRR_QUANTUM = common dso_local global i64 0, align 8
@TCA_RATE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, i64, %struct.nlattr**, i64*)* @drr_change_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drr_change_class(%struct.Qdisc* %0, i64 %1, i64 %2, %struct.nlattr** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.drr_sched*, align 8
  %13 = alloca %struct.drr_class*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i64* %4, i64** %11, align 8
  %20 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %21 = call %struct.drr_sched* @qdisc_priv(%struct.Qdisc* %20)
  store %struct.drr_sched* %21, %struct.drr_sched** %12, align 8
  %22 = load i64*, i64** %11, align 8
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.drr_class*
  store %struct.drr_class* %24, %struct.drr_class** %13, align 8
  %25 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %26 = load i64, i64* @TCA_OPTIONS, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  store %struct.nlattr* %28, %struct.nlattr** %14, align 8
  %29 = load i32, i32* @TCA_DRR_MAX, align 4
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %15, align 8
  %33 = alloca %struct.nlattr*, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %34 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %188

39:                                               ; preds = %5
  %40 = load i32, i32* @TCA_DRR_MAX, align 4
  %41 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %42 = load i32, i32* @drr_policy, align 4
  %43 = call i32 @nla_parse_nested(%struct.nlattr** %33, i32 %40, %struct.nlattr* %41, i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %18, align 4
  store i32 %47, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %188

48:                                               ; preds = %39
  %49 = load i64, i64* @TCA_DRR_QUANTUM, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = icmp ne %struct.nlattr* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i64, i64* @TCA_DRR_QUANTUM, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = call i64 @nla_get_u32(%struct.nlattr* %56)
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %17, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %188

63:                                               ; preds = %53
  br label %68

64:                                               ; preds = %48
  %65 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %66 = call i32 @qdisc_dev(%struct.Qdisc* %65)
  %67 = call i64 @psched_mtu(i32 %66)
  store i64 %67, i64* %17, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %70 = icmp ne %struct.drr_class* %69, null
  br i1 %70, label %71, label %108

71:                                               ; preds = %68
  %72 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %73 = load i64, i64* @TCA_RATE, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %71
  %78 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %79 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %78, i32 0, i32 4
  %80 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %81 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %80, i32 0, i32 3
  %82 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %83 = call i32 @qdisc_root_sleeping_lock(%struct.Qdisc* %82)
  %84 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %85 = load i64, i64* @TCA_RATE, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = call i32 @gen_replace_estimator(i32* %79, i32* %81, i32 %83, %struct.nlattr* %87)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %77
  %92 = load i32, i32* %18, align 4
  store i32 %92, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %188

93:                                               ; preds = %77
  br label %94

94:                                               ; preds = %93, %71
  %95 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %96 = call i32 @sch_tree_lock(%struct.Qdisc* %95)
  %97 = load i64, i64* @TCA_DRR_QUANTUM, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = icmp ne %struct.nlattr* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i64, i64* %17, align 8
  %103 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %104 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %103, i32 0, i32 5
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %94
  %106 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %107 = call i32 @sch_tree_unlock(%struct.Qdisc* %106)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %188

108:                                              ; preds = %68
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call %struct.drr_class* @kzalloc(i32 40, i32 %109)
  store %struct.drr_class* %110, %struct.drr_class** %13, align 8
  %111 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %112 = icmp eq %struct.drr_class* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @ENOBUFS, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %188

116:                                              ; preds = %108
  %117 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %118 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %121 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load i64, i64* %17, align 8
  %124 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %125 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %124, i32 0, i32 5
  store i64 %123, i64* %125, align 8
  %126 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %127 = call i32 @qdisc_dev(%struct.Qdisc* %126)
  %128 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %129 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i64, i64* %8, align 8
  %132 = call i32* @qdisc_create_dflt(i32 %127, i32 %130, i32* @pfifo_qdisc_ops, i64 %131)
  %133 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %134 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %133, i32 0, i32 2
  store i32* %132, i32** %134, align 8
  %135 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %136 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %116
  %140 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %141 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %140, i32 0, i32 2
  store i32* @noop_qdisc, i32** %141, align 8
  br label %142

142:                                              ; preds = %139, %116
  %143 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %144 = load i64, i64* @TCA_RATE, align 8
  %145 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %143, i64 %144
  %146 = load %struct.nlattr*, %struct.nlattr** %145, align 8
  %147 = icmp ne %struct.nlattr* %146, null
  br i1 %147, label %148, label %171

148:                                              ; preds = %142
  %149 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %150 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %149, i32 0, i32 4
  %151 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %152 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %151, i32 0, i32 3
  %153 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %154 = call i32 @qdisc_root_sleeping_lock(%struct.Qdisc* %153)
  %155 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %156 = load i64, i64* @TCA_RATE, align 8
  %157 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %155, i64 %156
  %158 = load %struct.nlattr*, %struct.nlattr** %157, align 8
  %159 = call i32 @gen_replace_estimator(i32* %150, i32* %152, i32 %154, %struct.nlattr* %158)
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %148
  %163 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %164 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @qdisc_destroy(i32* %165)
  %167 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %168 = call i32 @kfree(%struct.drr_class* %167)
  %169 = load i32, i32* %18, align 4
  store i32 %169, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %188

170:                                              ; preds = %148
  br label %171

171:                                              ; preds = %170, %142
  %172 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %173 = call i32 @sch_tree_lock(%struct.Qdisc* %172)
  %174 = load %struct.drr_sched*, %struct.drr_sched** %12, align 8
  %175 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %174, i32 0, i32 0
  %176 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %177 = getelementptr inbounds %struct.drr_class, %struct.drr_class* %176, i32 0, i32 1
  %178 = call i32 @qdisc_class_hash_insert(i32* %175, %struct.TYPE_2__* %177)
  %179 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %180 = call i32 @sch_tree_unlock(%struct.Qdisc* %179)
  %181 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  %182 = load %struct.drr_sched*, %struct.drr_sched** %12, align 8
  %183 = getelementptr inbounds %struct.drr_sched, %struct.drr_sched* %182, i32 0, i32 0
  %184 = call i32 @qdisc_class_hash_grow(%struct.Qdisc* %181, i32* %183)
  %185 = load %struct.drr_class*, %struct.drr_class** %13, align 8
  %186 = ptrtoint %struct.drr_class* %185 to i64
  %187 = load i64*, i64** %11, align 8
  store i64 %186, i64* %187, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %188

188:                                              ; preds = %171, %162, %113, %105, %91, %60, %46, %36
  %189 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

declare dso_local %struct.drr_sched* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @gen_replace_estimator(i32*, i32*, i32, %struct.nlattr*) #1

declare dso_local i32 @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local %struct.drr_class* @kzalloc(i32, i32) #1

declare dso_local i32* @qdisc_create_dflt(i32, i32, i32*, i64) #1

declare dso_local i32 @qdisc_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.drr_class*) #1

declare dso_local i32 @qdisc_class_hash_insert(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @qdisc_class_hash_grow(%struct.Qdisc*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
