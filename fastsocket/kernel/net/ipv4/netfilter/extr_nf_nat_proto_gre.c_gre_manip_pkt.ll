; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_gre.c_gre_manip_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_proto_gre.c_gre_manip_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gre_hdr = type { i32 }
%struct.gre_hdr_pptp = type { i32 }
%struct.iphdr = type { i32 }

@IP_NAT_MANIP_DST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"call_id -> 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"can't nat unknown GRE version\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conntrack_tuple*, i32)* @gre_manip_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_manip_pkt(%struct.sk_buff* %0, i32 %1, %struct.nf_conntrack_tuple* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conntrack_tuple*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gre_hdr*, align 8
  %11 = alloca %struct.gre_hdr_pptp*, align 8
  %12 = alloca %struct.iphdr*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conntrack_tuple* %2, %struct.nf_conntrack_tuple** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = inttoptr i64 %19 to %struct.iphdr*
  store %struct.iphdr* %20, %struct.iphdr** %12, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.iphdr*, %struct.iphdr** %12, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 4
  %26 = add i32 %21, %25
  store i32 %26, i32* %13, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = sub i64 %30, 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @skb_make_writable(%struct.sk_buff* %27, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %76

36:                                               ; preds = %4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to %struct.gre_hdr*
  store %struct.gre_hdr* %44, %struct.gre_hdr** %10, align 8
  %45 = load %struct.gre_hdr*, %struct.gre_hdr** %10, align 8
  %46 = bitcast %struct.gre_hdr* %45 to %struct.gre_hdr_pptp*
  store %struct.gre_hdr_pptp* %46, %struct.gre_hdr_pptp** %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @IP_NAT_MANIP_DST, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %76

51:                                               ; preds = %36
  %52 = load %struct.gre_hdr*, %struct.gre_hdr** %10, align 8
  %53 = getelementptr inbounds %struct.gre_hdr, %struct.gre_hdr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %73 [
    i32 129, label %55
    i32 128, label %56
  ]

55:                                               ; preds = %51
  br label %75

56:                                               ; preds = %51
  %57 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %58 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %8, align 8
  %66 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.gre_hdr_pptp*, %struct.gre_hdr_pptp** %11, align 8
  %72 = getelementptr inbounds %struct.gre_hdr_pptp, %struct.gre_hdr_pptp* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %75

73:                                               ; preds = %51
  %74 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %76

75:                                               ; preds = %56, %55
  store i32 1, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %73, %50, %35
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
