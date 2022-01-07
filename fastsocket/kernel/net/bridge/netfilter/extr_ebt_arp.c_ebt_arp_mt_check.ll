; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_arp.c_ebt_arp_mt_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_arp.c_ebt_arp_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.ebt_entry*, %struct.ebt_arp_info* }
%struct.ebt_entry = type { i64, i32 }
%struct.ebt_arp_info = type { i32, i32 }

@ETH_P_ARP = common dso_local global i32 0, align 4
@ETH_P_RARP = common dso_local global i32 0, align 4
@EBT_IPROTO = common dso_local global i32 0, align 4
@EBT_ARP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @ebt_arp_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_arp_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_mtchk_param*, align 8
  %4 = alloca %struct.ebt_arp_info*, align 8
  %5 = alloca %struct.ebt_entry*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %3, align 8
  %6 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %6, i32 0, i32 1
  %8 = load %struct.ebt_arp_info*, %struct.ebt_arp_info** %7, align 8
  store %struct.ebt_arp_info* %8, %struct.ebt_arp_info** %4, align 8
  %9 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_entry*, %struct.ebt_entry** %10, align 8
  store %struct.ebt_entry* %11, %struct.ebt_entry** %5, align 8
  %12 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %13 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_ARP, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp ne i64 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @ETH_P_RARP, align 4
  %23 = call i64 @htons(i32 %22)
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %27 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EBT_IPROTO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %18
  store i32 0, i32* %2, align 4
  br label %51

33:                                               ; preds = %25
  %34 = load %struct.ebt_arp_info*, %struct.ebt_arp_info** %4, align 8
  %35 = getelementptr inbounds %struct.ebt_arp_info, %struct.ebt_arp_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @EBT_ARP_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.ebt_arp_info*, %struct.ebt_arp_info** %4, align 8
  %43 = getelementptr inbounds %struct.ebt_arp_info, %struct.ebt_arp_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EBT_ARP_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %33
  store i32 0, i32* %2, align 4
  br label %51

50:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49, %32
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
