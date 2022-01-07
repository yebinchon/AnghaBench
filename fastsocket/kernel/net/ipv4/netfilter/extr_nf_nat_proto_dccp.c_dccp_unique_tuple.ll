; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_dccp.c_dccp_unique_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_dccp.c_dccp_unique_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_tuple = type { i32 }
%struct.nf_nat_range = type { i32 }
%struct.nf_conn = type { i32 }

@dccp_port_rover = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conntrack_tuple*, %struct.nf_nat_range*, i32, %struct.nf_conn*)* @dccp_unique_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_unique_tuple(%struct.nf_conntrack_tuple* %0, %struct.nf_nat_range* %1, i32 %2, %struct.nf_conn* %3) #0 {
  %5 = alloca %struct.nf_conntrack_tuple*, align 8
  %6 = alloca %struct.nf_nat_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  store %struct.nf_conntrack_tuple* %0, %struct.nf_conntrack_tuple** %5, align 8
  store %struct.nf_nat_range* %1, %struct.nf_nat_range** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nf_conn* %3, %struct.nf_conn** %8, align 8
  %9 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %5, align 8
  %10 = load %struct.nf_nat_range*, %struct.nf_nat_range** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %13 = call i32 @nf_nat_proto_unique_tuple(%struct.nf_conntrack_tuple* %9, %struct.nf_nat_range* %10, i32 %11, %struct.nf_conn* %12, i32* @dccp_port_rover)
  ret i32 %13
}

declare dso_local i32 @nf_nat_proto_unique_tuple(%struct.nf_conntrack_tuple*, %struct.nf_nat_range*, i32, %struct.nf_conn*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
