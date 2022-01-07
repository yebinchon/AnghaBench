; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.rsvp_head* }
%struct.rsvp_head = type { %struct.rsvp_session** }
%struct.rsvp_session = type { %struct.rsvp_filter**, %struct.rsvp_session* }
%struct.rsvp_filter = type { %struct.rsvp_filter* }
%struct.tcf_walker = type { i32, i64, i64, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)* }
%struct.tcf_proto.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.tcf_walker*)* @rsvp_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsvp_walk(%struct.tcf_proto* %0, %struct.tcf_walker* %1) #0 {
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.tcf_walker*, align 8
  %5 = alloca %struct.rsvp_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rsvp_session*, align 8
  %9 = alloca %struct.rsvp_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  store %struct.tcf_walker* %1, %struct.tcf_walker** %4, align 8
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load %struct.rsvp_head*, %struct.rsvp_head** %11, align 8
  store %struct.rsvp_head* %12, %struct.rsvp_head** %5, align 8
  %13 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %14 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %97

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %94, %18
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %20, 256
  br i1 %21, label %22, label %97

22:                                               ; preds = %19
  %23 = load %struct.rsvp_head*, %struct.rsvp_head** %5, align 8
  %24 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %23, i32 0, i32 0
  %25 = load %struct.rsvp_session**, %struct.rsvp_session*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rsvp_session*, %struct.rsvp_session** %25, i64 %27
  %29 = load %struct.rsvp_session*, %struct.rsvp_session** %28, align 8
  store %struct.rsvp_session* %29, %struct.rsvp_session** %8, align 8
  br label %30

30:                                               ; preds = %89, %22
  %31 = load %struct.rsvp_session*, %struct.rsvp_session** %8, align 8
  %32 = icmp ne %struct.rsvp_session* %31, null
  br i1 %32, label %33, label %93

33:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %85, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp ule i32 %35, 16
  br i1 %36, label %37, label %88

37:                                               ; preds = %34
  %38 = load %struct.rsvp_session*, %struct.rsvp_session** %8, align 8
  %39 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %38, i32 0, i32 0
  %40 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.rsvp_filter*, %struct.rsvp_filter** %40, i64 %42
  %44 = load %struct.rsvp_filter*, %struct.rsvp_filter** %43, align 8
  store %struct.rsvp_filter* %44, %struct.rsvp_filter** %9, align 8
  br label %45

45:                                               ; preds = %80, %37
  %46 = load %struct.rsvp_filter*, %struct.rsvp_filter** %9, align 8
  %47 = icmp ne %struct.rsvp_filter* %46, null
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  %49 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %50 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %53 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %58 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %80

61:                                               ; preds = %48
  %62 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %63 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %62, i32 0, i32 3
  %64 = load i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)*, i64 (%struct.tcf_proto.0*, i64, %struct.tcf_walker*)** %63, align 8
  %65 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %66 = bitcast %struct.tcf_proto* %65 to %struct.tcf_proto.0*
  %67 = load %struct.rsvp_filter*, %struct.rsvp_filter** %9, align 8
  %68 = ptrtoint %struct.rsvp_filter* %67 to i64
  %69 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %70 = call i64 %64(%struct.tcf_proto.0* %66, i64 %68, %struct.tcf_walker* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %74 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %97

75:                                               ; preds = %61
  %76 = load %struct.tcf_walker*, %struct.tcf_walker** %4, align 8
  %77 = getelementptr inbounds %struct.tcf_walker, %struct.tcf_walker* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  br label %80

80:                                               ; preds = %75, %56
  %81 = load %struct.rsvp_filter*, %struct.rsvp_filter** %9, align 8
  %82 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %81, i32 0, i32 0
  %83 = load %struct.rsvp_filter*, %struct.rsvp_filter** %82, align 8
  store %struct.rsvp_filter* %83, %struct.rsvp_filter** %9, align 8
  br label %45

84:                                               ; preds = %45
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %34

88:                                               ; preds = %34
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.rsvp_session*, %struct.rsvp_session** %8, align 8
  %91 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %90, i32 0, i32 1
  %92 = load %struct.rsvp_session*, %struct.rsvp_session** %91, align 8
  store %struct.rsvp_session* %92, %struct.rsvp_session** %8, align 8
  br label %30

93:                                               ; preds = %30
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %19

97:                                               ; preds = %17, %72, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
