; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_segment_seq_plus_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_proto_tcp.c_segment_seq_plus_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, %struct.tcphdr*)* @segment_seq_plus_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @segment_seq_plus_len(i64 %0, i64 %1, i32 %2, %struct.tcphdr* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tcphdr* %3, %struct.tcphdr** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %9, %10
  %12 = load i32, i32* %7, align 4
  %13 = zext i32 %12 to i64
  %14 = sub i64 %11, %13
  %15 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %16 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %14, %19
  %21 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %22 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = sext i32 %26 to i64
  %28 = add i64 %20, %27
  %29 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %30 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 0
  %35 = sext i32 %34 to i64
  %36 = add i64 %28, %35
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
