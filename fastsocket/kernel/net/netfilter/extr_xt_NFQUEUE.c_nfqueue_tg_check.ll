; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_NFQUEUE.c_nfqueue_tg_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_NFQUEUE.c_nfqueue_tg_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgchk_param = type { %struct.TYPE_2__*, %struct.xt_NFQ_info_v2* }
%struct.TYPE_2__ = type { i32 }
%struct.xt_NFQ_info_v2 = type { i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"NFQUEUE: number of total queues is 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"NFQUEUE: number of queues (%u) out of range (got %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_tgchk_param*)* @nfqueue_tg_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqueue_tg_check(%struct.xt_tgchk_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xt_tgchk_param*, align 8
  %4 = alloca %struct.xt_NFQ_info_v2*, align 8
  %5 = alloca i32, align 4
  store %struct.xt_tgchk_param* %0, %struct.xt_tgchk_param** %3, align 8
  %6 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %7 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %6, i32 0, i32 1
  %8 = load %struct.xt_NFQ_info_v2*, %struct.xt_NFQ_info_v2** %7, align 8
  store %struct.xt_NFQ_info_v2* %8, %struct.xt_NFQ_info_v2** %4, align 8
  %9 = load %struct.xt_NFQ_info_v2*, %struct.xt_NFQ_info_v2** %4, align 8
  %10 = getelementptr inbounds %struct.xt_NFQ_info_v2, %struct.xt_NFQ_info_v2* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.xt_NFQ_info_v2*, %struct.xt_NFQ_info_v2** %4, align 8
  %17 = getelementptr inbounds %struct.xt_NFQ_info_v2, %struct.xt_NFQ_info_v2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.xt_NFQ_info_v2*, %struct.xt_NFQ_info_v2** %4, align 8
  %21 = getelementptr inbounds %struct.xt_NFQ_info_v2, %struct.xt_NFQ_info_v2* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 65535
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = load %struct.xt_NFQ_info_v2*, %struct.xt_NFQ_info_v2** %4, align 8
  %28 = getelementptr inbounds %struct.xt_NFQ_info_v2, %struct.xt_NFQ_info_v2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  store i32 0, i32* %2, align 4
  br label %46

32:                                               ; preds = %15
  %33 = load %struct.xt_tgchk_param*, %struct.xt_tgchk_param** %3, align 8
  %34 = getelementptr inbounds %struct.xt_tgchk_param, %struct.xt_tgchk_param* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.xt_NFQ_info_v2*, %struct.xt_NFQ_info_v2** %4, align 8
  %41 = getelementptr inbounds %struct.xt_NFQ_info_v2, %struct.xt_NFQ_info_v2* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %46

45:                                               ; preds = %39, %32
  store i32 1, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %44, %26, %13
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
