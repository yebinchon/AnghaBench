; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_de_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_de_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.task_struct = type { i64, %struct.sighand_struct*, i32, %struct.task_struct*, i32, i32, i32, %struct.signal_struct* }
%struct.sighand_struct = type { i32, i32, i32 }
%struct.signal_struct = type { i32, i32, %struct.task_struct*, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4
@PIDTYPE_SID = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i64 0, align 8
@EXIT_DEAD = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@sighand_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @de_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_thread(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.signal_struct*, align 8
  %5 = alloca %struct.sighand_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.sighand_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 7
  %12 = load %struct.signal_struct*, %struct.signal_struct** %11, align 8
  store %struct.signal_struct* %12, %struct.signal_struct** %4, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 1
  %15 = load %struct.sighand_struct*, %struct.sighand_struct** %14, align 8
  store %struct.sighand_struct* %15, %struct.sighand_struct** %5, align 8
  %16 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %17 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %16, i32 0, i32 0
  store i32* %17, i32** %6, align 8
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = call i64 @thread_group_empty(%struct.task_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %155

22:                                               ; preds = %1
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %26 = call i64 @signal_group_exit(%struct.signal_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @spin_unlock_irq(i32* %29)
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %217

33:                                               ; preds = %22
  %34 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %35 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %36 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %35, i32 0, i32 2
  store %struct.task_struct* %34, %struct.task_struct** %36, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = call i32 @zap_other_threads(%struct.task_struct* %37)
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = call i64 @thread_group_leader(%struct.task_struct* %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 2
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %46 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %53, %33
  %48 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %49 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %48, i32 0, i32 3
  %50 = call i32 @atomic_read(i32* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %55 = call i32 @__set_current_state(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @spin_unlock_irq(i32* %56)
  %58 = call i32 (...) @schedule()
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @spin_lock_irq(i32* %59)
  br label %47

61:                                               ; preds = %47
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @spin_unlock_irq(i32* %62)
  %64 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %65 = call i64 @thread_group_leader(%struct.task_struct* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %150, label %67

67:                                               ; preds = %61
  %68 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 3
  %70 = load %struct.task_struct*, %struct.task_struct** %69, align 8
  store %struct.task_struct* %70, %struct.task_struct** %8, align 8
  %71 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %72 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  br label %73

73:                                               ; preds = %81, %67
  %74 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %75 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %76 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @likely(i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %86

81:                                               ; preds = %73
  %82 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %83 = call i32 @__set_current_state(i32 %82)
  %84 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %85 = call i32 (...) @schedule()
  br label %73

86:                                               ; preds = %80
  %87 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %88 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %91 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %93 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %94 = call i32 @same_thread_group(%struct.task_struct* %92, %struct.task_struct* %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @BUG_ON(i32 %97)
  %99 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %100 = call i32 @has_group_leader_pid(%struct.task_struct* %99)
  %101 = call i32 @BUG_ON(i32 %100)
  %102 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %103 = load i32, i32* @PIDTYPE_PID, align 4
  %104 = call i32 @detach_pid(%struct.task_struct* %102, i32 %103)
  %105 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %106 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %109 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %111 = load i32, i32* @PIDTYPE_PID, align 4
  %112 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %113 = call i32 @task_pid(%struct.task_struct* %112)
  %114 = call i32 @attach_pid(%struct.task_struct* %110, i32 %111, i32 %113)
  %115 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %116 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %117 = load i32, i32* @PIDTYPE_PGID, align 4
  %118 = call i32 @transfer_pid(%struct.task_struct* %115, %struct.task_struct* %116, i32 %117)
  %119 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %120 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %121 = load i32, i32* @PIDTYPE_SID, align 4
  %122 = call i32 @transfer_pid(%struct.task_struct* %119, %struct.task_struct* %120, i32 %121)
  %123 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %124 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %123, i32 0, i32 4
  %125 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %126 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %125, i32 0, i32 4
  %127 = call i32 @list_replace_rcu(i32* %124, i32* %126)
  %128 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %129 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %130 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %129, i32 0, i32 3
  store %struct.task_struct* %128, %struct.task_struct** %130, align 8
  %131 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %132 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %133 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %132, i32 0, i32 3
  store %struct.task_struct* %131, %struct.task_struct** %133, align 8
  %134 = load i32, i32* @SIGCHLD, align 4
  %135 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %136 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %138 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @EXIT_ZOMBIE, align 8
  %141 = icmp ne i64 %139, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @BUG_ON(i32 %142)
  %144 = load i64, i64* @EXIT_DEAD, align 8
  %145 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %146 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %148 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %149 = call i32 @release_task(%struct.task_struct* %148)
  br label %150

150:                                              ; preds = %86, %61
  %151 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %152 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %151, i32 0, i32 2
  store %struct.task_struct* null, %struct.task_struct** %152, align 8
  %153 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %154 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %153, i32 0, i32 0
  store i32 0, i32* %154, align 8
  br label %155

155:                                              ; preds = %150, %21
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %155
  %161 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %162 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %161, i32 0, i32 1
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @setmax_mm_hiwater_rss(i32* %162, i64 %165)
  br label %167

167:                                              ; preds = %160, %155
  %168 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %169 = call i32 @exit_itimers(%struct.signal_struct* %168)
  %170 = call i32 (...) @flush_itimer_signals()
  %171 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %172 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %171, i32 0, i32 2
  %173 = call i32 @atomic_read(i32* %172)
  %174 = icmp ne i32 %173, 1
  br i1 %174, label %175, label %210

175:                                              ; preds = %167
  %176 = load i32, i32* @sighand_cachep, align 4
  %177 = load i32, i32* @GFP_KERNEL, align 4
  %178 = call %struct.sighand_struct* @kmem_cache_alloc(i32 %176, i32 %177)
  store %struct.sighand_struct* %178, %struct.sighand_struct** %9, align 8
  %179 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %180 = icmp ne %struct.sighand_struct* %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %2, align 4
  br label %217

184:                                              ; preds = %175
  %185 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %186 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %185, i32 0, i32 2
  %187 = call i32 @atomic_set(i32* %186, i32 1)
  %188 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %189 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %192 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @memcpy(i32 %190, i32 %193, i32 4)
  %195 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %196 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %197 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %196, i32 0, i32 0
  %198 = call i32 @spin_lock(i32* %197)
  %199 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %200 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %199, i32 0, i32 1
  %201 = load %struct.sighand_struct*, %struct.sighand_struct** %200, align 8
  %202 = load %struct.sighand_struct*, %struct.sighand_struct** %9, align 8
  %203 = call i32 @rcu_assign_pointer(%struct.sighand_struct* %201, %struct.sighand_struct* %202)
  %204 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %205 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %204, i32 0, i32 0
  %206 = call i32 @spin_unlock(i32* %205)
  %207 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %208 = load %struct.sighand_struct*, %struct.sighand_struct** %5, align 8
  %209 = call i32 @__cleanup_sighand(%struct.sighand_struct* %208)
  br label %210

210:                                              ; preds = %184, %167
  %211 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %212 = call i64 @thread_group_leader(%struct.task_struct* %211)
  %213 = icmp ne i64 %212, 0
  %214 = xor i1 %213, true
  %215 = zext i1 %214 to i32
  %216 = call i32 @BUG_ON(i32 %215)
  store i32 0, i32* %2, align 4
  br label %217

217:                                              ; preds = %210, %181, %28
  %218 = load i32, i32* %2, align 4
  ret i32 %218
}

declare dso_local i64 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @signal_group_exit(%struct.signal_struct*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @zap_other_threads(%struct.task_struct*) #1

declare dso_local i64 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @same_thread_group(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @has_group_leader_pid(%struct.task_struct*) #1

declare dso_local i32 @detach_pid(%struct.task_struct*, i32) #1

declare dso_local i32 @attach_pid(%struct.task_struct*, i32, i32) #1

declare dso_local i32 @task_pid(%struct.task_struct*) #1

declare dso_local i32 @transfer_pid(%struct.task_struct*, %struct.task_struct*, i32) #1

declare dso_local i32 @list_replace_rcu(i32*, i32*) #1

declare dso_local i32 @release_task(%struct.task_struct*) #1

declare dso_local i32 @setmax_mm_hiwater_rss(i32*, i64) #1

declare dso_local i32 @exit_itimers(%struct.signal_struct*) #1

declare dso_local i32 @flush_itimer_signals(...) #1

declare dso_local %struct.sighand_struct* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.sighand_struct*, %struct.sighand_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__cleanup_sighand(%struct.sighand_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
