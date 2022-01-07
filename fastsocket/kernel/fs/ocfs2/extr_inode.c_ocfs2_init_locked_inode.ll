; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_init_locked_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_init_locked_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type { i32 }
%struct.inode = type { i32, i32 }
%struct.ocfs2_find_inode_args = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ocfs2_init_locked_inode.ocfs2_quota_ip_alloc_sem_key = internal global %struct.lock_class_key zeroinitializer, align 4
@ocfs2_init_locked_inode.ocfs2_file_ip_alloc_sem_key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"inode = %p, opaque = %p\0A\00", align 1
@ocfs2_sysfile_lock_key = common dso_local global %struct.lock_class_key* null, align 8
@USER_QUOTA_SYSTEM_INODE = common dso_local global i64 0, align 8
@GROUP_QUOTA_SYSTEM_INODE = common dso_local global i64 0, align 8
@LOCAL_USER_QUOTA_SYSTEM_INODE = common dso_local global i64 0, align 8
@LOCAL_GROUP_QUOTA_SYSTEM_INODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @ocfs2_init_locked_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_init_locked_inode(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ocfs2_find_inode_args*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ocfs2_find_inode_args*
  store %struct.ocfs2_find_inode_args* %7, %struct.ocfs2_find_inode_args** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @mlog_entry(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.inode* %8, i8* %9)
  %11 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %12 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %23 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.lock_class_key*, %struct.lock_class_key** @ocfs2_sysfile_lock_key, align 8
  %30 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %31 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.lock_class_key, %struct.lock_class_key* %29, i64 %32
  %34 = call i32 @lockdep_set_class(i32* %28, %struct.lock_class_key* %33)
  br label %35

35:                                               ; preds = %26, %2
  %36 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %37 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @USER_QUOTA_SYSTEM_INODE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %59, label %41

41:                                               ; preds = %35
  %42 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %43 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GROUP_QUOTA_SYSTEM_INODE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %59, label %47

47:                                               ; preds = %41
  %48 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LOCAL_USER_QUOTA_SYSTEM_INODE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.ocfs2_find_inode_args*, %struct.ocfs2_find_inode_args** %5, align 8
  %55 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LOCAL_GROUP_QUOTA_SYSTEM_INODE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53, %47, %41, %35
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = call i32 @lockdep_set_class(i32* %62, %struct.lock_class_key* @ocfs2_init_locked_inode.ocfs2_quota_ip_alloc_sem_key)
  br label %69

64:                                               ; preds = %53
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @lockdep_set_class(i32* %67, %struct.lock_class_key* @ocfs2_init_locked_inode.ocfs2_file_ip_alloc_sem_key)
  br label %69

69:                                               ; preds = %64, %59
  %70 = call i32 @mlog_exit(i32 0)
  ret i32 0
}

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, i8*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @lockdep_set_class(i32*, %struct.lock_class_key*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
