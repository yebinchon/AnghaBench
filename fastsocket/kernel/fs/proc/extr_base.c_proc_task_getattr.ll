; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_task_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_task_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.kstat = type { i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)* @proc_task_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_task_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.task_struct*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call %struct.task_struct* @get_proc_task(%struct.inode* %12)
  store %struct.task_struct* %13, %struct.task_struct** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = load %struct.kstat*, %struct.kstat** %6, align 8
  %16 = call i32 @generic_fillattr(%struct.inode* %14, %struct.kstat* %15)
  %17 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %18 = icmp ne %struct.task_struct* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %21 = call i64 @get_nr_threads(%struct.task_struct* %20)
  %22 = load %struct.kstat*, %struct.kstat** %6, align 8
  %23 = getelementptr inbounds %struct.kstat, %struct.kstat* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %29 = call i32 @put_task_struct(%struct.task_struct* %28)
  br label %30

30:                                               ; preds = %19, %3
  ret i32 0
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i64 @get_nr_threads(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
