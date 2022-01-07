; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mibif_reset_hc_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_mibif_reset_hc_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mibif_force_hc_update_interval = common dso_local global i32 0, align 4
@mibif_maxspeed = common dso_local global i64 0, align 8
@mibif_hc_update_interval = common dso_local global i32 0, align 4
@hc_update_timer = common dso_local global i32* null, align 8
@module = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"timer_start(%u): %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mibif_reset_hc_timer() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @mibif_force_hc_update_interval, align 4
  store i32 %2, i32* %1, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %29

4:                                                ; preds = %0
  %5 = load i64, i64* @mibif_maxspeed, align 8
  %6 = call i64 @IF_Mbps(i32 10)
  %7 = icmp sle i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 300000, i32* %1, align 4
  br label %28

9:                                                ; preds = %4
  %10 = load i64, i64* @mibif_maxspeed, align 8
  %11 = call i64 @IF_Mbps(i32 100)
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 30000, i32* %1, align 4
  br label %27

14:                                               ; preds = %9
  %15 = load i64, i64* @mibif_maxspeed, align 8
  %16 = call i64 @IF_Mbps(i32 622)
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 4000, i32* %1, align 4
  br label %26

19:                                               ; preds = %14
  %20 = load i64, i64* @mibif_maxspeed, align 8
  %21 = call i64 @IF_Mbps(i32 1000)
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 2000, i32* %1, align 4
  br label %25

24:                                               ; preds = %19
  store i32 100, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %23
  br label %26

26:                                               ; preds = %25, %18
  br label %27

27:                                               ; preds = %26, %13
  br label %28

28:                                               ; preds = %27, %8
  br label %29

29:                                               ; preds = %28, %0
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @mibif_hc_update_interval, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %53

34:                                               ; preds = %29
  %35 = load i32*, i32** @hc_update_timer, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** @hc_update_timer, align 8
  %39 = call i32 @timer_stop(i32* %38)
  store i32* null, i32** @hc_update_timer, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = call i32 @update_hc_counters(i32* null)
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @module, align 4
  %45 = call i32* @timer_start_repeat(i32 %42, i32 %43, i32 (i32*)* @update_hc_counters, i32* null, i32 %44)
  store i32* %45, i32** @hc_update_timer, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @LOG_ERR, align 4
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @syslog(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %1, align 4
  store i32 %52, i32* @mibif_hc_update_interval, align 4
  br label %53

53:                                               ; preds = %51, %47, %33
  ret void
}

declare dso_local i64 @IF_Mbps(i32) #1

declare dso_local i32 @timer_stop(i32*) #1

declare dso_local i32 @update_hc_counters(i32*) #1

declare dso_local i32* @timer_start_repeat(i32, i32, i32 (i32*)*, i32*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
