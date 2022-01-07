; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_LOG.c_log_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_LOG.c_log_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { i32, i32, i32, %struct.ipt_log_info* }
%struct.ipt_log_info = type { i32, i32, i32 }
%struct.nf_loginfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@NF_LOG_TYPE_LOG = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @log_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_tg(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_target_param*, align 8
  %5 = alloca %struct.ipt_log_info*, align 8
  %6 = alloca %struct.nf_loginfo, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %4, align 8
  %7 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %7, i32 0, i32 3
  %9 = load %struct.ipt_log_info*, %struct.ipt_log_info** %8, align 8
  store %struct.ipt_log_info* %9, %struct.ipt_log_info** %5, align 8
  %10 = load i32, i32* @NF_LOG_TYPE_LOG, align 4
  %11 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.ipt_log_info*, %struct.ipt_log_info** %5, align 8
  %13 = getelementptr inbounds %struct.ipt_log_info, %struct.ipt_log_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.ipt_log_info*, %struct.ipt_log_info** %5, align 8
  %19 = getelementptr inbounds %struct.ipt_log_info, %struct.ipt_log_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* @NFPROTO_IPV4, align 4
  %25 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %26 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %29 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %30 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %33 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ipt_log_info*, %struct.ipt_log_info** %5, align 8
  %36 = getelementptr inbounds %struct.ipt_log_info, %struct.ipt_log_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ipt_log_packet(i32 %24, i32 %27, %struct.sk_buff* %28, i32 %31, i32 %34, %struct.nf_loginfo* %6, i32 %37)
  %39 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %39
}

declare dso_local i32 @ipt_log_packet(i32, i32, %struct.sk_buff*, i32, i32, %struct.nf_loginfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
