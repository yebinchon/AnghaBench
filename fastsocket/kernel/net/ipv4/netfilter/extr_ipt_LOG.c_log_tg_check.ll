; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_LOG.c_log_tg_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_LOG.c_log_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.ipt_log_info* }
%struct.ipt_log_info = type { i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"LOG: level %u >= 8\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"LOG: prefix term %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @log_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.ipt_log_info*, align 8
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %5 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %6 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %5, i32 0, i32 0
  %7 = load %struct.ipt_log_info*, %struct.ipt_log_info** %6, align 8
  store %struct.ipt_log_info* %7, %struct.ipt_log_info** %4, align 8
  %8 = load %struct.ipt_log_info*, %struct.ipt_log_info** %4, align 8
  %9 = getelementptr inbounds %struct.ipt_log_info, %struct.ipt_log_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sge i32 %10, 8
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.ipt_log_info*, %struct.ipt_log_info** %4, align 8
  %14 = getelementptr inbounds %struct.ipt_log_info, %struct.ipt_log_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %2, align 4
  br label %34

17:                                               ; preds = %1
  %18 = load %struct.ipt_log_info*, %struct.ipt_log_info** %4, align 8
  %19 = getelementptr inbounds %struct.ipt_log_info, %struct.ipt_log_info* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 7
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.ipt_log_info*, %struct.ipt_log_info** %4, align 8
  %27 = getelementptr inbounds %struct.ipt_log_info, %struct.ipt_log_info* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 0, i32* %2, align 4
  br label %34

33:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %25, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
