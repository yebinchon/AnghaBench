; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_NFLOG.c_nflog_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_NFLOG.c_nflog_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { i32, i32, i32, i32, %struct.xt_nflog_info* }
%struct.xt_nflog_info = type { i32, i32, i32, i32 }
%struct.nf_loginfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@NF_LOG_TYPE_ULOG = common dso_local global i32 0, align 4
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @nflog_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nflog_tg(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_target_param*, align 8
  %5 = alloca %struct.xt_nflog_info*, align 8
  %6 = alloca %struct.nf_loginfo, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %4, align 8
  %7 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %7, i32 0, i32 4
  %9 = load %struct.xt_nflog_info*, %struct.xt_nflog_info** %8, align 8
  store %struct.xt_nflog_info* %9, %struct.xt_nflog_info** %5, align 8
  %10 = load i32, i32* @NF_LOG_TYPE_ULOG, align 4
  %11 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.xt_nflog_info*, %struct.xt_nflog_info** %5, align 8
  %13 = getelementptr inbounds %struct.xt_nflog_info, %struct.xt_nflog_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 4
  %18 = load %struct.xt_nflog_info*, %struct.xt_nflog_info** %5, align 8
  %19 = getelementptr inbounds %struct.xt_nflog_info, %struct.xt_nflog_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.xt_nflog_info*, %struct.xt_nflog_info** %5, align 8
  %25 = getelementptr inbounds %struct.xt_nflog_info, %struct.xt_nflog_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %31 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %34 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %38 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %41 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xt_nflog_info*, %struct.xt_nflog_info** %5, align 8
  %44 = getelementptr inbounds %struct.xt_nflog_info, %struct.xt_nflog_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nfulnl_log_packet(i32 %32, i32 %35, %struct.sk_buff* %36, i32 %39, i32 %42, %struct.nf_loginfo* %6, i32 %45)
  %47 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %47
}

declare dso_local i32 @nfulnl_log_packet(i32, i32, %struct.sk_buff*, i32, i32, %struct.nf_loginfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
