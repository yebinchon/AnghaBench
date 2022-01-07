; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_basic.c_basic_set_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_basic.c_basic_set_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.basic_filter = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tcf_exts = type { i32 }
%struct.tcf_ematch_tree = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@basic_ext_map = common dso_local global i32 0, align 4
@TCA_BASIC_EMATCHES = common dso_local global i64 0, align 8
@TCA_BASIC_CLASSID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.basic_filter*, i64, %struct.nlattr**, %struct.nlattr*)* @basic_set_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basic_set_parms(%struct.tcf_proto* %0, %struct.basic_filter* %1, i64 %2, %struct.nlattr** %3, %struct.nlattr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca %struct.basic_filter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tcf_exts, align 4
  %14 = alloca %struct.tcf_ematch_tree, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store %struct.basic_filter* %1, %struct.basic_filter** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.nlattr* %4, %struct.nlattr** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %20 = call i32 @tcf_exts_validate(%struct.tcf_proto* %17, %struct.nlattr** %18, %struct.nlattr* %19, %struct.tcf_exts* %13, i32* @basic_ext_map)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %68

25:                                               ; preds = %5
  %26 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %28 = load i64, i64* @TCA_BASIC_EMATCHES, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @tcf_em_tree_validate(%struct.tcf_proto* %26, %struct.nlattr* %30, %struct.tcf_ematch_tree* %14)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %64

35:                                               ; preds = %25
  %36 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %37 = load i64, i64* @TCA_BASIC_CLASSID, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %43 = load i64, i64* @TCA_BASIC_CLASSID, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = call i32 @nla_get_u32(%struct.nlattr* %45)
  %47 = load %struct.basic_filter*, %struct.basic_filter** %8, align 8
  %48 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %51 = load %struct.basic_filter*, %struct.basic_filter** %8, align 8
  %52 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %51, i32 0, i32 2
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @tcf_bind_filter(%struct.tcf_proto* %50, %struct.TYPE_2__* %52, i64 %53)
  br label %55

55:                                               ; preds = %41, %35
  %56 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %57 = load %struct.basic_filter*, %struct.basic_filter** %8, align 8
  %58 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %57, i32 0, i32 1
  %59 = call i32 @tcf_exts_change(%struct.tcf_proto* %56, i32* %58, %struct.tcf_exts* %13)
  %60 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %61 = load %struct.basic_filter*, %struct.basic_filter** %8, align 8
  %62 = getelementptr inbounds %struct.basic_filter, %struct.basic_filter* %61, i32 0, i32 0
  %63 = call i32 @tcf_em_tree_change(%struct.tcf_proto* %60, i32* %62, %struct.tcf_ematch_tree* %14)
  store i32 0, i32* %6, align 4
  br label %68

64:                                               ; preds = %34
  %65 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %66 = call i32 @tcf_exts_destroy(%struct.tcf_proto* %65, %struct.tcf_exts* %13)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %64, %55, %23
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @tcf_exts_validate(%struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, %struct.tcf_exts*, i32*) #1

declare dso_local i32 @tcf_em_tree_validate(%struct.tcf_proto*, %struct.nlattr*, %struct.tcf_ematch_tree*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @tcf_bind_filter(%struct.tcf_proto*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @tcf_exts_change(%struct.tcf_proto*, i32*, %struct.tcf_exts*) #1

declare dso_local i32 @tcf_em_tree_change(%struct.tcf_proto*, i32*, %struct.tcf_ematch_tree*) #1

declare dso_local i32 @tcf_exts_destroy(%struct.tcf_proto*, %struct.tcf_exts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
