; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_stp.c_ebt_stp_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_stp.c_ebt_stp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.ebt_stp_info* }
%struct.ebt_stp_info = type { i32, i64 }
%struct.stp_header = type { i64 }
%struct.stp_config_pdu = type { i64 }

@__const.ebt_stp_mt.header = private unnamed_addr constant [6 x i32] [i32 66, i32 66, i32 3, i32 0, i32 0, i32 0], align 16
@EBT_STP_TYPE = common dso_local global i32 0, align 4
@BPDU_TYPE_CONFIG = common dso_local global i64 0, align 8
@EBT_STP_CONFIG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @ebt_stp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_stp_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ebt_stp_info*, align 8
  %7 = alloca %struct.stp_header*, align 8
  %8 = alloca %struct.stp_header, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca %struct.stp_config_pdu*, align 8
  %11 = alloca %struct.stp_config_pdu, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 0
  %14 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %13, align 8
  store %struct.ebt_stp_info* %14, %struct.ebt_stp_info** %6, align 8
  %15 = bitcast [6 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([6 x i32]* @__const.ebt_stp_mt.header to i8*), i64 24, i1 false)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.stp_header* @skb_header_pointer(%struct.sk_buff* %16, i32 0, i32 8, %struct.stp_header* %8)
  store %struct.stp_header* %17, %struct.stp_header** %7, align 8
  %18 = load %struct.stp_header*, %struct.stp_header** %7, align 8
  %19 = icmp eq %struct.stp_header* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load %struct.stp_header*, %struct.stp_header** %7, align 8
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %24 = call i64 @memcmp(%struct.stp_header* %22, i32* %23, i32 24)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %74

27:                                               ; preds = %21
  %28 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %6, align 8
  %29 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EBT_STP_TYPE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %6, align 8
  %36 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.stp_header*, %struct.stp_header** %7, align 8
  %39 = getelementptr inbounds %struct.stp_header, %struct.stp_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @EBT_STP_TYPE, align 4
  %44 = call i64 @FWINV(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %74

47:                                               ; preds = %34, %27
  %48 = load %struct.stp_header*, %struct.stp_header** %7, align 8
  %49 = getelementptr inbounds %struct.stp_header, %struct.stp_header* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BPDU_TYPE_CONFIG, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %6, align 8
  %55 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EBT_STP_CONFIG_MASK, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = bitcast %struct.stp_config_pdu* %11 to %struct.stp_header*
  %63 = call %struct.stp_header* @skb_header_pointer(%struct.sk_buff* %61, i32 8, i32 8, %struct.stp_header* %62)
  %64 = bitcast %struct.stp_header* %63 to %struct.stp_config_pdu*
  store %struct.stp_config_pdu* %64, %struct.stp_config_pdu** %10, align 8
  %65 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %10, align 8
  %66 = icmp eq %struct.stp_config_pdu* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %74

68:                                               ; preds = %60
  %69 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %6, align 8
  %70 = load %struct.stp_config_pdu*, %struct.stp_config_pdu** %10, align 8
  %71 = bitcast %struct.stp_config_pdu* %70 to %struct.stp_header*
  %72 = call i32 @ebt_filter_config(%struct.ebt_stp_info* %69, %struct.stp_header* %71)
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %53, %47
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %68, %67, %46, %26, %20
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.stp_header* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.stp_header*) #2

declare dso_local i64 @memcmp(%struct.stp_header*, i32*, i32) #2

declare dso_local i64 @FWINV(i32, i32) #2

declare dso_local i32 @ebt_filter_config(%struct.ebt_stp_info*, %struct.stp_header*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
