; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_gen_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_rsvp.h_gen_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.rsvp_head* }
%struct.rsvp_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i32)* @gen_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_handle(%struct.tcf_proto* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsvp_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %10 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %9, i32 0, i32 0
  %11 = load %struct.rsvp_head*, %struct.rsvp_head** %10, align 8
  store %struct.rsvp_head* %11, %struct.rsvp_head** %6, align 8
  store i32 65535, i32* %7, align 4
  br label %12

12:                                               ; preds = %37, %2
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %7, align 4
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load %struct.rsvp_head*, %struct.rsvp_head** %6, align 8
  %18 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 65536
  store i32 %20, i32* %18, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.rsvp_head*, %struct.rsvp_head** %6, align 8
  %24 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %23, i32 0, i32 0
  store i32 65536, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.rsvp_head*, %struct.rsvp_head** %6, align 8
  %27 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @rsvp_get(%struct.tcf_proto* %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %25
  br label %12

38:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @rsvp_get(%struct.tcf_proto*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
