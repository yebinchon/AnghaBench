; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_log.c_ebt_log_tg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_log.c_ebt_log_tg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { i32, i32, i32, %struct.ebt_log_info* }
%struct.ebt_log_info = type { i32, i32, i32 }
%struct.nf_loginfo = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@NF_LOG_TYPE_LOG = common dso_local global i32 0, align 4
@EBT_LOG_NFLOG = common dso_local global i32 0, align 4
@NFPROTO_BRIDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EBT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @ebt_log_tg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_log_tg(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_target_param*, align 8
  %5 = alloca %struct.ebt_log_info*, align 8
  %6 = alloca %struct.nf_loginfo, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %4, align 8
  %7 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %7, i32 0, i32 3
  %9 = load %struct.ebt_log_info*, %struct.ebt_log_info** %8, align 8
  store %struct.ebt_log_info* %9, %struct.ebt_log_info** %5, align 8
  %10 = load i32, i32* @NF_LOG_TYPE_LOG, align 4
  %11 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %13 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %19 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %25 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EBT_LOG_NFLOG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %32 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %33 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %37 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %40 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %43 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nf_log_packet(i32 %31, i32 %34, %struct.sk_buff* %35, i32 %38, i32 %41, %struct.nf_loginfo* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %62

46:                                               ; preds = %2
  %47 = load i32, i32* @NFPROTO_BRIDGE, align 4
  %48 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %49 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %53 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xt_target_param*, %struct.xt_target_param** %4, align 8
  %56 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ebt_log_info*, %struct.ebt_log_info** %5, align 8
  %59 = getelementptr inbounds %struct.ebt_log_info, %struct.ebt_log_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ebt_log_packet(i32 %47, i32 %50, %struct.sk_buff* %51, i32 %54, i32 %57, %struct.nf_loginfo* %6, i32 %60)
  br label %62

62:                                               ; preds = %46, %30
  %63 = load i32, i32* @EBT_CONTINUE, align 4
  ret i32 %63
}

declare dso_local i32 @nf_log_packet(i32, i32, %struct.sk_buff*, i32, i32, %struct.nf_loginfo*, i8*, i32) #1

declare dso_local i32 @ebt_log_packet(i32, i32, %struct.sk_buff*, i32, i32, %struct.nf_loginfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
