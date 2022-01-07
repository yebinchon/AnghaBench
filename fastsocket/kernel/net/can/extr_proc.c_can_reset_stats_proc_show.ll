; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_proc.c_can_reset_stats_proc_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_proc.c_can_reset_stats_proc_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.seq_file = type { i32 }

@user_reset = common dso_local global i32 0, align 4
@can_stattimer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@can_stat_update = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Scheduled statistic reset #%ld.\0A\00", align 1
@can_pstats = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@can_stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Performed statistic reset #%ld.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @can_reset_stats_proc_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_reset_stats_proc_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* @user_reset, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @can_stattimer, i32 0, i32 0), align 8
  %6 = load i64, i64* @can_stat_update, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @can_pstats, i32 0, i32 0), align 8
  %11 = add nsw i64 %10, 1
  %12 = call i32 @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %11)
  br label %23

13:                                               ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @can_stats, i32 0, i32 0), align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (...) @can_init_stats()
  br label %19

19:                                               ; preds = %17, %13
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @can_pstats, i32 0, i32 0), align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  br label %23

23:                                               ; preds = %19, %8
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @can_init_stats(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
