; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_file.c_jfs_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_file.c_jfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.file = type { i32 }
%struct.jfs_inode_info = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @jfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jfs_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @generic_file_open(%struct.inode* %8, %struct.file* %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISREG(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FMODE_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %66

32:                                               ; preds = %27
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %33)
  store %struct.jfs_inode_info* %34, %struct.jfs_inode_info** %7, align 8
  %35 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %36 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %35, i32 0, i32 2
  %37 = call i32 @spin_lock_irq(i32* %36)
  %38 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %39 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %62

42:                                               ; preds = %32
  %43 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %44 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %47 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_4__* @JFS_SBI(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %57 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = call i32 @atomic_inc(i32* %60)
  br label %62

62:                                               ; preds = %42, %32
  %63 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %64 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock_irq(i32* %64)
  br label %66

66:                                               ; preds = %62, %27, %20, %14
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @generic_file_open(%struct.inode*, %struct.file*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_4__* @JFS_SBI(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
