; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_REJECT.c_reject_tg_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_REJECT.c_reject_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.ipt_entry*, %struct.ipt_reject_info* }
%struct.ipt_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ipt_reject_info = type { i64 }

@IPT_ICMP_ECHOREPLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"ipt_REJECT: ECHOREPLY no longer supported.\0A\00", align 1
@IPT_TCP_RESET = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@XT_INV_PROTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ipt_REJECT: TCP_RESET invalid for non-tcp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @reject_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reject_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ipt_reject_info*, align 8
  %5 = alloca %struct.ipt_entry*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 1
  %8 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %7, align 8
  store %struct.ipt_reject_info* %8, %struct.ipt_reject_info** %4, align 8
  %9 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %9, i32 0, i32 0
  %11 = load %struct.ipt_entry*, %struct.ipt_entry** %10, align 8
  store %struct.ipt_entry* %11, %struct.ipt_entry** %5, align 8
  %12 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %4, align 8
  %13 = getelementptr inbounds %struct.ipt_reject_info, %struct.ipt_reject_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IPT_ICMP_ECHOREPLY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

19:                                               ; preds = %1
  %20 = load %struct.ipt_reject_info*, %struct.ipt_reject_info** %4, align 8
  %21 = getelementptr inbounds %struct.ipt_reject_info, %struct.ipt_reject_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IPT_TCP_RESET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load %struct.ipt_entry*, %struct.ipt_entry** %5, align 8
  %27 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IPPROTO_TCP, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = load %struct.ipt_entry*, %struct.ipt_entry** %5, align 8
  %34 = getelementptr inbounds %struct.ipt_entry, %struct.ipt_entry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @XT_INV_PROTO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32, %25
  %41 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %19
  br label %44

44:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %40, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
