; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_change_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_fw.c_fw_change_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64 }
%struct.fw_filter = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.nlattr = type { i32 }
%struct.fw_head = type { i32 }
%struct.tcf_exts = type { i32 }

@TCA_RATE = common dso_local global i64 0, align 8
@fw_ext_map = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_FW_CLASSID = common dso_local global i64 0, align 8
@TCA_FW_MASK = common dso_local global i64 0, align 8
@TCA_FW_INDEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.fw_filter*, %struct.nlattr**, %struct.nlattr**, i64)* @fw_change_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_change_attrs(%struct.tcf_proto* %0, %struct.fw_filter* %1, %struct.nlattr** %2, %struct.nlattr** %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca %struct.fw_filter*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fw_head*, align 8
  %13 = alloca %struct.tcf_exts, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store %struct.fw_filter* %1, %struct.fw_filter** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %17 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.fw_head*
  store %struct.fw_head* %19, %struct.fw_head** %12, align 8
  %20 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %21 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %23 = load i64, i64* @TCA_RATE, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = call i32 @tcf_exts_validate(%struct.tcf_proto* %20, %struct.nlattr** %21, %struct.nlattr* %25, %struct.tcf_exts* %13, i32* @fw_ext_map)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %6, align 4
  br label %89

31:                                               ; preds = %5
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %35 = load i64, i64* @TCA_FW_CLASSID, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %31
  %40 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %41 = load i64, i64* @TCA_FW_CLASSID, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i8* @nla_get_u32(%struct.nlattr* %43)
  %45 = load %struct.fw_filter*, %struct.fw_filter** %8, align 8
  %46 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %49 = load %struct.fw_filter*, %struct.fw_filter** %8, align 8
  %50 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %49, i32 0, i32 2
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @tcf_bind_filter(%struct.tcf_proto* %48, %struct.TYPE_2__* %50, i64 %51)
  br label %53

53:                                               ; preds = %39, %31
  %54 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %55 = load i64, i64* @TCA_FW_MASK, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %61 = load i64, i64* @TCA_FW_MASK, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i8* @nla_get_u32(%struct.nlattr* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.fw_head*, %struct.fw_head** %12, align 8
  %68 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %85

72:                                               ; preds = %59
  br label %80

73:                                               ; preds = %53
  %74 = load %struct.fw_head*, %struct.fw_head** %12, align 8
  %75 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %85

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %72
  %81 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %82 = load %struct.fw_filter*, %struct.fw_filter** %8, align 8
  %83 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %82, i32 0, i32 0
  %84 = call i32 @tcf_exts_change(%struct.tcf_proto* %81, i32* %83, %struct.tcf_exts* %13)
  store i32 0, i32* %6, align 4
  br label %89

85:                                               ; preds = %78, %71
  %86 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %87 = call i32 @tcf_exts_destroy(%struct.tcf_proto* %86, %struct.tcf_exts* %13)
  %88 = load i32, i32* %15, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %85, %80, %29
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @tcf_exts_validate(%struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, %struct.tcf_exts*, i32*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @tcf_bind_filter(%struct.tcf_proto*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @tcf_exts_change(%struct.tcf_proto*, i32*, %struct.tcf_exts*) #1

declare dso_local i32 @tcf_exts_destroy(%struct.tcf_proto*, %struct.tcf_exts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
