; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_route.c_route4_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32, i64 }
%struct.route4_head = type { i32** }
%struct.route4_filter = type { i32, i32, %struct.route4_filter*, %struct.route4_bucket* }
%struct.route4_bucket = type { %struct.route4_filter** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64)* @route4_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route4_delete(%struct.tcf_proto* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.route4_head*, align 8
  %7 = alloca %struct.route4_filter**, align 8
  %8 = alloca %struct.route4_filter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.route4_bucket*, align 8
  %11 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %13 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.route4_head*
  store %struct.route4_head* %15, %struct.route4_head** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = inttoptr i64 %16 to %struct.route4_filter*
  store %struct.route4_filter* %17, %struct.route4_filter** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load %struct.route4_head*, %struct.route4_head** %6, align 8
  %19 = icmp ne %struct.route4_head* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %22 = icmp ne %struct.route4_filter* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %105

26:                                               ; preds = %20
  %27 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %28 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %9, align 4
  %30 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %31 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %30, i32 0, i32 3
  %32 = load %struct.route4_bucket*, %struct.route4_bucket** %31, align 8
  store %struct.route4_bucket* %32, %struct.route4_bucket** %10, align 8
  %33 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %34 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %33, i32 0, i32 0
  %35 = load %struct.route4_filter**, %struct.route4_filter*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = lshr i32 %36, 16
  %38 = call i64 @from_hash(i32 %37)
  %39 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %35, i64 %38
  store %struct.route4_filter** %39, %struct.route4_filter*** %7, align 8
  br label %40

40:                                               ; preds = %100, %26
  %41 = load %struct.route4_filter**, %struct.route4_filter*** %7, align 8
  %42 = load %struct.route4_filter*, %struct.route4_filter** %41, align 8
  %43 = icmp ne %struct.route4_filter* %42, null
  br i1 %43, label %44, label %104

44:                                               ; preds = %40
  %45 = load %struct.route4_filter**, %struct.route4_filter*** %7, align 8
  %46 = load %struct.route4_filter*, %struct.route4_filter** %45, align 8
  %47 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %48 = icmp eq %struct.route4_filter* %46, %47
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %51 = call i32 @tcf_tree_lock(%struct.tcf_proto* %50)
  %52 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %53 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %52, i32 0, i32 2
  %54 = load %struct.route4_filter*, %struct.route4_filter** %53, align 8
  %55 = load %struct.route4_filter**, %struct.route4_filter*** %7, align 8
  store %struct.route4_filter* %54, %struct.route4_filter** %55, align 8
  %56 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %57 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %56)
  %58 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %59 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.route4_head*, %struct.route4_head** %6, align 8
  %62 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %63 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @route4_reset_fastmap(i32 %60, %struct.route4_head* %61, i32 %64)
  %66 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %67 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %68 = call i32 @route4_delete_filter(%struct.tcf_proto* %66, %struct.route4_filter* %67)
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %83, %49
  %70 = load i32, i32* %11, align 4
  %71 = icmp sle i32 %70, 32
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %74 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %73, i32 0, i32 0
  %75 = load %struct.route4_filter**, %struct.route4_filter*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.route4_filter*, %struct.route4_filter** %75, i64 %77
  %79 = load %struct.route4_filter*, %struct.route4_filter** %78, align 8
  %80 = icmp ne %struct.route4_filter* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %105

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %69

86:                                               ; preds = %69
  %87 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %88 = call i32 @tcf_tree_lock(%struct.tcf_proto* %87)
  %89 = load %struct.route4_head*, %struct.route4_head** %6, align 8
  %90 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @to_hash(i32 %92)
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  store i32* null, i32** %94, align 8
  %95 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %96 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %95)
  %97 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %98 = call i32 @kfree(%struct.route4_bucket* %97)
  store i32 0, i32* %3, align 4
  br label %105

99:                                               ; preds = %44
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.route4_filter**, %struct.route4_filter*** %7, align 8
  %102 = load %struct.route4_filter*, %struct.route4_filter** %101, align 8
  %103 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %102, i32 0, i32 2
  store %struct.route4_filter** %103, %struct.route4_filter*** %7, align 8
  br label %40

104:                                              ; preds = %40
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %86, %81, %23
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @from_hash(i32) #1

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #1

declare dso_local i32 @route4_reset_fastmap(i32, %struct.route4_head*, i32) #1

declare dso_local i32 @route4_delete_filter(%struct.tcf_proto*, %struct.route4_filter*) #1

declare dso_local i64 @to_hash(i32) #1

declare dso_local i32 @kfree(%struct.route4_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
