; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_lookupfd_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_lookupfd_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.task_struct = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i32*)*)* @proc_lookupfd_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_lookupfd_common(%struct.inode* %0, %struct.dentry* %1, %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i32*)* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i32*)*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i32*)* %2, %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i32*)** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.task_struct* @get_proc_task(%struct.inode* %10)
  store %struct.task_struct* %11, %struct.task_struct** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call i32 @name_to_int(%struct.dentry* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.dentry* @ERR_PTR(i32 %15)
  store %struct.dentry* %16, %struct.dentry** %9, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = icmp ne %struct.task_struct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %33

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %30

24:                                               ; preds = %20
  %25 = load %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i32*)*, %struct.dentry* (%struct.inode*, %struct.dentry*, %struct.task_struct*, i32*)** %6, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %29 = call %struct.dentry* %25(%struct.inode* %26, %struct.dentry* %27, %struct.task_struct* %28, i32* %8)
  store %struct.dentry* %29, %struct.dentry** %9, align 8
  br label %30

30:                                               ; preds = %24, %23
  %31 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %32 = call i32 @put_task_struct(%struct.task_struct* %31)
  br label %33

33:                                               ; preds = %30, %19
  %34 = load %struct.dentry*, %struct.dentry** %9, align 8
  ret %struct.dentry* %34
}

declare dso_local %struct.task_struct* @get_proc_task(%struct.inode*) #1

declare dso_local i32 @name_to_int(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
