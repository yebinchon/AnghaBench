; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.dentry = type { i32, i64, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.nameidata = type { i32 }
%struct.autofs_sb_info = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"autofs_root_lookup: name = \00", align 1
@NAME_MAX = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"autofs_lookup: pid = %u, pgrp = %u, catatonic = %d, oz_mode = %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_9__* null, align 8
@autofs_dentry_operations = common dso_local global i32 0, align 4
@DCACHE_AUTOFS_PENDING = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @autofs_root_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @autofs_root_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @lock_kernel()
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @autofs_say(i32 %16, i64 %20)
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NAME_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = call i32 (...) @unlock_kernel()
  %30 = load i32, i32* @ENAMETOOLONG, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.dentry* @ERR_PTR(i32 %31)
  store %struct.dentry* %32, %struct.dentry** %4, align 8
  br label %119

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.autofs_sb_info* @autofs_sbi(i32 %36)
  store %struct.autofs_sb_info* %37, %struct.autofs_sb_info** %8, align 8
  %38 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %39 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %41 = call i32 @task_pid_nr(%struct.TYPE_9__* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %43 = call i32 @task_pgrp_nr(%struct.TYPE_9__* %42)
  %44 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %45 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @DPRINTK(i8* %49)
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 2
  store i32* @autofs_dentry_operations, i32** %52, align 8
  %53 = load i32, i32* @DCACHE_AUTOFS_PENDING, align 4
  %54 = load %struct.dentry*, %struct.dentry** %6, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = call i32 @d_add(%struct.dentry* %58, i32* null)
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %65 = call i32 @autofs_revalidate(%struct.dentry* %63, %struct.nameidata* %64)
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.dentry*, %struct.dentry** %6, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @DCACHE_AUTOFS_PENDING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %33
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %77 = call i64 @signal_pending(%struct.TYPE_9__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %103

79:                                               ; preds = %75
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32* %82, i32** %10, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* @SIGKILL, align 4
  %85 = call i64 @sigismember(i32* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %79
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* @SIGQUIT, align 4
  %90 = call i64 @sigismember(i32* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* @SIGINT, align 4
  %95 = call i64 @sigismember(i32* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92, %87, %79
  %98 = call i32 (...) @unlock_kernel()
  %99 = load i32, i32* @ERESTARTNOINTR, align 4
  %100 = sub nsw i32 0, %99
  %101 = call %struct.dentry* @ERR_PTR(i32 %100)
  store %struct.dentry* %101, %struct.dentry** %4, align 8
  br label %119

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %75
  br label %104

104:                                              ; preds = %103, %33
  %105 = call i32 (...) @unlock_kernel()
  %106 = load %struct.dentry*, %struct.dentry** %6, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %104
  %111 = load %struct.dentry*, %struct.dentry** %6, align 8
  %112 = call i64 @d_unhashed(%struct.dentry* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* @ENOENT, align 4
  %116 = sub nsw i32 0, %115
  %117 = call %struct.dentry* @ERR_PTR(i32 %116)
  store %struct.dentry* %117, %struct.dentry** %4, align 8
  br label %119

118:                                              ; preds = %110, %104
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %119

119:                                              ; preds = %118, %114, %97, %28
  %120 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %120
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @autofs_say(i32, i64) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_9__*) #1

declare dso_local i32 @task_pgrp_nr(%struct.TYPE_9__*) #1

declare dso_local i32 @d_add(%struct.dentry*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @autofs_revalidate(%struct.dentry*, %struct.nameidata*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @signal_pending(%struct.TYPE_9__*) #1

declare dso_local i64 @sigismember(i32*, i32) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
