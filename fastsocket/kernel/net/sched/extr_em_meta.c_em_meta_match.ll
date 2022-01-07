; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_meta.c_em_meta_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_meta.c_em_meta_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i64 }
%struct.tcf_pkt_info = type { i32 }
%struct.meta_match = type { %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.meta_obj = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.meta_obj*, %struct.meta_obj*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*, %struct.tcf_pkt_info*)* @em_meta_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_meta_match(%struct.sk_buff* %0, %struct.tcf_ematch* %1, %struct.tcf_pkt_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_ematch*, align 8
  %7 = alloca %struct.tcf_pkt_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.meta_match*, align 8
  %10 = alloca %struct.meta_obj, align 4
  %11 = alloca %struct.meta_obj, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %6, align 8
  store %struct.tcf_pkt_info* %2, %struct.tcf_pkt_info** %7, align 8
  %12 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %13 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.meta_match*
  store %struct.meta_match* %15, %struct.meta_match** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = load %struct.tcf_pkt_info*, %struct.tcf_pkt_info** %7, align 8
  %18 = load %struct.meta_match*, %struct.meta_match** %9, align 8
  %19 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %18, i32 0, i32 0
  %20 = call i64 @meta_get(%struct.sk_buff* %16, %struct.tcf_pkt_info* %17, %struct.TYPE_7__* %19, %struct.meta_obj* %10)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load %struct.tcf_pkt_info*, %struct.tcf_pkt_info** %7, align 8
  %25 = load %struct.meta_match*, %struct.meta_match** %9, align 8
  %26 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %25, i32 0, i32 1
  %27 = call i64 @meta_get(%struct.sk_buff* %23, %struct.tcf_pkt_info* %24, %struct.TYPE_7__* %26, %struct.meta_obj* %11)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.meta_match*, %struct.meta_match** %9, align 8
  %32 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %31, i32 0, i32 0
  %33 = call %struct.TYPE_6__* @meta_type_ops(%struct.TYPE_7__* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.meta_obj*, %struct.meta_obj*)*, i32 (%struct.meta_obj*, %struct.meta_obj*)** %34, align 8
  %36 = call i32 %35(%struct.meta_obj* %10, %struct.meta_obj* %11)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.meta_match*, %struct.meta_match** %9, align 8
  %38 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %55 [
    i32 130, label %42
    i32 128, label %47
    i32 129, label %51
  ]

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %56

47:                                               ; preds = %30
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %30
  %52 = load i32, i32* %8, align 4
  %53 = icmp sgt i32 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51, %47, %42, %29
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i64 @meta_get(%struct.sk_buff*, %struct.tcf_pkt_info*, %struct.TYPE_7__*, %struct.meta_obj*) #1

declare dso_local %struct.TYPE_6__* @meta_type_ops(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
