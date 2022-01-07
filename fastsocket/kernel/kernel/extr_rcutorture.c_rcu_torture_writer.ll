; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_writer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_torture = type { i32, i32 }
%struct.TYPE_2__ = type { i64 (...)*, i32 (%struct.rcu_torture*)* }

@rcu_torture_writer.rand = internal global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"rcu_torture_writer task started\00", align 1
@current = common dso_local global i32 0, align 4
@rcu_torture_current = common dso_local global %struct.rcu_torture* null, align 8
@RCU_TORTURE_PIPE_LEN = common dso_local global i32 0, align 4
@rcu_torture_wcount = common dso_local global i32* null, align 8
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@rcu_torture_current_version = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"rcu_torture_writer\00", align 1
@fullstop = common dso_local global i64 0, align 8
@FULLSTOP_DONTSTOP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"rcu_torture_writer task stopping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_torture_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_torture_writer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.rcu_torture*, align 8
  %6 = alloca %struct.rcu_torture*, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i64 (...) @rcu_batches_completed()
  store i64 %7, i64* %4, align 8
  %8 = call i32 @VERBOSE_PRINTK_STRING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @current, align 4
  %10 = call i32 @set_user_nice(i32 %9, i32 19)
  br label %11

11:                                               ; preds = %71, %1
  %12 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %13 = call %struct.rcu_torture* (...) @rcu_torture_alloc()
  store %struct.rcu_torture* %13, %struct.rcu_torture** %5, align 8
  %14 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %15 = icmp eq %struct.rcu_torture* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %64

17:                                               ; preds = %11
  %18 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %19 = getelementptr inbounds %struct.rcu_torture, %struct.rcu_torture* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = call i32 @rcu_random(i32* @rcu_torture_writer.rand)
  %21 = and i32 %20, 1023
  %22 = call i32 @udelay(i32 %21)
  %23 = load %struct.rcu_torture*, %struct.rcu_torture** @rcu_torture_current, align 8
  store %struct.rcu_torture* %23, %struct.rcu_torture** %6, align 8
  %24 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %25 = getelementptr inbounds %struct.rcu_torture, %struct.rcu_torture* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = load %struct.rcu_torture*, %struct.rcu_torture** @rcu_torture_current, align 8
  %27 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %28 = call i32 @rcu_assign_pointer(%struct.rcu_torture* %26, %struct.rcu_torture* %27)
  %29 = call i32 (...) @smp_wmb()
  %30 = load %struct.rcu_torture*, %struct.rcu_torture** %6, align 8
  %31 = icmp ne %struct.rcu_torture* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %17
  %33 = load %struct.rcu_torture*, %struct.rcu_torture** %6, align 8
  %34 = getelementptr inbounds %struct.rcu_torture, %struct.rcu_torture* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32*, i32** @rcu_torture_wcount, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @atomic_inc(i32* %45)
  %47 = load %struct.rcu_torture*, %struct.rcu_torture** %6, align 8
  %48 = getelementptr inbounds %struct.rcu_torture, %struct.rcu_torture* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32 (%struct.rcu_torture*)*, i32 (%struct.rcu_torture*)** %52, align 8
  %54 = load %struct.rcu_torture*, %struct.rcu_torture** %6, align 8
  %55 = call i32 %53(%struct.rcu_torture* %54)
  br label %56

56:                                               ; preds = %41, %17
  %57 = load i32, i32* @rcu_torture_current_version, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @rcu_torture_current_version, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64 (...)*, i64 (...)** %60, align 8
  %62 = call i64 (...) %61()
  store i64 %62, i64* %4, align 8
  %63 = call i32 @rcu_stutter_wait(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %56, %16
  %65 = call i32 (...) @kthread_should_stop()
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @fullstop, align 8
  %69 = load i64, i64* @FULLSTOP_DONTSTOP, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ false, %64 ], [ %70, %67 ]
  br i1 %72, label %11, label %73

73:                                               ; preds = %71
  %74 = call i32 @VERBOSE_PRINTK_STRING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 @rcutorture_shutdown_absorb(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %80, %73
  %77 = call i32 (...) @kthread_should_stop()
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %76

82:                                               ; preds = %76
  ret i32 0
}

declare dso_local i64 @rcu_batches_completed(...) #1

declare dso_local i32 @VERBOSE_PRINTK_STRING(i8*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local %struct.rcu_torture* @rcu_torture_alloc(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rcu_random(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.rcu_torture*, %struct.rcu_torture*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_stutter_wait(i8*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @rcutorture_shutdown_absorb(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
