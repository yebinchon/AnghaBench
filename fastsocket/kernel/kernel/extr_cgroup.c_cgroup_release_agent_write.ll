; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_release_agent_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroup_release_agent_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cftype = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cgroup_root_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i8*)* @cgroup_release_agent_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgroup_release_agent_write(%struct.cgroup* %0, %struct.cftype* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca i8*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* @PATH_MAX, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 4, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUILD_BUG_ON(i32 %11)
  %13 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %14 = call i32 @cgroup_lock_live_group(%struct.cgroup* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %30

19:                                               ; preds = %3
  %20 = call i32 @mutex_lock(i32* @cgroup_root_mutex)
  %21 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %22 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strcpy(i32 %25, i8* %26)
  %28 = call i32 @mutex_unlock(i32* @cgroup_root_mutex)
  %29 = call i32 (...) @cgroup_unlock()
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %19, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @cgroup_lock_live_group(%struct.cgroup*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cgroup_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
