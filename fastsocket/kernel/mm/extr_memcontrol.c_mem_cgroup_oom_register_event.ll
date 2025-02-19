; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_oom_register_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_oom_register_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.eventfd_ctx = type { i32 }
%struct.mem_cgroup = type { i32, i32 }
%struct.mem_cgroup_eventfd_list = type { i32, %struct.eventfd_ctx* }

@_OOM_TYPE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@memcg_oom_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, %struct.eventfd_ctx*, i8*)* @mem_cgroup_oom_register_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_oom_register_event(%struct.cgroup* %0, %struct.cftype* %1, %struct.eventfd_ctx* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.cftype*, align 8
  %8 = alloca %struct.eventfd_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mem_cgroup*, align 8
  %11 = alloca %struct.mem_cgroup_eventfd_list*, align 8
  %12 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %6, align 8
  store %struct.cftype* %1, %struct.cftype** %7, align 8
  store %struct.eventfd_ctx* %2, %struct.eventfd_ctx** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %14 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %13)
  store %struct.mem_cgroup* %14, %struct.mem_cgroup** %10, align 8
  %15 = load %struct.cftype*, %struct.cftype** %7, align 8
  %16 = getelementptr inbounds %struct.cftype, %struct.cftype* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MEMFILE_TYPE(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @_OOM_TYPE, align 4
  %21 = icmp ne i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.mem_cgroup_eventfd_list* @kmalloc(i32 16, i32 %24)
  store %struct.mem_cgroup_eventfd_list* %25, %struct.mem_cgroup_eventfd_list** %11, align 8
  %26 = load %struct.mem_cgroup_eventfd_list*, %struct.mem_cgroup_eventfd_list** %11, align 8
  %27 = icmp ne %struct.mem_cgroup_eventfd_list* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %50

31:                                               ; preds = %4
  %32 = call i32 @spin_lock(i32* @memcg_oom_lock)
  %33 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %34 = load %struct.mem_cgroup_eventfd_list*, %struct.mem_cgroup_eventfd_list** %11, align 8
  %35 = getelementptr inbounds %struct.mem_cgroup_eventfd_list, %struct.mem_cgroup_eventfd_list* %34, i32 0, i32 1
  store %struct.eventfd_ctx* %33, %struct.eventfd_ctx** %35, align 8
  %36 = load %struct.mem_cgroup_eventfd_list*, %struct.mem_cgroup_eventfd_list** %11, align 8
  %37 = getelementptr inbounds %struct.mem_cgroup_eventfd_list, %struct.mem_cgroup_eventfd_list* %36, i32 0, i32 0
  %38 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %39 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %38, i32 0, i32 1
  %40 = call i32 @list_add(i32* %37, i32* %39)
  %41 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %42 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %41, i32 0, i32 0
  %43 = call i64 @atomic_read(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load %struct.eventfd_ctx*, %struct.eventfd_ctx** %8, align 8
  %47 = call i32 @eventfd_signal(%struct.eventfd_ctx* %46, i32 1)
  br label %48

48:                                               ; preds = %45, %31
  %49 = call i32 @spin_unlock(i32* @memcg_oom_lock)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %28
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup*) #1

declare dso_local i32 @MEMFILE_TYPE(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.mem_cgroup_eventfd_list* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @eventfd_signal(%struct.eventfd_ctx*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
