; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_expect_clash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_expect.c_expect_clash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.nf_conntrack_tuple_mask = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@NF_CT_TUPLE_L3SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_expect*, %struct.nf_conntrack_expect*)* @expect_clash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expect_clash(%struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect* %1) #0 {
  %3 = alloca %struct.nf_conntrack_expect*, align 8
  %4 = alloca %struct.nf_conntrack_expect*, align 8
  %5 = alloca %struct.nf_conntrack_tuple_mask, align 8
  %6 = alloca i32, align 4
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %3, align 8
  store %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_expect** %4, align 8
  %7 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %8 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %14 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %12, %18
  %20 = getelementptr inbounds %struct.nf_conntrack_tuple_mask, %struct.nf_conntrack_tuple_mask* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %56, %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @NF_CT_TUPLE_L3SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %59

27:                                               ; preds = %23
  %28 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %37, %47
  %49 = getelementptr inbounds %struct.nf_conntrack_tuple_mask, %struct.nf_conntrack_tuple_mask* %5, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %48, i32* %55, align 4
  br label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %23

59:                                               ; preds = %23
  %60 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %61 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %60, i32 0, i32 0
  %62 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %63 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %62, i32 0, i32 0
  %64 = call i32 @nf_ct_tuple_mask_cmp(i32* %61, i32* %63, %struct.nf_conntrack_tuple_mask* %5)
  ret i32 %64
}

declare dso_local i32 @nf_ct_tuple_mask_cmp(i32*, i32*, %struct.nf_conntrack_tuple_mask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
