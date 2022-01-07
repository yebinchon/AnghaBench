; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_inode.c_ocfs2_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_find_inode_args = type { i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"(blkno = %llu)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ocfs2_find_actor = common dso_local global i32 0, align 4
@ocfs2_init_locked_inode = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Inode was not in inode cache, reading it.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"returning inode with number %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ocfs2_iget(%struct.ocfs2_super* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.ocfs2_find_inode_args, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @mlog_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %6, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.inode* @ERR_PTR(i32 %21)
  store %struct.inode* %22, %struct.inode** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = call i32 @PTR_ERR(%struct.inode* %23)
  %25 = call i32 @mlog_errno(i32 %24)
  br label %79

26:                                               ; preds = %4
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %11, i32 0, i32 3
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %11, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load %struct.super_block*, %struct.super_block** %10, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @ino_from_blkno(%struct.super_block* %31, i64 %32)
  %34 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %11, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %11, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.super_block*, %struct.super_block** %10, align 8
  %38 = getelementptr inbounds %struct.ocfs2_find_inode_args, %struct.ocfs2_find_inode_args* %11, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ocfs2_find_actor, align 4
  %41 = load i32, i32* @ocfs2_init_locked_inode, align 4
  %42 = call %struct.inode* @iget5_locked(%struct.super_block* %37, i32 %39, i32 %40, i32 %41, %struct.ocfs2_find_inode_args* %11)
  store %struct.inode* %42, %struct.inode** %9, align 8
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = icmp ne %struct.inode* %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %26
  %46 = load %struct.inode*, %struct.inode** %9, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @I_NEW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = call i32 @ocfs2_read_locked_inode(%struct.inode* %54, %struct.ocfs2_find_inode_args* %11)
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = call i32 @unlock_new_inode(%struct.inode* %56)
  br label %58

58:                                               ; preds = %52, %45, %26
  %59 = load %struct.inode*, %struct.inode** %9, align 8
  %60 = icmp eq %struct.inode* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.inode* @ERR_PTR(i32 %63)
  store %struct.inode* %64, %struct.inode** %9, align 8
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = call i32 @PTR_ERR(%struct.inode* %65)
  %67 = call i32 @mlog_errno(i32 %66)
  br label %79

68:                                               ; preds = %58
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = call i64 @is_bad_inode(%struct.inode* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = call i32 @iput(%struct.inode* %73)
  %75 = load i32, i32* @ESTALE, align 4
  %76 = sub nsw i32 0, %75
  %77 = call %struct.inode* @ERR_PTR(i32 %76)
  store %struct.inode* %77, %struct.inode** %9, align 8
  br label %79

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %72, %61, %19
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = call i32 @IS_ERR(%struct.inode* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  %89 = load %struct.inode*, %struct.inode** %9, align 8
  %90 = call i32 @mlog_exit_ptr(%struct.inode* %89)
  br label %91

91:                                               ; preds = %83, %79
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  ret %struct.inode* %92
}

declare dso_local i32 @mlog_entry(i8*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ino_from_blkno(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i32, i32, i32, %struct.ocfs2_find_inode_args*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_read_locked_inode(%struct.inode*, %struct.ocfs2_find_inode_args*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_exit_ptr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
