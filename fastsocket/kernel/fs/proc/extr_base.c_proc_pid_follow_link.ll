; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_base.c_proc_pid_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.nameidata = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.inode*, i32*)* }

@EACCES = common dso_local global i32 0, align 4
@LAST_BIND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @proc_pid_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @proc_pid_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load i32, i32* @EACCES, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 1
  %14 = call i32 @path_put(i32* %13)
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call i32 @proc_fd_access_allowed(%struct.inode* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %32

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.TYPE_4__* @PROC_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.inode*, i32*)*, i32 (%struct.inode*, i32*)** %23, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 1
  %28 = call i32 %24(%struct.inode* %25, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @LAST_BIND, align 4
  %30 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %31 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %19, %18
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @ERR_PTR(i32 %33)
  ret i8* %34
}

declare dso_local i32 @path_put(i32*) #1

declare dso_local i32 @proc_fd_access_allowed(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @PROC_I(%struct.inode*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
