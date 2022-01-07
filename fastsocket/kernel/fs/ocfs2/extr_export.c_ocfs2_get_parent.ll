; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_export.c_ocfs2_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_export.c_ocfs2_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32*, %struct.TYPE_3__, %struct.inode* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"(0x%p, '%.*s')\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"find parent of directory %llu\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ocfs2_dentry_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @ocfs2_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ocfs2_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 2
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %2, align 8
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mlog_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.dentry* %10, i32 %14, i32 %18)
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call i32 @ocfs2_inode_lock(%struct.inode* %25, i32* null, i32 0)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* %3, align 4
  %39 = call %struct.dentry* @ERR_PTR(i32 %38)
  store %struct.dentry* %39, %struct.dentry** %5, align 8
  br label %67

40:                                               ; preds = %1
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @ocfs2_lookup_ino_from_name(%struct.inode* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2, i32* %4)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.dentry* @ERR_PTR(i32 %47)
  store %struct.dentry* %48, %struct.dentry** %5, align 8
  br label %64

49:                                               ; preds = %40
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @OCFS2_SB(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ocfs2_iget(i32 %53, i32 %54, i32 0, i32 0)
  %56 = call %struct.dentry* @d_obtain_alias(i32 %55)
  store %struct.dentry* %56, %struct.dentry** %5, align 8
  %57 = load %struct.dentry*, %struct.dentry** %5, align 8
  %58 = call i32 @IS_ERR(%struct.dentry* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %49
  %61 = load %struct.dentry*, %struct.dentry** %5, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  store i32* @ocfs2_dentry_ops, i32** %62, align 8
  br label %63

63:                                               ; preds = %60, %49
  br label %64

64:                                               ; preds = %63, %45
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = call i32 @ocfs2_inode_unlock(%struct.inode* %65, i32 0)
  br label %67

67:                                               ; preds = %64, %37
  %68 = load %struct.dentry*, %struct.dentry** %5, align 8
  %69 = call i32 @mlog_exit_ptr(%struct.dentry* %68)
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %70
}

declare dso_local i32 @mlog_entry(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @ocfs2_lookup_ino_from_name(%struct.inode*, i8*, i32, i32*) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @ocfs2_iget(i32, i32, i32, i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_exit_ptr(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
