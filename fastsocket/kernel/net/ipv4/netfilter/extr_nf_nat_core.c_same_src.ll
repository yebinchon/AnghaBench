; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_same_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_same_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.nf_conntrack_tuple*)* @same_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_src(%struct.nf_conn* %0, %struct.nf_conntrack_tuple* %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %4, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %7 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %11, %struct.nf_conntrack_tuple** %5, align 8
  %12 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %13 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %2
  %22 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %23 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %26, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %21
  %34 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %40 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br label %45

45:                                               ; preds = %33, %21, %2
  %46 = phi i1 [ false, %21 ], [ false, %2 ], [ %44, %33 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
