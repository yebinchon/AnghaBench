; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_in_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_core.c_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nf_nat_range = type { i32, i32, i32, i32, i32 }
%struct.nf_nat_protocol = type { i64 (%struct.nf_conntrack_tuple.0*, i32, i32*, i32*)* }
%struct.nf_conntrack_tuple.0 = type opaque

@IP_NAT_RANGE_MAP_IPS = common dso_local global i32 0, align 4
@IP_NAT_RANGE_PROTO_SPECIFIED = common dso_local global i32 0, align 4
@IP_NAT_MANIP_SRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.nf_nat_range*)* @in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_range(%struct.nf_conntrack_tuple* %0, %struct.nf_nat_range* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nf_conntrack_tuple*, align 8
  %5 = alloca %struct.nf_nat_range*, align 8
  %6 = alloca %struct.nf_nat_protocol*, align 8
  %7 = alloca i32, align 4
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %4, align 8
  store %struct.nf_nat_range* %1, %struct.nf_nat_range** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.nf_nat_range*, %struct.nf_nat_range** %5, align 8
  %9 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IP_NAT_RANGE_MAP_IPS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %16 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ntohl(i32 %19)
  %21 = load %struct.nf_nat_range*, %struct.nf_nat_range** %5, align 8
  %22 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ntohl(i32 %23)
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %14
  %27 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ntohl(i32 %31)
  %33 = load %struct.nf_nat_range*, %struct.nf_nat_range** %5, align 8
  %34 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ntohl(i32 %35)
  %37 = icmp sgt i64 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26, %14
  store i32 0, i32* %3, align 4
  br label %70

39:                                               ; preds = %26
  br label %40

40:                                               ; preds = %39, %2
  %41 = call i32 (...) @rcu_read_lock()
  %42 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %43 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.nf_nat_protocol* @__nf_nat_proto_find(i32 %45)
  store %struct.nf_nat_protocol* %46, %struct.nf_nat_protocol** %6, align 8
  %47 = load %struct.nf_nat_range*, %struct.nf_nat_range** %5, align 8
  %48 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IP_NAT_RANGE_PROTO_SPECIFIED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %40
  %54 = load %struct.nf_nat_protocol*, %struct.nf_nat_protocol** %6, align 8
  %55 = getelementptr inbounds %struct.nf_nat_protocol, %struct.nf_nat_protocol* %54, i32 0, i32 0
  %56 = load i64 (%struct.nf_conntrack_tuple.0*, i32, i32*, i32*)*, i64 (%struct.nf_conntrack_tuple.0*, i32, i32*, i32*)** %55, align 8
  %57 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %4, align 8
  %58 = bitcast %struct.nf_conntrack_tuple* %57 to %struct.nf_conntrack_tuple.0*
  %59 = load i32, i32* @IP_NAT_MANIP_SRC, align 4
  %60 = load %struct.nf_nat_range*, %struct.nf_nat_range** %5, align 8
  %61 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %60, i32 0, i32 2
  %62 = load %struct.nf_nat_range*, %struct.nf_nat_range** %5, align 8
  %63 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %62, i32 0, i32 1
  %64 = call i64 %56(%struct.nf_conntrack_tuple.0* %58, i32 %59, i32* %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53, %40
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %53
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %38
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.nf_nat_protocol* @__nf_nat_proto_find(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
