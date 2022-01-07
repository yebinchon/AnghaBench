; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_root.c_pid_ns_prepare_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_root.c_pid_ns_prepare_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { %struct.vfsmount* }
%struct.vfsmount = type { i32 }

@proc_fs_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pid_ns_prepare_proc(%struct.pid_namespace* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pid_namespace*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %3, align 8
  %5 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %6 = call %struct.vfsmount* @kern_mount_data(i32* @proc_fs_type, %struct.pid_namespace* %5)
  store %struct.vfsmount* %6, %struct.vfsmount** %4, align 8
  %7 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %8 = call i64 @IS_ERR(%struct.vfsmount* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %12 = call i32 @PTR_ERR(%struct.vfsmount* %11)
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %15 = load %struct.pid_namespace*, %struct.pid_namespace** %3, align 8
  %16 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %15, i32 0, i32 0
  store %struct.vfsmount* %14, %struct.vfsmount** %16, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local %struct.vfsmount* @kern_mount_data(i32*, %struct.pid_namespace*) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
