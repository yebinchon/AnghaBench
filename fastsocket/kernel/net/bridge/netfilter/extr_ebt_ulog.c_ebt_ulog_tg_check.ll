; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ulog.c_ebt_ulog_tg_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/netfilter/extr_ebt_ulog.c_ebt_ulog_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.ebt_ulog_info* }
%struct.ebt_ulog_info = type { i32, i8*, i64 }

@EBT_ULOG_PREFIX_LEN = common dso_local global i32 0, align 4
@EBT_ULOG_MAX_QLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @ebt_ulog_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_ulog_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ebt_ulog_info*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 0
  %7 = load %struct.ebt_ulog_info*, %struct.ebt_ulog_info** %6, align 8
  store %struct.ebt_ulog_info* %7, %struct.ebt_ulog_info** %4, align 8
  %8 = load %struct.ebt_ulog_info*, %struct.ebt_ulog_info** %4, align 8
  %9 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 31
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.ebt_ulog_info*, %struct.ebt_ulog_info** %4, align 8
  %15 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i32, i32* @EBT_ULOG_PREFIX_LEN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load %struct.ebt_ulog_info*, %struct.ebt_ulog_info** %4, align 8
  %22 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EBT_ULOG_MAX_QLEN, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load i64, i64* @EBT_ULOG_MAX_QLEN, align 8
  %28 = load %struct.ebt_ulog_info*, %struct.ebt_ulog_info** %4, align 8
  %29 = getelementptr inbounds %struct.ebt_ulog_info, %struct.ebt_ulog_info* %28, i32 0, i32 2
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %13
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
