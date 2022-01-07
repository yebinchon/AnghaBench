; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_reader.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcutorture.c_rcu_torture_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)*, i32 (...)*, i64, i32 (i32)*, i32 (i32*)* }
%struct.rcu_torture = type { i64, i32 }
%struct.timer_list = type { i32 }

@rand = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"rcu_torture_reader task started\00", align 1
@current = common dso_local global i32 0, align 4
@irqreader = common dso_local global i64 0, align 8
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@rcu_torture_timer = common dso_local global i32 0, align 4
@rcu_torture_current = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@n_rcu_torture_mberror = common dso_local global i32 0, align 4
@RCU_TORTURE_PIPE_LEN = common dso_local global i32 0, align 4
@rcu_torture_count = common dso_local global i32 0, align 4
@rcu_torture_batch = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"rcu_torture_reader\00", align 1
@fullstop = common dso_local global i64 0, align 8
@FULLSTOP_DONTSTOP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"rcu_torture_reader task stopping\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_torture_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_torture_reader(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcu_torture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timer_list, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @rand, align 4
  %9 = call i32 @DEFINE_RCU_RANDOM(i32 %8)
  %10 = call i32 @VERBOSE_PRINTK_STRING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @set_user_nice(i32 %11, i32 19)
  %13 = load i64, i64* @irqreader, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @rcu_torture_timer, align 4
  %22 = call i32 @setup_timer_on_stack(%struct.timer_list* %7, i32 %21, i32 0)
  br label %23

23:                                               ; preds = %20, %15, %1
  br label %24

24:                                               ; preds = %122, %23
  %25 = load i64, i64* @irqreader, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = call i32 @timer_pending(%struct.timer_list* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @mod_timer(%struct.timer_list* %7, i32 1)
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %27, %24
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (...)*, i32 (...)** %40, align 8
  %42 = call i32 (...) %41()
  store i32 %42, i32* %4, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (...)*, i32 (...)** %44, align 8
  %46 = call i32 (...) %45()
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @rcu_torture_current, align 4
  %48 = call %struct.rcu_torture* @rcu_dereference(i32 %47)
  store %struct.rcu_torture* %48, %struct.rcu_torture** %5, align 8
  %49 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %50 = icmp eq %struct.rcu_torture* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %38
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i32 (i32)*, i32 (i32)** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 %54(i32 %55)
  %57 = load i32, i32* @HZ, align 4
  %58 = call i32 @schedule_timeout_interruptible(i32 %57)
  br label %115

59:                                               ; preds = %38
  %60 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %61 = getelementptr inbounds %struct.rcu_torture, %struct.rcu_torture* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @atomic_inc(i32* @n_rcu_torture_mberror)
  br label %66

66:                                               ; preds = %64, %59
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 4
  %69 = load i32 (i32*)*, i32 (i32*)** %68, align 8
  %70 = call i32 %69(i32* @rand)
  %71 = call i32 (...) @preempt_disable()
  %72 = load %struct.rcu_torture*, %struct.rcu_torture** %5, align 8
  %73 = getelementptr inbounds %struct.rcu_torture, %struct.rcu_torture* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %78, %66
  %81 = load i32, i32* @rcu_torture_count, align 4
  %82 = call i32* @__get_cpu_var(i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32 (...)*, i32 (...)** %89, align 8
  %91 = call i32 (...) %90()
  %92 = load i32, i32* %3, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %80
  %98 = load i32, i32* @RCU_TORTURE_PIPE_LEN, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %80
  %100 = load i32, i32* @rcu_torture_batch, align 4
  %101 = call i32* @__get_cpu_var(i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = call i32 (...) @preempt_enable()
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32 (i32)*, i32 (i32)** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 %110(i32 %111)
  %113 = call i32 (...) @schedule()
  %114 = call i32 @rcu_stutter_wait(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %99, %51
  %116 = call i32 (...) @kthread_should_stop()
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load i64, i64* @fullstop, align 8
  %120 = load i64, i64* @FULLSTOP_DONTSTOP, align 8
  %121 = icmp eq i64 %119, %120
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i1 [ false, %115 ], [ %121, %118 ]
  br i1 %123, label %24, label %124

124:                                              ; preds = %122
  %125 = call i32 @VERBOSE_PRINTK_STRING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %126 = call i32 @rcutorture_shutdown_absorb(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i64, i64* @irqreader, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %124
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = call i32 @del_timer_sync(%struct.timer_list* %7)
  br label %136

136:                                              ; preds = %134, %129, %124
  br label %137

137:                                              ; preds = %141, %136
  %138 = call i32 (...) @kthread_should_stop()
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %137

143:                                              ; preds = %137
  ret i32 0
}

declare dso_local i32 @DEFINE_RCU_RANDOM(i32) #1

declare dso_local i32 @VERBOSE_PRINTK_STRING(i8*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @setup_timer_on_stack(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @timer_pending(%struct.timer_list*) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i32) #1

declare dso_local %struct.rcu_torture* @rcu_dereference(i32) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32* @__get_cpu_var(i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @rcu_stutter_wait(i8*) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @rcutorture_shutdown_absorb(i8*) #1

declare dso_local i32 @del_timer_sync(%struct.timer_list*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
