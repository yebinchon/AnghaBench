; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_tcindex.c_tcindex_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcindex_filter_result = type { i32 }
%struct.tcindex_data = type { i64, %struct.tcindex_filter**, %struct.tcindex_filter_result* }
%struct.tcindex_filter = type { i64, %struct.tcindex_filter_result, %struct.tcindex_filter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcindex_filter_result* (%struct.tcindex_data*, i64)* @tcindex_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcindex_filter_result* @tcindex_lookup(%struct.tcindex_data* %0, i64 %1) #0 {
  %3 = alloca %struct.tcindex_filter_result*, align 8
  %4 = alloca %struct.tcindex_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tcindex_filter*, align 8
  store %struct.tcindex_data* %0, %struct.tcindex_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tcindex_data*, %struct.tcindex_data** %4, align 8
  %8 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %7, i32 0, i32 2
  %9 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %8, align 8
  %10 = icmp ne %struct.tcindex_filter_result* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.tcindex_data*, %struct.tcindex_data** %4, align 8
  %13 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %12, i32 0, i32 2
  %14 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %14, i64 %15
  %17 = call i64 @tcindex_filter_is_set(%struct.tcindex_filter_result* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.tcindex_data*, %struct.tcindex_data** %4, align 8
  %21 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %20, i32 0, i32 2
  %22 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.tcindex_filter_result, %struct.tcindex_filter_result* %22, i64 %23
  br label %26

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi %struct.tcindex_filter_result* [ %24, %19 ], [ null, %25 ]
  store %struct.tcindex_filter_result* %27, %struct.tcindex_filter_result** %3, align 8
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.tcindex_data*, %struct.tcindex_data** %4, align 8
  %30 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %29, i32 0, i32 1
  %31 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %30, align 8
  %32 = icmp ne %struct.tcindex_filter** %31, null
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = load %struct.tcindex_data*, %struct.tcindex_data** %4, align 8
  %35 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %34, i32 0, i32 1
  %36 = load %struct.tcindex_filter**, %struct.tcindex_filter*** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.tcindex_data*, %struct.tcindex_data** %4, align 8
  %39 = getelementptr inbounds %struct.tcindex_data, %struct.tcindex_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = urem i64 %37, %40
  %42 = getelementptr inbounds %struct.tcindex_filter*, %struct.tcindex_filter** %36, i64 %41
  %43 = load %struct.tcindex_filter*, %struct.tcindex_filter** %42, align 8
  store %struct.tcindex_filter* %43, %struct.tcindex_filter** %6, align 8
  br label %44

44:                                               ; preds = %57, %33
  %45 = load %struct.tcindex_filter*, %struct.tcindex_filter** %6, align 8
  %46 = icmp ne %struct.tcindex_filter* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load %struct.tcindex_filter*, %struct.tcindex_filter** %6, align 8
  %49 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.tcindex_filter*, %struct.tcindex_filter** %6, align 8
  %55 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %54, i32 0, i32 1
  store %struct.tcindex_filter_result* %55, %struct.tcindex_filter_result** %3, align 8
  br label %64

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.tcindex_filter*, %struct.tcindex_filter** %6, align 8
  %59 = getelementptr inbounds %struct.tcindex_filter, %struct.tcindex_filter* %58, i32 0, i32 2
  %60 = load %struct.tcindex_filter*, %struct.tcindex_filter** %59, align 8
  store %struct.tcindex_filter* %60, %struct.tcindex_filter** %6, align 8
  br label %44

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %28
  br label %63

63:                                               ; preds = %62
  store %struct.tcindex_filter_result* null, %struct.tcindex_filter_result** %3, align 8
  br label %64

64:                                               ; preds = %63, %53, %26
  %65 = load %struct.tcindex_filter_result*, %struct.tcindex_filter_result** %3, align 8
  ret %struct.tcindex_filter_result* %65
}

declare dso_local i64 @tcindex_filter_is_set(%struct.tcindex_filter_result*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
