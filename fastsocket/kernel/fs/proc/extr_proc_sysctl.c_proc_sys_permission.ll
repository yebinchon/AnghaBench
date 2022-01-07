; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_proc_sys_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i32 }
%struct.TYPE_2__ = type { %struct.ctl_table* }

@MAY_EXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @proc_sys_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctl_table_header*, align 8
  %7 = alloca %struct.ctl_table*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @MAY_EXEC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @S_ISREG(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %13, %2
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.ctl_table_header* @grab_header(%struct.inode* %23)
  store %struct.ctl_table_header* %24, %struct.ctl_table_header** %6, align 8
  %25 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %26 = call i64 @IS_ERR(%struct.ctl_table_header* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %30 = call i32 @PTR_ERR(%struct.ctl_table_header* %29)
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %22
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ctl_table*, %struct.ctl_table** %34, align 8
  store %struct.ctl_table* %35, %struct.ctl_table** %7, align 8
  %36 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %37 = icmp ne %struct.ctl_table* %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @MAY_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EACCES, align 4
  %45 = sub nsw i32 0, %44
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %43
  %48 = phi i32 [ %45, %43 ], [ 0, %46 ]
  store i32 %48, i32* %8, align 4
  br label %56

49:                                               ; preds = %31
  %50 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %51 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @sysctl_perm(i32 %52, %struct.ctl_table* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %49, %47
  %57 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %58 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %28, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.ctl_table_header* @grab_header(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @PTR_ERR(%struct.ctl_table_header*) #1

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local i32 @sysctl_perm(i32, %struct.ctl_table*, i32) #1

declare dso_local i32 @sysctl_head_finish(%struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
