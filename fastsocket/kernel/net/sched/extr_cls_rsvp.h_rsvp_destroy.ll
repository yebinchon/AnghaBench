; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.rsvp_head = type { %struct.rsvp_head*, %struct.rsvp_head** }
%struct.rsvp_session = type { %struct.rsvp_session*, %struct.rsvp_session** }
%struct.rsvp_filter = type { %struct.rsvp_filter*, %struct.rsvp_filter** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*)* @rsvp_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsvp_destroy(%struct.tcf_proto* %0) #0 {
  %2 = alloca %struct.tcf_proto*, align 8
  %3 = alloca %struct.rsvp_head*, align 8
  %4 = alloca %struct.rsvp_session**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsvp_session*, align 8
  %8 = alloca %struct.rsvp_filter*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %2, align 8
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %10 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %9, i32 0, i32 0
  %11 = call %struct.rsvp_session* @xchg(i32* %10, i32* null)
  %12 = bitcast %struct.rsvp_session* %11 to %struct.rsvp_head*
  store %struct.rsvp_head* %12, %struct.rsvp_head** %3, align 8
  %13 = load %struct.rsvp_head*, %struct.rsvp_head** %3, align 8
  %14 = icmp eq %struct.rsvp_head* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %84

16:                                               ; preds = %1
  %17 = load %struct.rsvp_head*, %struct.rsvp_head** %3, align 8
  %18 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %17, i32 0, i32 1
  %19 = load %struct.rsvp_head**, %struct.rsvp_head*** %18, align 8
  %20 = bitcast %struct.rsvp_head** %19 to %struct.rsvp_session**
  store %struct.rsvp_session** %20, %struct.rsvp_session*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %77, %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %80

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %73, %24
  %26 = load %struct.rsvp_session**, %struct.rsvp_session*** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rsvp_session*, %struct.rsvp_session** %26, i64 %28
  %30 = load %struct.rsvp_session*, %struct.rsvp_session** %29, align 8
  store %struct.rsvp_session* %30, %struct.rsvp_session** %7, align 8
  %31 = icmp ne %struct.rsvp_session* %30, null
  br i1 %31, label %32, label %76

32:                                               ; preds = %25
  %33 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %34 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %33, i32 0, i32 0
  %35 = load %struct.rsvp_session*, %struct.rsvp_session** %34, align 8
  %36 = load %struct.rsvp_session**, %struct.rsvp_session*** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rsvp_session*, %struct.rsvp_session** %36, i64 %38
  store %struct.rsvp_session* %35, %struct.rsvp_session** %39, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %70, %32
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %41, 16
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %54, %43
  %45 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %46 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %45, i32 0, i32 1
  %47 = load %struct.rsvp_session**, %struct.rsvp_session*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.rsvp_session*, %struct.rsvp_session** %47, i64 %49
  %51 = load %struct.rsvp_session*, %struct.rsvp_session** %50, align 8
  %52 = bitcast %struct.rsvp_session* %51 to %struct.rsvp_filter*
  store %struct.rsvp_filter* %52, %struct.rsvp_filter** %8, align 8
  %53 = icmp ne %struct.rsvp_filter* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %44
  %55 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %56 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %55, i32 0, i32 0
  %57 = load %struct.rsvp_filter*, %struct.rsvp_filter** %56, align 8
  %58 = bitcast %struct.rsvp_filter* %57 to %struct.rsvp_session*
  %59 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %60 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %59, i32 0, i32 1
  %61 = load %struct.rsvp_session**, %struct.rsvp_session*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.rsvp_session*, %struct.rsvp_session** %61, i64 %63
  store %struct.rsvp_session* %58, %struct.rsvp_session** %64, align 8
  %65 = load %struct.tcf_proto*, %struct.tcf_proto** %2, align 8
  %66 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %67 = bitcast %struct.rsvp_filter* %66 to %struct.rsvp_session*
  %68 = call i32 @rsvp_delete_filter(%struct.tcf_proto* %65, %struct.rsvp_session* %67)
  br label %44

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %40

73:                                               ; preds = %40
  %74 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %75 = call i32 @kfree(%struct.rsvp_session* %74)
  br label %25

76:                                               ; preds = %25
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %21

80:                                               ; preds = %21
  %81 = load %struct.rsvp_head*, %struct.rsvp_head** %3, align 8
  %82 = bitcast %struct.rsvp_head* %81 to %struct.rsvp_session*
  %83 = call i32 @kfree(%struct.rsvp_session* %82)
  br label %84

84:                                               ; preds = %80, %15
  ret void
}

declare dso_local %struct.rsvp_session* @xchg(i32*, i32*) #1

declare dso_local i32 @rsvp_delete_filter(%struct.tcf_proto*, %struct.rsvp_session*) #1

declare dso_local i32 @kfree(%struct.rsvp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
