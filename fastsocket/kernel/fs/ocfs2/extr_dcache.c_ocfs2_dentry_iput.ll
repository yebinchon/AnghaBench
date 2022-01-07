; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_dentry_iput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_dentry_iput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.TYPE_3__, %struct.ocfs2_dentry_lock* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ocfs2_dentry_lock = type { i64 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64 }

@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Dentry is missing cluster lock. inode: %llu, d_flags: 0x%x, d_name: %.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"dentry: %.*s, count: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.inode*)* @ocfs2_dentry_iput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dentry_iput(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_dentry_lock*, align 8
  %6 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 3
  %9 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %8, align 8
  store %struct.ocfs2_dentry_lock* %9, %struct.ocfs2_dentry_lock** %5, align 8
  %10 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %5, align 8
  %11 = icmp ne %struct.ocfs2_dentry_lock* %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %2
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %12
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = call i32 @d_unhashed(%struct.dentry* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  %24 = load %struct.inode*, %struct.inode** %4, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* @ML_ERROR, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.dentry*, %struct.dentry** %3, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dentry*, %struct.dentry** %3, align 8
  %42 = getelementptr inbounds %struct.dentry, %struct.dentry* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mlog(i32 %32, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %36, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %31, %19, %12
  br label %71

47:                                               ; preds = %2
  %48 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %5, align 8
  %49 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load %struct.dentry*, %struct.dentry** %3, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %5, align 8
  %62 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @mlog_bug_on_msg(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %60, i64 %63)
  %65 = load %struct.dentry*, %struct.dentry** %3, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @OCFS2_SB(i32 %67)
  %69 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %5, align 8
  %70 = call i32 @ocfs2_dentry_lock_put(i32 %68, %struct.ocfs2_dentry_lock* %69)
  br label %71

71:                                               ; preds = %47, %46
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = call i32 @iput(%struct.inode* %72)
  ret void
}

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i32, i64) #1

declare dso_local i32 @ocfs2_dentry_lock_put(i32, %struct.ocfs2_dentry_lock*) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
