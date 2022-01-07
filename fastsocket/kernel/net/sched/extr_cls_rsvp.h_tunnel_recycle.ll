; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_tunnel_recycle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_tunnel_recycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsvp_head = type { i32, i32, %struct.rsvp_session** }
%struct.rsvp_session = type { %struct.rsvp_filter**, %struct.rsvp_session* }
%struct.rsvp_filter = type { i64, %struct.TYPE_2__, %struct.rsvp_filter* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsvp_head*)* @tunnel_recycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tunnel_recycle(%struct.rsvp_head* %0) #0 {
  %2 = alloca %struct.rsvp_head*, align 8
  %3 = alloca %struct.rsvp_session**, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rsvp_session*, align 8
  %8 = alloca %struct.rsvp_filter*, align 8
  store %struct.rsvp_head* %0, %struct.rsvp_head** %2, align 8
  %9 = load %struct.rsvp_head*, %struct.rsvp_head** %2, align 8
  %10 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %9, i32 0, i32 2
  %11 = load %struct.rsvp_session**, %struct.rsvp_session*** %10, align 8
  store %struct.rsvp_session** %11, %struct.rsvp_session*** %3, align 8
  %12 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %13 = call i32 @memset(i32* %12, i32 0, i32 32)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %70, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 256
  br i1 %16, label %17, label %73

17:                                               ; preds = %14
  %18 = load %struct.rsvp_session**, %struct.rsvp_session*** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rsvp_session*, %struct.rsvp_session** %18, i64 %20
  %22 = load %struct.rsvp_session*, %struct.rsvp_session** %21, align 8
  store %struct.rsvp_session* %22, %struct.rsvp_session** %7, align 8
  br label %23

23:                                               ; preds = %65, %17
  %24 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %25 = icmp ne %struct.rsvp_session* %24, null
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %61, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %28, 16
  br i1 %29, label %30, label %64

30:                                               ; preds = %27
  %31 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %32 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %31, i32 0, i32 0
  %33 = load %struct.rsvp_filter**, %struct.rsvp_filter*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.rsvp_filter*, %struct.rsvp_filter** %33, i64 %35
  %37 = load %struct.rsvp_filter*, %struct.rsvp_filter** %36, align 8
  store %struct.rsvp_filter* %37, %struct.rsvp_filter** %8, align 8
  br label %38

38:                                               ; preds = %56, %30
  %39 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %40 = icmp ne %struct.rsvp_filter* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %43 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %56

47:                                               ; preds = %41
  %48 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %49 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.rsvp_head*, %struct.rsvp_head** %2, align 8
  %53 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.rsvp_head*, %struct.rsvp_head** %2, align 8
  %55 = call i32 @tunnel_bts(%struct.rsvp_head* %54)
  br label %56

56:                                               ; preds = %47, %46
  %57 = load %struct.rsvp_filter*, %struct.rsvp_filter** %8, align 8
  %58 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %57, i32 0, i32 2
  %59 = load %struct.rsvp_filter*, %struct.rsvp_filter** %58, align 8
  store %struct.rsvp_filter* %59, %struct.rsvp_filter** %8, align 8
  br label %38

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %27

64:                                               ; preds = %27
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.rsvp_session*, %struct.rsvp_session** %7, align 8
  %67 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %66, i32 0, i32 1
  %68 = load %struct.rsvp_session*, %struct.rsvp_session** %67, align 8
  store %struct.rsvp_session* %68, %struct.rsvp_session** %7, align 8
  br label %23

69:                                               ; preds = %23
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %14

73:                                               ; preds = %14
  %74 = load %struct.rsvp_head*, %struct.rsvp_head** %2, align 8
  %75 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %78 = call i32 @memcpy(i32 %76, i32* %77, i32 32)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @tunnel_bts(%struct.rsvp_head*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
