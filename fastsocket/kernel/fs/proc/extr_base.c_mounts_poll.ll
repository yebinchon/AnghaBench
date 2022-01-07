; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_mounts_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_mounts_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.proc_mounts* }
%struct.proc_mounts = type { i64, %struct.mnt_namespace* }
%struct.mnt_namespace = type { i64, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@vfsmount_lock = common dso_local global i32 0, align 4
@POLLERR = common dso_local global i32 0, align 4
@POLLPRI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @mounts_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mounts_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.proc_mounts*, align 8
  %6 = alloca %struct.mnt_namespace*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.proc_mounts*, %struct.proc_mounts** %9, align 8
  store %struct.proc_mounts* %10, %struct.proc_mounts** %5, align 8
  %11 = load %struct.proc_mounts*, %struct.proc_mounts** %5, align 8
  %12 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %11, i32 0, i32 1
  %13 = load %struct.mnt_namespace*, %struct.mnt_namespace** %12, align 8
  store %struct.mnt_namespace* %13, %struct.mnt_namespace** %6, align 8
  %14 = load i32, i32* @POLLIN, align 4
  %15 = load i32, i32* @POLLRDNORM, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.file*, %struct.file** %3, align 8
  %18 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %19 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %18, i32 0, i32 1
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @poll_wait(%struct.file* %17, i32* %19, i32* %20)
  %22 = call i32 @spin_lock(i32* @vfsmount_lock)
  %23 = load %struct.proc_mounts*, %struct.proc_mounts** %5, align 8
  %24 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %27 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %32 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.proc_mounts*, %struct.proc_mounts** %5, align 8
  %35 = getelementptr inbounds %struct.proc_mounts, %struct.proc_mounts* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @POLLERR, align 4
  %37 = load i32, i32* @POLLPRI, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %30, %2
  %42 = call i32 @spin_unlock(i32* @vfsmount_lock)
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
