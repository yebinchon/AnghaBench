; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64 }
%struct.rsvp_filter = type { i32, %struct.rsvp_filter*, %struct.rsvp_session* }
%struct.rsvp_session = type { %struct.rsvp_session*, %struct.rsvp_filter** }
%struct.rsvp_head = type { %struct.rsvp_session** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i64)* @rsvp_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsvp_delete(%struct.tcf_proto* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rsvp_filter**, align 8
  %7 = alloca %struct.rsvp_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rsvp_session**, align 8
  %10 = alloca %struct.rsvp_session*, align 8
  %11 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.rsvp_filter*
  store %struct.rsvp_filter* %13, %struct.rsvp_filter** %7, align 8
  %14 = load %struct.rsvp_filter*, %struct.rsvp_filter** %7, align 8
  %15 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.rsvp_filter*, %struct.rsvp_filter** %7, align 8
  %18 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %17, i32 0, i32 2
  %19 = load %struct.rsvp_session*, %struct.rsvp_session** %18, align 8
  store %struct.rsvp_session* %19, %struct.rsvp_session** %10, align 8
  %20 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %21 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %20, i32 0, i32 1
  %22 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = lshr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.rsvp_filter*, %struct.rsvp_filter** %22, i64 %26
  store %struct.rsvp_filter** %27, %struct.rsvp_filter*** %6, align 8
  br label %28

28:                                               ; preds = %104, %2
  %29 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %6, align 8
  %30 = load %struct.rsvp_filter*, %struct.rsvp_filter** %29, align 8
  %31 = icmp ne %struct.rsvp_filter* %30, null
  br i1 %31, label %32, label %108

32:                                               ; preds = %28
  %33 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %6, align 8
  %34 = load %struct.rsvp_filter*, %struct.rsvp_filter** %33, align 8
  %35 = load %struct.rsvp_filter*, %struct.rsvp_filter** %7, align 8
  %36 = icmp eq %struct.rsvp_filter* %34, %35
  br i1 %36, label %37, label %103

37:                                               ; preds = %32
  %38 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %39 = call i32 @tcf_tree_lock(%struct.tcf_proto* %38)
  %40 = load %struct.rsvp_filter*, %struct.rsvp_filter** %7, align 8
  %41 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %40, i32 0, i32 1
  %42 = load %struct.rsvp_filter*, %struct.rsvp_filter** %41, align 8
  %43 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %6, align 8
  store %struct.rsvp_filter* %42, %struct.rsvp_filter** %43, align 8
  %44 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %45 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %44)
  %46 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %47 = load %struct.rsvp_filter*, %struct.rsvp_filter** %7, align 8
  %48 = call i32 @rsvp_delete_filter(%struct.tcf_proto* %46, %struct.rsvp_filter* %47)
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %63, %37
  %50 = load i32, i32* %11, align 4
  %51 = icmp sle i32 %50, 16
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %54 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %53, i32 0, i32 1
  %55 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rsvp_filter*, %struct.rsvp_filter** %55, i64 %57
  %59 = load %struct.rsvp_filter*, %struct.rsvp_filter** %58, align 8
  %60 = icmp ne %struct.rsvp_filter* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %109

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %49

66:                                               ; preds = %49
  %67 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %68 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.rsvp_head*
  %71 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %70, i32 0, i32 0
  %72 = load %struct.rsvp_session**, %struct.rsvp_session*** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 255
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.rsvp_session*, %struct.rsvp_session** %72, i64 %75
  store %struct.rsvp_session** %76, %struct.rsvp_session*** %9, align 8
  br label %77

77:                                               ; preds = %98, %66
  %78 = load %struct.rsvp_session**, %struct.rsvp_session*** %9, align 8
  %79 = load %struct.rsvp_session*, %struct.rsvp_session** %78, align 8
  %80 = icmp ne %struct.rsvp_session* %79, null
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load %struct.rsvp_session**, %struct.rsvp_session*** %9, align 8
  %83 = load %struct.rsvp_session*, %struct.rsvp_session** %82, align 8
  %84 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %85 = icmp eq %struct.rsvp_session* %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %88 = call i32 @tcf_tree_lock(%struct.tcf_proto* %87)
  %89 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %90 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %89, i32 0, i32 0
  %91 = load %struct.rsvp_session*, %struct.rsvp_session** %90, align 8
  %92 = load %struct.rsvp_session**, %struct.rsvp_session*** %9, align 8
  store %struct.rsvp_session* %91, %struct.rsvp_session** %92, align 8
  %93 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %94 = call i32 @tcf_tree_unlock(%struct.tcf_proto* %93)
  %95 = load %struct.rsvp_session*, %struct.rsvp_session** %10, align 8
  %96 = call i32 @kfree(%struct.rsvp_session* %95)
  store i32 0, i32* %3, align 4
  br label %109

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.rsvp_session**, %struct.rsvp_session*** %9, align 8
  %100 = load %struct.rsvp_session*, %struct.rsvp_session** %99, align 8
  %101 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %100, i32 0, i32 0
  store %struct.rsvp_session** %101, %struct.rsvp_session*** %9, align 8
  br label %77

102:                                              ; preds = %77
  store i32 0, i32* %3, align 4
  br label %109

103:                                              ; preds = %32
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %6, align 8
  %106 = load %struct.rsvp_filter*, %struct.rsvp_filter** %105, align 8
  %107 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %106, i32 0, i32 1
  store %struct.rsvp_filter** %107, %struct.rsvp_filter*** %6, align 8
  br label %28

108:                                              ; preds = %28
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %102, %86, %61
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @tcf_tree_lock(%struct.tcf_proto*) #1

declare dso_local i32 @tcf_tree_unlock(%struct.tcf_proto*) #1

declare dso_local i32 @rsvp_delete_filter(%struct.tcf_proto*, %struct.rsvp_filter*) #1

declare dso_local i32 @kfree(%struct.rsvp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
