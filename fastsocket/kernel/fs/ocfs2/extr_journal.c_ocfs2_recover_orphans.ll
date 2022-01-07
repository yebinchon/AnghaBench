; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_recover_orphans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_recover_orphans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.inode = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32, %struct.inode*, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Recover inodes from orphan dir in slot %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"iput orphan %llu\0A\00", align 1
@OCFS2_INODE_DELETED = common dso_local global i32 0, align 4
@OCFS2_INODE_SKIP_DELETE = common dso_local global i32 0, align 4
@OCFS2_INODE_MAYBE_ORPHANED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32)* @ocfs2_recover_orphans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_recover_orphans(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.inode* null, %struct.inode** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ocfs2_mark_recovering_orphan_dir(%struct.ocfs2_super* %12, i32 %13)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @ocfs2_queue_orphans(%struct.ocfs2_super* %15, i32 %16, %struct.inode** %6)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ocfs2_clear_recovering_orphan_dir(%struct.ocfs2_super* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mlog_errno(i32 %24)
  br label %26

26:                                               ; preds = %23, %2
  br label %27

27:                                               ; preds = %30, %26
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = icmp ne %struct.inode* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %31)
  store %struct.ocfs2_inode_info* %32, %struct.ocfs2_inode_info** %8, align 8
  %33 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %34 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %38 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %37, i32 0, i32 2
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %7, align 8
  %40 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %41 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %40, i32 0, i32 1
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load i32, i32* @OCFS2_INODE_DELETED, align 4
  %44 = load i32, i32* @OCFS2_INODE_SKIP_DELETE, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %48 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* @OCFS2_INODE_MAYBE_ORPHANED, align 4
  %52 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %53 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %8, align 8
  %57 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = call i32 @iput(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %61, %struct.inode** %6, align 8
  br label %27

62:                                               ; preds = %27
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_mark_recovering_orphan_dir(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_queue_orphans(%struct.ocfs2_super*, i32, %struct.inode**) #1

declare dso_local i32 @ocfs2_clear_recovering_orphan_dir(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
