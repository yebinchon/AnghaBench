; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.kstat = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i32 }
%struct.TYPE_2__ = type { %struct.ctl_table* }

@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, %struct.kstat*)* @proc_sys_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.kstat*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ctl_table_header*, align 8
  %10 = alloca %struct.ctl_table*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.kstat* %2, %struct.kstat** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = call %struct.ctl_table_header* @grab_header(%struct.inode* %14)
  store %struct.ctl_table_header* %15, %struct.ctl_table_header** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ctl_table*, %struct.ctl_table** %18, align 8
  store %struct.ctl_table* %19, %struct.ctl_table** %10, align 8
  %20 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %21 = call i64 @IS_ERR(%struct.ctl_table_header* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %25 = call i32 @PTR_ERR(%struct.ctl_table_header* %24)
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = load %struct.kstat*, %struct.kstat** %7, align 8
  %29 = call i32 @generic_fillattr(%struct.inode* %27, %struct.kstat* %28)
  %30 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %31 = icmp ne %struct.ctl_table* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.kstat*, %struct.kstat** %7, align 8
  %34 = getelementptr inbounds %struct.kstat, %struct.kstat* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @S_IFMT, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %39 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  %42 = load %struct.kstat*, %struct.kstat** %7, align 8
  %43 = getelementptr inbounds %struct.kstat, %struct.kstat* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %32, %26
  %45 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %46 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %23
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.ctl_table_header* @grab_header(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @PTR_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i32 @sysctl_head_finish(%struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
