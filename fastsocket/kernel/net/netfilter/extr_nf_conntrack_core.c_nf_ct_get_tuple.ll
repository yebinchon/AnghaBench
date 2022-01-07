; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_get_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_ct_get_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nf_conntrack_l3proto = type { i64 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*)* }
%struct.nf_conntrack_l4proto = type { i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*)* }

@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_ct_get_tuple(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.nf_conntrack_tuple* %5, %struct.nf_conntrack_l3proto* %6, %struct.nf_conntrack_l4proto* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nf_conntrack_tuple*, align 8
  %16 = alloca %struct.nf_conntrack_l3proto*, align 8
  %17 = alloca %struct.nf_conntrack_l4proto*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.nf_conntrack_tuple* %5, %struct.nf_conntrack_tuple** %15, align 8
  store %struct.nf_conntrack_l3proto* %6, %struct.nf_conntrack_l3proto** %16, align 8
  store %struct.nf_conntrack_l4proto* %7, %struct.nf_conntrack_l4proto** %17, align 8
  %18 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %15, align 8
  %19 = call i32 @memset(%struct.nf_conntrack_tuple* %18, i32 0, i32 12)
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %15, align 8
  %22 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.nf_conntrack_l3proto*, %struct.nf_conntrack_l3proto** %16, align 8
  %25 = getelementptr inbounds %struct.nf_conntrack_l3proto, %struct.nf_conntrack_l3proto* %24, i32 0, i32 0
  %26 = load i64 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*)*, i64 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*)** %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %15, align 8
  %30 = call i64 %26(%struct.sk_buff* %27, i32 %28, %struct.nf_conntrack_tuple* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %49

33:                                               ; preds = %8
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %15, align 8
  %36 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %39 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %15, align 8
  %40 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %17, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %42, i32 0, i32 0
  %44 = load i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*)*, i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*)** %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %15, align 8
  %48 = call i32 %44(%struct.sk_buff* %45, i32 %46, %struct.nf_conntrack_tuple* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %33, %32
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @memset(%struct.nf_conntrack_tuple*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
