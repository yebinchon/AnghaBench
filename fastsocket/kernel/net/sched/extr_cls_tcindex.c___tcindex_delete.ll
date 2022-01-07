; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c___tcindex_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c___tcindex_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcindex_data = type { i32, %struct.tcindex_filter**, i64 }
%struct.tcindex_filter = type { %struct.tcindex_filter*, %struct.tcindex_filter_result }
%struct.tcindex_filter_result = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"tcindex_delete(tp %p,arg 0x%lx),p %p,f %p\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64, i32)* @__tcindex_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tcindex_delete(%struct.tcf_proto* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcf_proto*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcindex_data*, align 8
  %9 = alloca %struct.tcindex_filter_result*, align 8
  %10 = alloca %struct.tcindex_filter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcindex_filter**, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %14 = call %struct.tcindex_data* @PRIV(%struct.tcf_proto* %13)
  store %struct.tcindex_data* %14, %struct.tcindex_data** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.tcindex_filter_result*
  store %struct.tcindex_filter_result* %16, %struct.tcindex_filter_result** %9, align 8
  store %struct.tcindex_filter* null, %struct.tcindex_filter** %10, align 8
  %17 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %20 = load %struct.tcindex_filter*, %struct.tcindex_filter** %10, align 8
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.tcf_proto* %17, i64 %18, %struct.tcindex_data* %19, %struct.tcindex_filter* %20)
  %22 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %23 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %3
  %27 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %28 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %103

35:                                               ; preds = %26
  br label %92

36:                                               ; preds = %3
  store %struct.tcindex_filter** null, %struct.tcindex_filter*** %12, align 8
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %67, %36
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %40 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  %44 = load %struct.tcindex_data*, %struct.tcindex_data** %8, align 8
  %45 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %44, i32 0, i32 1
  %46 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.tcindex_filter*, %struct.tcindex_filter** %46, i64 %48
  store %struct.tcindex_filter** %49, %struct.tcindex_filter*** %12, align 8
  br label %50

50:                                               ; preds = %62, %43
  %51 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %12, align 8
  %52 = load %struct.tcindex_filter*, %struct.tcindex_filter** %51, align 8
  %53 = icmp ne %struct.tcindex_filter* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %12, align 8
  %56 = load %struct.tcindex_filter*, %struct.tcindex_filter** %55, align 8
  %57 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %56, i32 0, i32 1
  %58 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %59 = icmp eq %struct.tcindex_filter_result* %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %73

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %12, align 8
  %64 = load %struct.tcindex_filter*, %struct.tcindex_filter** %63, align 8
  %65 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %64, i32 0, i32 0
  store %struct.tcindex_filter** %65, %struct.tcindex_filter*** %12, align 8
  br label %50

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %37

70:                                               ; preds = %37
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %103

73:                                               ; preds = %60
  %74 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %12, align 8
  %75 = load %struct.tcindex_filter*, %struct.tcindex_filter** %74, align 8
  store %struct.tcindex_filter* %75, %struct.tcindex_filter** %10, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %80 = call i32 @tcf_tree_lock(%struct.tcf_proto* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load %struct.tcindex_filter*, %struct.tcindex_filter** %10, align 8
  %83 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %82, i32 0, i32 0
  %84 = load %struct.tcindex_filter*, %struct.tcindex_filter** %83, align 8
  %85 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %12, align 8
  store %struct.tcindex_filter* %84, %struct.tcindex_filter** %85, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %90 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %89)
  br label %91

91:                                               ; preds = %88, %81
  br label %92

92:                                               ; preds = %91, %35
  %93 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %94 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %95 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %94, i32 0, i32 1
  %96 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %93, %struct.TYPE_2__* %95)
  %97 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %98 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %9, align 8
  %99 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %98, i32 0, i32 0
  %100 = call i32 @tcf_exts_destroy(%struct.tcf_proto* %97, i32* %99)
  %101 = load %struct.tcindex_filter*, %struct.tcindex_filter** %10, align 8
  %102 = call i32 @kfree(%struct.tcindex_filter* %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %92, %70, %32
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.tcindex_data* @PRIV(%struct.tcf_proto*) #1

declare dso_local i32 @pr_debug(i8*, %struct.tcf_proto*, i64, %struct.tcindex_data*, %struct.tcindex_filter*) #1

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, %struct.TYPE_2__*) #1

declare dso_local i32 @tcf_exts_destroy(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @kfree(%struct.tcindex_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
