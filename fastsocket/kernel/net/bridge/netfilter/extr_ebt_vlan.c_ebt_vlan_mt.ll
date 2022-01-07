; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_vlan.c_ebt_vlan_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_vlan.c_ebt_vlan_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.ebt_vlan_info* }
%struct.ebt_vlan_info = type { i32 }
%struct.vlan_hdr = type { i8, i32 }

@VLAN_VID_MASK = common dso_local global i16 0, align 2
@EBT_VLAN_ID = common dso_local global i32 0, align 4
@EBT_VLAN_PRIO = common dso_local global i32 0, align 4
@EBT_VLAN_ENCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ebt_vlan_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_vlan_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ebt_vlan_info*, align 8
  %7 = alloca %struct.vlan_hdr*, align 8
  %8 = alloca %struct.vlan_hdr, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %13 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %14 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %13, i32 0, i32 0
  %15 = load %struct.ebt_vlan_info*, %struct.ebt_vlan_info** %14, align 8
  store %struct.ebt_vlan_info* %15, %struct.ebt_vlan_info** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff* %16, i32 0, i32 8, %struct.vlan_hdr* %8)
  store %struct.vlan_hdr* %17, %struct.vlan_hdr** %7, align 8
  %18 = load %struct.vlan_hdr*, %struct.vlan_hdr** %7, align 8
  %19 = icmp eq %struct.vlan_hdr* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

21:                                               ; preds = %2
  %22 = load %struct.vlan_hdr*, %struct.vlan_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call zeroext i16 @ntohs(i32 %24)
  store i16 %25, i16* %9, align 2
  %26 = load i16, i16* %9, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @VLAN_VID_MASK, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %27, %29
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %10, align 2
  %32 = load i16, i16* %9, align 2
  %33 = zext i16 %32 to i32
  %34 = ashr i32 %33, 13
  %35 = and i32 %34, 7
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %11, align 1
  %37 = load %struct.vlan_hdr*, %struct.vlan_hdr** %7, align 8
  %38 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 4
  store i8 %39, i8* %12, align 1
  %40 = load i32, i32* @EBT_VLAN_ID, align 4
  %41 = call i64 @GET_BITMASK(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %21
  %44 = load i16, i16* %10, align 2
  %45 = trunc i16 %44 to i8
  %46 = load i32, i32* @EBT_VLAN_ID, align 4
  %47 = call i32 @EXIT_ON_MISMATCH(i8 zeroext %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %21
  %49 = load i32, i32* @EBT_VLAN_PRIO, align 4
  %50 = call i64 @GET_BITMASK(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8, i8* %11, align 1
  %54 = load i32, i32* @EBT_VLAN_PRIO, align 4
  %55 = call i32 @EXIT_ON_MISMATCH(i8 zeroext %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @EBT_VLAN_ENCAP, align 4
  %58 = call i64 @GET_BITMASK(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i8, i8* %12, align 1
  %62 = load i32, i32* @EBT_VLAN_ENCAP, align 4
  %63 = call i32 @EXIT_ON_MISMATCH(i8 zeroext %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %56
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.vlan_hdr*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i64 @GET_BITMASK(i32) #1

declare dso_local i32 @EXIT_ON_MISMATCH(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
