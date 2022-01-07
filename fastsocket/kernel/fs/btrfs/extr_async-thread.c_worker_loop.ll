; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_worker_loop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_async-thread.c_worker_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_worker_thread = type { i64, i32, i32, i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.btrfs_work = type { i32 (%struct.btrfs_work*)*, %struct.btrfs_worker_thread*, i32, i32 }

@WORK_QUEUED_BIT = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_loop(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.btrfs_worker_thread*, align 8
  %5 = alloca %struct.list_head, align 4
  %6 = alloca %struct.list_head, align 4
  %7 = alloca %struct.btrfs_work*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.btrfs_worker_thread*
  store %struct.btrfs_worker_thread* %9, %struct.btrfs_worker_thread** %4, align 8
  %10 = call i32 @INIT_LIST_HEAD(%struct.list_head* %5)
  %11 = call i32 @INIT_LIST_HEAD(%struct.list_head* %6)
  br label %12

12:                                               ; preds = %147, %1
  br label %13

13:                                               ; preds = %114, %12
  br label %14

14:                                               ; preds = %13, %20
  %15 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %16 = call %struct.btrfs_work* @get_next_work(%struct.btrfs_worker_thread* %15, %struct.list_head* %6, %struct.list_head* %5)
  store %struct.btrfs_work* %16, %struct.btrfs_work** %7, align 8
  %17 = load %struct.btrfs_work*, %struct.btrfs_work** %7, align 8
  %18 = icmp ne %struct.btrfs_work* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %47

20:                                               ; preds = %14
  %21 = load %struct.btrfs_work*, %struct.btrfs_work** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %21, i32 0, i32 3
  %23 = call i32 @list_del(i32* %22)
  %24 = load i32, i32* @WORK_QUEUED_BIT, align 4
  %25 = load %struct.btrfs_work*, %struct.btrfs_work** %7, align 8
  %26 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %25, i32 0, i32 2
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  %28 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %29 = load %struct.btrfs_work*, %struct.btrfs_work** %7, align 8
  %30 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %29, i32 0, i32 1
  store %struct.btrfs_worker_thread* %28, %struct.btrfs_worker_thread** %30, align 8
  %31 = load %struct.btrfs_work*, %struct.btrfs_work** %7, align 8
  %32 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %31, i32 0, i32 0
  %33 = load i32 (%struct.btrfs_work*)*, i32 (%struct.btrfs_work*)** %32, align 8
  %34 = load %struct.btrfs_work*, %struct.btrfs_work** %7, align 8
  %35 = call i32 %33(%struct.btrfs_work* %34)
  %36 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %37 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %36, i32 0, i32 5
  %38 = call i32 @atomic_dec(i32* %37)
  %39 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %40 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.btrfs_work*, %struct.btrfs_work** %7, align 8
  %43 = call i32 @run_ordered_completions(i32 %41, %struct.btrfs_work* %42)
  %44 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %45 = call i32 @check_pending_worker_creates(%struct.btrfs_worker_thread* %44)
  %46 = call i32 (...) @cond_resched()
  br label %14

47:                                               ; preds = %19
  %48 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %49 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %48, i32 0, i32 1
  %50 = call i32 @spin_lock_irq(i32* %49)
  %51 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %52 = call i32 @check_idle_worker(%struct.btrfs_worker_thread* %51)
  %53 = load i32, i32* @current, align 4
  %54 = call i64 @freezing(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %47
  %57 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %58 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %60 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %59, i32 0, i32 1
  %61 = call i32 @spin_unlock_irq(i32* %60)
  %62 = call i32 (...) @try_to_freeze()
  br label %146

63:                                               ; preds = %47
  %64 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %65 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = call i64 (...) @kthread_should_stop()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %143, label %69

69:                                               ; preds = %63
  %70 = call i32 (...) @cpu_relax()
  %71 = call i32 (...) @smp_mb()
  %72 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %73 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %72, i32 0, i32 3
  %74 = call i32 @list_empty(i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %78 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %77, i32 0, i32 2
  %79 = call i32 @list_empty(i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76, %69
  br label %147

82:                                               ; preds = %76
  %83 = call i32 @schedule_timeout(i32 1)
  %84 = call i32 (...) @smp_mb()
  %85 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %86 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %85, i32 0, i32 3
  %87 = call i32 @list_empty(i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %91 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %90, i32 0, i32 2
  %92 = call i32 @list_empty(i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89, %82
  br label %147

95:                                               ; preds = %89
  %96 = call i64 (...) @kthread_should_stop()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %151

99:                                               ; preds = %95
  %100 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %101 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %100, i32 0, i32 1
  %102 = call i32 @spin_lock_irq(i32* %101)
  %103 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %104 = call i32 @set_current_state(i32 %103)
  %105 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %106 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %105, i32 0, i32 3
  %107 = call i32 @list_empty(i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %99
  %110 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %111 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %110, i32 0, i32 2
  %112 = call i32 @list_empty(i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109, %99
  %115 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %116 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %115, i32 0, i32 1
  %117 = call i32 @spin_unlock_irq(i32* %116)
  %118 = load i32, i32* @TASK_RUNNING, align 4
  %119 = call i32 @set_current_state(i32 %118)
  br label %13

120:                                              ; preds = %109
  %121 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %122 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %124 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %123, i32 0, i32 1
  %125 = call i32 @spin_unlock_irq(i32* %124)
  %126 = call i64 (...) @kthread_should_stop()
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* @HZ, align 4
  %130 = mul nsw i32 %129, 120
  %131 = call i32 @schedule_timeout(i32 %130)
  %132 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %133 = getelementptr inbounds %struct.btrfs_worker_thread, %struct.btrfs_worker_thread* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %128
  %137 = load %struct.btrfs_worker_thread*, %struct.btrfs_worker_thread** %4, align 8
  %138 = call i64 @try_worker_shutdown(%struct.btrfs_worker_thread* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %152

141:                                              ; preds = %136, %128
  br label %142

142:                                              ; preds = %141, %120
  br label %143

143:                                              ; preds = %142, %63
  %144 = load i32, i32* @TASK_RUNNING, align 4
  %145 = call i32 @__set_current_state(i32 %144)
  br label %146

146:                                              ; preds = %143, %56
  br label %147

147:                                              ; preds = %146, %94, %81
  %148 = call i64 (...) @kthread_should_stop()
  %149 = icmp ne i64 %148, 0
  %150 = xor i1 %149, true
  br i1 %150, label %12, label %151

151:                                              ; preds = %147, %98
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %140
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.btrfs_work* @get_next_work(%struct.btrfs_worker_thread*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @run_ordered_completions(i32, %struct.btrfs_work*) #1

declare dso_local i32 @check_pending_worker_creates(%struct.btrfs_worker_thread*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @check_idle_worker(%struct.btrfs_worker_thread*) #1

declare dso_local i64 @freezing(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @try_worker_shutdown(%struct.btrfs_worker_thread*) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
