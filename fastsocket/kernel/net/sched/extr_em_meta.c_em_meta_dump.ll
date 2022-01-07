; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_meta.c_em_meta_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_meta.c_em_meta_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i64 }
%struct.meta_match = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_meta_hdr = type { i32, i32 }
%struct.meta_type_ops = type { i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)* }

@TCA_EM_META_HDR = common dso_local global i32 0, align 4
@TCA_EM_META_LVALUE = common dso_local global i32 0, align 4
@TCA_EM_META_RVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*)* @em_meta_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_meta_dump(%struct.sk_buff* %0, %struct.tcf_ematch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcf_ematch*, align 8
  %6 = alloca %struct.meta_match*, align 8
  %7 = alloca %struct.tcf_meta_hdr, align 4
  %8 = alloca %struct.meta_type_ops*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %5, align 8
  %9 = load %struct.tcf_ematch*, %struct.tcf_ematch** %5, align 8
  %10 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.meta_match*
  store %struct.meta_match* %12, %struct.meta_match** %6, align 8
  %13 = call i32 @memset(%struct.tcf_meta_hdr* %7, i32 0, i32 8)
  %14 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %7, i32 0, i32 1
  %15 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %16 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @memcpy(i32* %14, i32* %17, i32 4)
  %19 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %7, i32 0, i32 0
  %20 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %21 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @memcpy(i32* %19, i32* %22, i32 4)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @TCA_EM_META_HDR, align 4
  %26 = call i32 @NLA_PUT(%struct.sk_buff* %24, i32 %25, i32 8, %struct.tcf_meta_hdr* %7)
  %27 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %28 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %27, i32 0, i32 1
  %29 = call %struct.meta_type_ops* @meta_type_ops(%struct.TYPE_4__* %28)
  store %struct.meta_type_ops* %29, %struct.meta_type_ops** %8, align 8
  %30 = load %struct.meta_type_ops*, %struct.meta_type_ops** %8, align 8
  %31 = getelementptr inbounds %struct.meta_type_ops, %struct.meta_type_ops* %30, i32 0, i32 0
  %32 = load i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)*, i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)** %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %35 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %34, i32 0, i32 1
  %36 = load i32, i32* @TCA_EM_META_LVALUE, align 4
  %37 = call i64 %32(%struct.sk_buff* %33, %struct.TYPE_4__* %35, i32 %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %2
  %40 = load %struct.meta_type_ops*, %struct.meta_type_ops** %8, align 8
  %41 = getelementptr inbounds %struct.meta_type_ops, %struct.meta_type_ops* %40, i32 0, i32 0
  %42 = load i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)*, i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)** %41, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %45 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %44, i32 0, i32 0
  %46 = load i32, i32* @TCA_EM_META_RVALUE, align 4
  %47 = call i64 %42(%struct.sk_buff* %43, %struct.TYPE_4__* %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39, %2
  br label %51

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @memset(%struct.tcf_meta_hdr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tcf_meta_hdr*) #1

declare dso_local %struct.meta_type_ops* @meta_type_ops(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
