; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.tcindex_data = type { i64, i64 }
%struct.tcindex_filter_result = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"tcindex_get(tp %p,handle 0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcf_proto*, i64)* @tcindex_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcindex_get(%struct.tcf_proto* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcindex_data*, align 8
  %7 = alloca %struct.tcindex_filter_result*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = call %struct.tcindex_data* @PRIV(%struct.tcf_proto* %8)
  store %struct.tcindex_data* %9, %struct.tcindex_data** %6, align 8
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.tcf_proto* %10, i64 %11)
  %13 = load %struct.tcindex_data*, %struct.tcindex_data** %6, align 8
  %14 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.tcindex_data*, %struct.tcindex_data** %6, align 8
  %20 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %40

24:                                               ; preds = %17, %2
  %25 = load %struct.tcindex_data*, %struct.tcindex_data** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call %struct.tcindex_filter_result* @tcindex_lookup(%struct.tcindex_data* %25, i64 %26)
  store %struct.tcindex_filter_result* %27, %struct.tcindex_filter_result** %7, align 8
  %28 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %7, align 8
  %29 = icmp ne %struct.tcindex_filter_result* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %7, align 8
  %32 = call i64 @tcindex_filter_is_set(%struct.tcindex_filter_result* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %7, align 8
  %36 = ptrtoint %struct.tcindex_filter_result* %35 to i64
  br label %38

37:                                               ; preds = %30, %24
  br label %38

38:                                               ; preds = %37, %34
  %39 = phi i64 [ %36, %34 ], [ 0, %37 ]
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %38, %23
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local %struct.tcindex_data* @PRIV(%struct.tcf_proto*) #1

declare dso_local i32 @pr_debug(i8*, %struct.tcf_proto*, i64) #1

declare dso_local %struct.tcindex_filter_result* @tcindex_lookup(%struct.tcindex_data*, i64) #1

declare dso_local i64 @tcindex_filter_is_set(%struct.tcindex_filter_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
