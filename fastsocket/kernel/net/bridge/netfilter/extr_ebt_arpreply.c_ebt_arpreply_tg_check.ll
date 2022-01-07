; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_arpreply.c_ebt_arpreply_tg_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_arpreply.c_ebt_arpreply_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.ebt_entry*, %struct.ebt_arpreply_info* }
%struct.ebt_entry = type { i64, i32 }
%struct.ebt_arpreply_info = type { i64 }

@BASE_CHAIN = common dso_local global i64 0, align 8
@EBT_RETURN = common dso_local global i64 0, align 8
@ETH_P_ARP = common dso_local global i32 0, align 4
@EBT_IPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @ebt_arpreply_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_arpreply_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ebt_arpreply_info*, align 8
  %5 = alloca %struct.ebt_entry*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 1
  %8 = load %struct.ebt_arpreply_info*, %struct.ebt_arpreply_info** %7, align 8
  store %struct.ebt_arpreply_info* %8, %struct.ebt_arpreply_info** %4, align 8
  %9 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %9, i32 0, i32 0
  %11 = load %struct.ebt_entry*, %struct.ebt_entry** %10, align 8
  store %struct.ebt_entry* %11, %struct.ebt_entry** %5, align 8
  %12 = load i64, i64* @BASE_CHAIN, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ebt_arpreply_info*, %struct.ebt_arpreply_info** %4, align 8
  %16 = getelementptr inbounds %struct.ebt_arpreply_info, %struct.ebt_arpreply_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EBT_RETURN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %37

21:                                               ; preds = %14, %1
  %22 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %23 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @ETH_P_ARP, align 4
  %26 = call i64 @htons(i32 %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.ebt_entry*, %struct.ebt_entry** %5, align 8
  %30 = getelementptr inbounds %struct.ebt_entry, %struct.ebt_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EBT_IPROTO, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %21
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %20
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
