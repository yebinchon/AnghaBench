; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_stp.c_ebt_stp_mt_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_stp.c_ebt_stp_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ebt_entry*, %struct.ebt_stp_info* }
%struct.ebt_entry = type { i32, i32, i32 }
%struct.ebt_stp_info = type { i32, i32 }

@__const.ebt_stp_mt_check.bridge_ula = private unnamed_addr constant [6 x i32] [i32 1, i32 128, i32 194, i32 0, i32 0, i32 0], align 16
@__const.ebt_stp_mt_check.msk = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@EBT_STP_MASK = common dso_local global i32 0, align 4
@EBT_DESTMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @ebt_stp_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_stp_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ebt_stp_info*, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca [6 x i32], align 16
  %7 = alloca %struct.ebt_entry*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %8 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %9 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %8, i32 0, i32 1
  %10 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %9, align 8
  store %struct.ebt_stp_info* %10, %struct.ebt_stp_info** %4, align 8
  %11 = bitcast [6 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([6 x i32]* @__const.ebt_stp_mt_check.bridge_ula to i8*), i64 24, i1 false)
  %12 = bitcast [6 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([6 x i32]* @__const.ebt_stp_mt_check.msk to i8*), i64 24, i1 false)
  %13 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %14 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %13, i32 0, i32 0
  %15 = load %struct.ebt_entry*, %struct.ebt_entry** %14, align 8
  store %struct.ebt_entry* %15, %struct.ebt_entry** %7, align 8
  %16 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %17 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EBT_STP_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %1
  %24 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %25 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EBT_STP_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load %struct.ebt_stp_info*, %struct.ebt_stp_info** %4, align 8
  %33 = getelementptr inbounds %struct.ebt_stp_info, %struct.ebt_stp_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EBT_STP_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31, %23, %1
  store i32 0, i32* %2, align 4
  br label %62

39:                                               ; preds = %31
  %40 = load %struct.ebt_entry*, %struct.ebt_entry** %7, align 8
  %41 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %44 = call i64 @compare_ether_addr(i32 %42, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %39
  %47 = load %struct.ebt_entry*, %struct.ebt_entry** %7, align 8
  %48 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %51 = call i64 @compare_ether_addr(i32 %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.ebt_entry*, %struct.ebt_entry** %7, align 8
  %55 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @EBT_DESTMAC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53, %46, %39
  store i32 0, i32* %2, align 4
  br label %62

61:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60, %38
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @compare_ether_addr(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
