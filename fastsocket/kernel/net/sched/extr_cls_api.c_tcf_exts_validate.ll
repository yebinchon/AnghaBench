; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tcf_exts_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_api.c_tcf_exts_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.nlattr = type { i32 }
%struct.tcf_exts = type { %struct.tc_action* }
%struct.tc_action = type { i32 }
%struct.tcf_ext_map = type { i64, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCA_ACT_BIND = common dso_local global i32 0, align 4
@TCA_ACT_NOREPLACE = common dso_local global i32 0, align 4
@TCA_OLD_COMPAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_exts_validate(%struct.tcf_proto* %0, %struct.nlattr** %1, %struct.nlattr* %2, %struct.tcf_exts* %3, %struct.tcf_ext_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.tcf_exts*, align 8
  %11 = alloca %struct.tcf_ext_map*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.nlattr* %2, %struct.nlattr** %9, align 8
  store %struct.tcf_exts* %3, %struct.tcf_exts** %10, align 8
  store %struct.tcf_ext_map* %4, %struct.tcf_ext_map** %11, align 8
  %12 = load %struct.tcf_exts*, %struct.tcf_exts** %10, align 8
  %13 = call i32 @memset(%struct.tcf_exts* %12, i32 0, i32 8)
  %14 = load %struct.tcf_ext_map*, %struct.tcf_ext_map** %11, align 8
  %15 = getelementptr inbounds %struct.tcf_ext_map, %struct.tcf_ext_map* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %20 = load %struct.tcf_ext_map*, %struct.tcf_ext_map** %11, align 8
  %21 = getelementptr inbounds %struct.tcf_ext_map, %struct.tcf_ext_map* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %18, %5
  %27 = load %struct.tcf_ext_map*, %struct.tcf_ext_map** %11, align 8
  %28 = getelementptr inbounds %struct.tcf_ext_map, %struct.tcf_ext_map* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %33 = load %struct.tcf_ext_map*, %struct.tcf_ext_map** %11, align 8
  %34 = getelementptr inbounds %struct.tcf_ext_map, %struct.tcf_ext_map* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %31, %18
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %43

42:                                               ; preds = %31, %26
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.tcf_exts*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
