; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_make_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_make_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32*, i64, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i32, i32 }
%struct.proc_inode = type { %struct.ctl_table*, %struct.ctl_table_header* }

@CURRENT_TIME = common dso_local global i32 0, align 4
@S_PRIVATE = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@proc_sys_inode_operations = common dso_local global i32 0, align 4
@proc_sys_file_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@proc_sys_dir_operations = common dso_local global i32 0, align 4
@proc_sys_dir_file_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.ctl_table_header*, %struct.ctl_table*)* @proc_sys_make_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @proc_sys_make_inode(%struct.super_block* %0, %struct.ctl_table_header* %1, %struct.ctl_table* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ctl_table_header*, align 8
  %6 = alloca %struct.ctl_table*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.proc_inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ctl_table_header* %1, %struct.ctl_table_header** %5, align 8
  store %struct.ctl_table* %2, %struct.ctl_table** %6, align 8
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.inode* @new_inode(%struct.super_block* %9)
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %69

14:                                               ; preds = %3
  %15 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %16 = call i32 @sysctl_head_get(%struct.ctl_table_header* %15)
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call %struct.proc_inode* @PROC_I(%struct.inode* %17)
  store %struct.proc_inode* %18, %struct.proc_inode** %8, align 8
  %19 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %20 = load %struct.proc_inode*, %struct.proc_inode** %8, align 8
  %21 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %20, i32 0, i32 1
  store %struct.ctl_table_header* %19, %struct.ctl_table_header** %21, align 8
  %22 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %23 = load %struct.proc_inode*, %struct.proc_inode** %8, align 8
  %24 = getelementptr inbounds %struct.proc_inode, %struct.proc_inode* %23, i32 0, i32 0
  store %struct.ctl_table* %22, %struct.ctl_table** %24, align 8
  %25 = load i32, i32* @CURRENT_TIME, align 4
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 6
  store i32 %25, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 7
  store i32 %25, i32* %31, align 8
  %32 = load i32, i32* @S_PRIVATE, align 4
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %38 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %43 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %14
  %47 = load i32, i32* @S_IFREG, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  store i32* @proc_sys_inode_operations, i32** %53, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  store i32* @proc_sys_file_operations, i32** %55, align 8
  br label %68

56:                                               ; preds = %14
  %57 = load i32, i32* @S_IFDIR, align 4
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  store i32* @proc_sys_dir_operations, i32** %65, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  store i32* @proc_sys_dir_file_operations, i32** %67, align 8
  br label %68

68:                                               ; preds = %56, %46
  br label %69

69:                                               ; preds = %68, %13
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  ret %struct.inode* %70
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @sysctl_head_get(%struct.ctl_table_header*) #1

declare dso_local %struct.proc_inode* @PROC_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
