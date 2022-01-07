; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_flow.c_flow_cache_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_flow.c_flow_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_flush_info = type { i32, i32, i32* }

@flow_cache_flush.flow_flush_sem = internal global i32 0, align 4
@flow_cache_global = common dso_local global i32 0, align 4
@flow_cache_flush_per_cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flow_cache_flush() #0 {
  %1 = alloca %struct.flow_flush_info, align 8
  %2 = call i32 (...) @get_online_cpus()
  %3 = call i32 @mutex_lock(i32* @flow_cache_flush.flow_flush_sem)
  %4 = getelementptr inbounds %struct.flow_flush_info, %struct.flow_flush_info* %1, i32 0, i32 2
  store i32* @flow_cache_global, i32** %4, align 8
  %5 = getelementptr inbounds %struct.flow_flush_info, %struct.flow_flush_info* %1, i32 0, i32 1
  %6 = call i32 (...) @num_online_cpus()
  %7 = call i32 @atomic_set(i32* %5, i32 %6)
  %8 = getelementptr inbounds %struct.flow_flush_info, %struct.flow_flush_info* %1, i32 0, i32 0
  %9 = call i32 @init_completion(i32* %8)
  %10 = call i32 (...) @local_bh_disable()
  %11 = load i32, i32* @flow_cache_flush_per_cpu, align 4
  %12 = call i32 @smp_call_function(i32 %11, %struct.flow_flush_info* %1, i32 0)
  %13 = ptrtoint %struct.flow_flush_info* %1 to i64
  %14 = call i32 @flow_cache_flush_tasklet(i64 %13)
  %15 = call i32 (...) @local_bh_enable()
  %16 = getelementptr inbounds %struct.flow_flush_info, %struct.flow_flush_info* %1, i32 0, i32 0
  %17 = call i32 @wait_for_completion(i32* %16)
  %18 = call i32 @mutex_unlock(i32* @flow_cache_flush.flow_flush_sem)
  %19 = call i32 (...) @put_online_cpus()
  ret void
}

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @smp_call_function(i32, %struct.flow_flush_info*, i32) #1

declare dso_local i32 @flow_cache_flush_tasklet(i64) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
