; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_notify_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_generic.c_proc_notify_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.iattr = type { i32 }
%struct.proc_dir_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @proc_notify_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_notify_change(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.proc_dir_entry* @PDE(%struct.inode* %11)
  store %struct.proc_dir_entry* %12, %struct.proc_dir_entry** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = load %struct.iattr*, %struct.iattr** %4, align 8
  %15 = call i32 @inode_change_ok(%struct.inode* %13, %struct.iattr* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load %struct.iattr*, %struct.iattr** %4, align 8
  %22 = call i32 @inode_setattr(%struct.inode* %20, %struct.iattr* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %42

26:                                               ; preds = %19
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %31 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %36 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %41 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %26, %25, %18
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
