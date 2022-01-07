; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_icmp.c_icmp_unique_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_icmp.c_icmp_unique_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.nf_nat_range = type { i32, %struct.TYPE_14__, %struct.TYPE_9__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nf_conn = type { i32 }

@icmp_unique_tuple.id = internal global i32 0, align 4
@IP_NAT_RANGE_PROTO_SPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.nf_nat_range*, i32, %struct.nf_conn*)* @icmp_unique_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icmp_unique_tuple(%struct.nf_conntrack_tuple* %0, %struct.nf_nat_range* %1, i32 %2, %struct.nf_conn* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  %7 = alloca %struct.nf_nat_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %6, align 8
  store %struct.nf_nat_range* %1, %struct.nf_nat_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nf_conn* %3, %struct.nf_conn** %9, align 8
  %12 = load %struct.nf_nat_range*, %struct.nf_nat_range** %7, align 8
  %13 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohs(i32 %16)
  %18 = load %struct.nf_nat_range*, %struct.nf_nat_range** %7, align 8
  %19 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohs(i32 %22)
  %24 = sub nsw i32 %17, %23
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  %26 = load %struct.nf_nat_range*, %struct.nf_nat_range** %7, align 8
  %27 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IP_NAT_RANGE_PROTO_SPECIFIED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store i32 65535, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %4
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %34
  %39 = load %struct.nf_nat_range*, %struct.nf_nat_range** %7, align 8
  %40 = getelementptr inbounds %struct.nf_nat_range, %struct.nf_nat_range* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohs(i32 %43)
  %45 = load i32, i32* @icmp_unique_tuple.id, align 4
  %46 = load i32, i32* %10, align 4
  %47 = urem i32 %45, %46
  %48 = add i32 %44, %47
  %49 = call i32 @htons(i32 %48)
  %50 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %51 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  %55 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %56 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %57 = call i32 @nf_nat_used_tuple(%struct.nf_conntrack_tuple* %55, %struct.nf_conn* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %67

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* @icmp_unique_tuple.id, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* @icmp_unique_tuple.id, align 4
  br label %34

66:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @nf_nat_used_tuple(%struct.nf_conntrack_tuple*, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
