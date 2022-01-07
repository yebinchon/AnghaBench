; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_mqueue_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_mqueue.c_mqueue_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32 }
%struct.dentry = type { %struct.mq_attr* }
%struct.mq_attr = type { i32 }
%struct.nameidata = type { i32 }
%struct.ipc_namespace = type { i64, i64 }

@mq_lock = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@HARD_QUEUESMAX = common dso_local global i64 0, align 8
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DIRENT_SIZE = common dso_local global i64 0, align 8
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @mqueue_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqueue_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.mq_attr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipc_namespace*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.mq_attr*, %struct.mq_attr** %15, align 8
  store %struct.mq_attr* %16, %struct.mq_attr** %11, align 8
  %17 = call i32 @spin_lock(i32* @mq_lock)
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.ipc_namespace* @__get_ns_from_inode(%struct.inode* %18)
  store %struct.ipc_namespace* %19, %struct.ipc_namespace** %13, align 8
  %20 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %21 = icmp ne %struct.ipc_namespace* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %12, align 4
  br label %91

25:                                               ; preds = %4
  %26 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %27 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HARD_QUEUESMAX, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %33 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %36 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %41 = call i32 @capable(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* @ENOSPC, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %91

46:                                               ; preds = %39, %31
  %47 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %48 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = call i32 @spin_unlock(i32* @mq_lock)
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.mq_attr*, %struct.mq_attr** %11, align 8
  %58 = call %struct.inode* @mqueue_get_inode(i32 %54, %struct.ipc_namespace* %55, i32 %56, %struct.mq_attr* %57)
  store %struct.inode* %58, %struct.inode** %10, align 8
  %59 = load %struct.inode*, %struct.inode** %10, align 8
  %60 = icmp ne %struct.inode* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  %64 = call i32 @spin_lock(i32* @mq_lock)
  %65 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %66 = getelementptr inbounds %struct.ipc_namespace, %struct.ipc_namespace* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, -1
  store i64 %68, i64* %66, align 8
  br label %91

69:                                               ; preds = %46
  %70 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %71 = call i32 @put_ipc_ns(%struct.ipc_namespace* %70)
  %72 = load i64, i64* @DIRENT_SIZE, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load i32, i32* @CURRENT_TIME, align 4
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  store i32 %79, i32* %83, align 4
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 2
  store i32 %79, i32* %85, align 4
  %86 = load %struct.dentry*, %struct.dentry** %7, align 8
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = call i32 @d_instantiate(%struct.dentry* %86, %struct.inode* %87)
  %89 = load %struct.dentry*, %struct.dentry** %7, align 8
  %90 = call i32 @dget(%struct.dentry* %89)
  store i32 0, i32* %5, align 4
  br label %100

91:                                               ; preds = %61, %43, %22
  %92 = call i32 @spin_unlock(i32* @mq_lock)
  %93 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %94 = icmp ne %struct.ipc_namespace* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.ipc_namespace*, %struct.ipc_namespace** %13, align 8
  %97 = call i32 @put_ipc_ns(%struct.ipc_namespace* %96)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %69
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ipc_namespace* @__get_ns_from_inode(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.inode* @mqueue_get_inode(i32, %struct.ipc_namespace*, i32, %struct.mq_attr*) #1

declare dso_local i32 @put_ipc_ns(%struct.ipc_namespace*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
