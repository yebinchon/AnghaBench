; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TCPMSS.c_tcpmss_tg4_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TCPMSS.c_tcpmss_tg4_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { i32, %struct.ipt_entry*, %struct.xt_tcpmss_info* }
%struct.ipt_entry = type { i32 }
%struct.xt_tcpmss_info = type { i64 }

@XT_TCPMSS_CLAMP_PMTU = common dso_local global i64 0, align 8
@NF_INET_FORWARD = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"xt_TCPMSS: path-MTU clamping only supported in FORWARD, OUTPUT and POSTROUTING hooks\0A\00", align 1
@find_syn_match = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"xt_TCPMSS: Only works on TCP SYN packets\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @tcpmss_tg4_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpmss_tg4_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_tcpmss_info*, align 8
  %5 = alloca %struct.ipt_entry*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 2
  %8 = load %struct.xt_tcpmss_info*, %struct.xt_tcpmss_info** %7, align 8
  store %struct.xt_tcpmss_info* %8, %struct.xt_tcpmss_info** %4, align 8
  %9 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %10 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %9, i32 0, i32 1
  %11 = load %struct.ipt_entry*, %struct.ipt_entry** %10, align 8
  store %struct.ipt_entry* %11, %struct.ipt_entry** %5, align 8
  %12 = load %struct.xt_tcpmss_info*, %struct.xt_tcpmss_info** %4, align 8
  %13 = getelementptr inbounds %struct.xt_tcpmss_info, %struct.xt_tcpmss_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XT_TCPMSS_CLAMP_PMTU, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %19 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NF_INET_FORWARD, align 4
  %22 = shl i32 1, %21
  %23 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %20, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = call i32 @printk(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

34:                                               ; preds = %17, %1
  %35 = load %struct.ipt_entry*, %struct.ipt_entry** %5, align 8
  %36 = load i32, i32* @find_syn_match, align 4
  %37 = call i64 @IPT_MATCH_ITERATE(%struct.ipt_entry* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %42

40:                                               ; preds = %34
  %41 = call i32 @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %39, %32
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i64 @IPT_MATCH_ITERATE(%struct.ipt_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
