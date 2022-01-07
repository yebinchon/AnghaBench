; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c___exit_signal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c___exit_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32*, %struct.signal_struct*, i32, %struct.TYPE_2__, i32, i64, i64, i64, i64, i32, i32, i32 }
%struct.signal_struct = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, %struct.task_struct*, i64, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.sighand_struct = type { i32 }

@TIF_SIGPENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*)* @__exit_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__exit_signal(%struct.task_struct* %0) #0 {
  %2 = alloca %struct.task_struct*, align 8
  %3 = alloca %struct.signal_struct*, align 8
  %4 = alloca %struct.sighand_struct*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %2, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %6 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %5, i32 0, i32 1
  %7 = load %struct.signal_struct*, %struct.signal_struct** %6, align 8
  store %struct.signal_struct* %7, %struct.signal_struct** %3, align 8
  %8 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %9 = icmp ne %struct.signal_struct* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %14 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %13, i32 0, i32 15
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.sighand_struct* @rcu_dereference(i32* %22)
  store %struct.sighand_struct* %23, %struct.sighand_struct** %4, align 8
  %24 = load %struct.sighand_struct*, %struct.sighand_struct** %4, align 8
  %25 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %28 = call i32 @posix_cpu_timers_exit(%struct.task_struct* %27)
  %29 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %30 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %29, i32 0, i32 15
  %31 = call i64 @atomic_dec_and_test(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %35 = call i32 @posix_cpu_timers_exit_group(%struct.task_struct* %34)
  br label %168

36:                                               ; preds = %1
  %37 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %38 = call i32 @has_group_leader_pid(%struct.task_struct* %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %43 = call i32 @posix_cpu_timers_exit_group(%struct.task_struct* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %46 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %45, i32 0, i32 14
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %51 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %50, i32 0, i32 15
  %52 = call i64 @atomic_read(i32* %51)
  %53 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %54 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %59 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %58, i32 0, i32 14
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @wake_up_process(i64 %60)
  br label %62

62:                                               ; preds = %57, %49, %44
  %63 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %64 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %65 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %64, i32 0, i32 13
  %66 = load %struct.task_struct*, %struct.task_struct** %65, align 8
  %67 = icmp eq %struct.task_struct* %63, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %70 = call %struct.task_struct* @next_thread(%struct.task_struct* %69)
  %71 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %72 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %71, i32 0, i32 13
  store %struct.task_struct* %70, %struct.task_struct** %72, align 8
  br label %73

73:                                               ; preds = %68, %62
  %74 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %75 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %74, i32 0, i32 12
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %78 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 8
  %80 = call i8* @cputime_add(i8* %76, i32 %79)
  %81 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %82 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %81, i32 0, i32 12
  store i8* %80, i8** %82, align 8
  %83 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %84 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %83, i32 0, i32 11
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %87 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cputime_add(i8* %85, i32 %88)
  %90 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %91 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %90, i32 0, i32 11
  store i8* %89, i8** %91, align 8
  %92 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %93 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %92, i32 0, i32 10
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %96 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = call i8* @cputime_add(i8* %94, i32 %97)
  %99 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %100 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %99, i32 0, i32 10
  store i8* %98, i8** %100, align 8
  %101 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %102 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %105 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 8
  %110 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %111 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %114 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %120 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %123 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %121
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 8
  %128 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %129 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %132 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %138 = call i64 @task_io_get_inblock(%struct.task_struct* %137)
  %139 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %140 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 8
  %145 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %146 = call i64 @task_io_get_oublock(%struct.task_struct* %145)
  %147 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %148 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %146
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %154 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %153, i32 0, i32 3
  %155 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %156 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %155, i32 0, i32 4
  %157 = call i32 @task_io_accounting_add(i32* %154, i32* %156)
  %158 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %159 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %163 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %161
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4
  store %struct.signal_struct* null, %struct.signal_struct** %3, align 8
  br label %168

168:                                              ; preds = %73, %33
  %169 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %170 = call i32 @__unhash_process(%struct.task_struct* %169)
  %171 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %172 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %171, i32 0, i32 2
  %173 = call i32 @flush_sigqueue(i32* %172)
  %174 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %175 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %174, i32 0, i32 1
  store %struct.signal_struct* null, %struct.signal_struct** %175, align 8
  %176 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %177 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %176, i32 0, i32 0
  store i32* null, i32** %177, align 8
  %178 = load %struct.sighand_struct*, %struct.sighand_struct** %4, align 8
  %179 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %178, i32 0, i32 0
  %180 = call i32 @spin_unlock(i32* %179)
  %181 = load %struct.sighand_struct*, %struct.sighand_struct** %4, align 8
  %182 = call i32 @__cleanup_sighand(%struct.sighand_struct* %181)
  %183 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %184 = load i32, i32* @TIF_SIGPENDING, align 4
  %185 = call i32 @clear_tsk_thread_flag(%struct.task_struct* %183, i32 %184)
  %186 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %187 = icmp ne %struct.signal_struct* %186, null
  br i1 %187, label %188, label %198

188:                                              ; preds = %168
  %189 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %190 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %189, i32 0, i32 1
  %191 = call i32 @flush_sigqueue(i32* %190)
  %192 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %193 = call i32 @taskstats_tgid_free(%struct.signal_struct* %192)
  %194 = load %struct.task_struct*, %struct.task_struct** %2, align 8
  %195 = call i32 @task_rq_unlock_wait(%struct.task_struct* %194)
  %196 = load %struct.signal_struct*, %struct.signal_struct** %3, align 8
  %197 = call i32 @__cleanup_signal(%struct.signal_struct* %196)
  br label %198

198:                                              ; preds = %188, %168
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sighand_struct* @rcu_dereference(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @posix_cpu_timers_exit(%struct.task_struct*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @posix_cpu_timers_exit_group(%struct.task_struct*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @has_group_leader_pid(%struct.task_struct*) #1

declare dso_local i32 @wake_up_process(i64) #1

declare dso_local %struct.task_struct* @next_thread(%struct.task_struct*) #1

declare dso_local i8* @cputime_add(i8*, i32) #1

declare dso_local i64 @task_io_get_inblock(%struct.task_struct*) #1

declare dso_local i64 @task_io_get_oublock(%struct.task_struct*) #1

declare dso_local i32 @task_io_accounting_add(i32*, i32*) #1

declare dso_local i32 @__unhash_process(%struct.task_struct*) #1

declare dso_local i32 @flush_sigqueue(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__cleanup_sighand(%struct.sighand_struct*) #1

declare dso_local i32 @clear_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @taskstats_tgid_free(%struct.signal_struct*) #1

declare dso_local i32 @task_rq_unlock_wait(%struct.task_struct*) #1

declare dso_local i32 @__cleanup_signal(%struct.signal_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
