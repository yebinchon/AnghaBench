; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_fakewriter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_fakewriter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@rand = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"rcu_torture_fakewriter task started\00", align 1
@current = common dso_local global i32 0, align 4
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"rcu_torture_fakewriter\00", align 1
@fullstop = common dso_local global i64 0, align 8
@FULLSTOP_DONTSTOP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"rcu_torture_fakewriter task stopping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_torture_fakewriter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_torture_fakewriter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @rand, align 4
  %4 = call i32 @DEFINE_RCU_RANDOM(i32 %3)
  %5 = call i32 @VERBOSE_PRINTK_STRING(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @current, align 4
  %7 = call i32 @set_user_nice(i32 %6, i32 19)
  br label %8

8:                                                ; preds = %28, %1
  %9 = call i32 @rcu_random(i32* @rand)
  %10 = srem i32 %9, 10
  %11 = add nsw i32 1, %10
  %12 = call i32 @schedule_timeout_uninterruptible(i32 %11)
  %13 = call i32 @rcu_random(i32* @rand)
  %14 = and i32 %13, 1023
  %15 = call i32 @udelay(i32 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = call i32 (...) %18()
  %20 = call i32 @rcu_stutter_wait(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %8
  %22 = call i32 (...) @kthread_should_stop()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @fullstop, align 8
  %26 = load i64, i64* @FULLSTOP_DONTSTOP, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %8, label %30

30:                                               ; preds = %28
  %31 = call i32 @VERBOSE_PRINTK_STRING(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @rcutorture_shutdown_absorb(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %37, %30
  %34 = call i32 (...) @kthread_should_stop()
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %33

39:                                               ; preds = %33
  ret i32 0
}

declare dso_local i32 @DEFINE_RCU_RANDOM(i32) #1

declare dso_local i32 @VERBOSE_PRINTK_STRING(i8*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @rcu_random(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rcu_stutter_wait(i8*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @rcutorture_shutdown_absorb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
