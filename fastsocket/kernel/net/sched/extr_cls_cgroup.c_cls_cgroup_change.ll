; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cls_cgroup_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cls_cgroup_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.cls_cgroup_head* }
%struct.cls_cgroup_head = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.tcf_ematch_tree = type { i32 }
%struct.tcf_exts = type { i32 }

@TCA_CGROUP_MAX = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@cgroup_policy = common dso_local global i32 0, align 4
@TCA_RATE = common dso_local global i64 0, align 8
@cgroup_ext_map = common dso_local global i32 0, align 4
@TCA_CGROUP_EMATCHES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, i64, %struct.nlattr**, i64*)* @cls_cgroup_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_cgroup_change(%struct.tcf_proto* %0, i64 %1, i64 %2, %struct.nlattr** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.cls_cgroup_head*, align 8
  %15 = alloca %struct.tcf_ematch_tree, align 4
  %16 = alloca %struct.tcf_exts, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i32, i32* @TCA_CGROUP_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %25 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %24, i32 0, i32 0
  %26 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %25, align 8
  store %struct.cls_cgroup_head* %26, %struct.cls_cgroup_head** %14, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %28 = load i64, i64* @TCA_OPTIONS, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

35:                                               ; preds = %5
  %36 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %37 = icmp eq %struct.cls_cgroup_head* %36, null
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

44:                                               ; preds = %38
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.cls_cgroup_head* @kzalloc(i32 16, i32 %45)
  store %struct.cls_cgroup_head* %46, %struct.cls_cgroup_head** %14, align 8
  %47 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %48 = icmp eq %struct.cls_cgroup_head* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOBUFS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

52:                                               ; preds = %44
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %55 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %57 = call i32 @tcf_tree_lock(%struct.tcf_proto* %56)
  %58 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %59 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %60 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %59, i32 0, i32 0
  store %struct.cls_cgroup_head* %58, %struct.cls_cgroup_head** %60, align 8
  %61 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %62 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %61)
  br label %63

63:                                               ; preds = %52, %35
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %66 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

72:                                               ; preds = %63
  %73 = load i32, i32* @TCA_CGROUP_MAX, align 4
  %74 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %75 = load i64, i64* @TCA_OPTIONS, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %74, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = load i32, i32* @cgroup_policy, align 4
  %79 = call i32 @nla_parse_nested(%struct.nlattr** %23, i32 %73, %struct.nlattr* %77, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %17, align 4
  store i32 %83, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

84:                                               ; preds = %72
  %85 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %86 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %87 = load i64, i64* @TCA_RATE, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %86, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = call i32 @tcf_exts_validate(%struct.tcf_proto* %85, %struct.nlattr** %23, %struct.nlattr* %89, %struct.tcf_exts* %16, i32* @cgroup_ext_map)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* %17, align 4
  store i32 %94, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

95:                                               ; preds = %84
  %96 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %97 = load i64, i64* @TCA_CGROUP_EMATCHES, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i32 @tcf_em_tree_validate(%struct.tcf_proto* %96, %struct.nlattr* %99, %struct.tcf_ematch_tree* %15)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

105:                                              ; preds = %95
  %106 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %107 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %108 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %107, i32 0, i32 2
  %109 = call i32 @tcf_exts_change(%struct.tcf_proto* %106, i32* %108, %struct.tcf_exts* %16)
  %110 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %111 = load %struct.cls_cgroup_head*, %struct.cls_cgroup_head** %14, align 8
  %112 = getelementptr inbounds %struct.cls_cgroup_head, %struct.cls_cgroup_head* %111, i32 0, i32 1
  %113 = call i32 @tcf_em_tree_change(%struct.tcf_proto* %110, i32* %112, %struct.tcf_ematch_tree* %15)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %105, %103, %93, %82, %69, %49, %41, %32
  %115 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.cls_cgroup_head* @kzalloc(i32, i32) #2

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #2

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #2

declare dso_local i32 @tcf_exts_validate(%struct.tcf_proto*, %struct.nlattr**, %struct.nlattr*, %struct.tcf_exts*, i32*) #2

declare dso_local i32 @tcf_em_tree_validate(%struct.tcf_proto*, %struct.nlattr*, %struct.tcf_ematch_tree*) #2

declare dso_local i32 @tcf_exts_change(%struct.tcf_proto*, i32*, %struct.tcf_exts*) #2

declare dso_local i32 @tcf_em_tree_change(%struct.tcf_proto*, i32*, %struct.tcf_ematch_tree*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
