; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_rsvp_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i64 }
%struct.rsvp_session = type { %struct.rsvp_filter**, %struct.rsvp_session* }
%struct.rsvp_filter = type { i32, %struct.rsvp_filter* }
%struct.rsvp_head = type { %struct.rsvp_session** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcf_proto*, i32)* @rsvp_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rsvp_get(%struct.tcf_proto* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsvp_session**, align 8
  %7 = alloca %struct.rsvp_session*, align 8
  %8 = alloca %struct.rsvp_filter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %12 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rsvp_head*
  %15 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %14, i32 0, i32 0
  %16 = load %struct.rsvp_session**, %struct.rsvp_session*** %15, align 8
  store %struct.rsvp_session** %16, %struct.rsvp_session*** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 8
  %21 = and i32 %20, 255
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ugt i32 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %65

25:                                               ; preds = %2
  %26 = load %struct.rsvp_session**, %struct.rsvp_session*** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rsvp_session*, %struct.rsvp_session** %26, i64 %28
  %30 = load %struct.rsvp_session*, %struct.rsvp_session** %29, align 8
  store %struct.rsvp_session* %30, %struct.rsvp_session** %7, align 8
  br label %31

31:                                               ; preds = %60, %25
  %32 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %33 = icmp ne %struct.rsvp_session* %32, null
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %36 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %35, i32 0, i32 0
  %37 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rsvp_filter*, %struct.rsvp_filter** %37, i64 %39
  %41 = load %struct.rsvp_filter*, %struct.rsvp_filter** %40, align 8
  store %struct.rsvp_filter* %41, %struct.rsvp_filter** %8, align 8
  br label %42

42:                                               ; preds = %55, %34
  %43 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %44 = icmp ne %struct.rsvp_filter* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %47 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %53 = ptrtoint %struct.rsvp_filter* %52 to i64
  store i64 %53, i64* %3, align 8
  br label %65

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %57 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %56, i32 0, i32 1
  %58 = load %struct.rsvp_filter*, %struct.rsvp_filter** %57, align 8
  store %struct.rsvp_filter* %58, %struct.rsvp_filter** %8, align 8
  br label %42

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %62 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %61, i32 0, i32 1
  %63 = load %struct.rsvp_session*, %struct.rsvp_session** %62, align 8
  store %struct.rsvp_session* %63, %struct.rsvp_session** %7, align 8
  br label %31

64:                                               ; preds = %31
  store i64 0, i64* %3, align 8
  br label %65

65:                                               ; preds = %64, %51, %24
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
