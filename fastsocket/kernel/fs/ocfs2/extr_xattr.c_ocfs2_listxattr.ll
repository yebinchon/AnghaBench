; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_listxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_inode_info = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca %struct.ocfs2_inode_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %12, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ocfs2_inode_info* @OCFS2_I(i32 %16)
  store %struct.ocfs2_inode_info* %17, %struct.ocfs2_inode_info** %13, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @OCFS2_SB(i32 %20)
  %22 = call i32 @ocfs2_supports_xattr(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %102

27:                                               ; preds = %3
  %28 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %29 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %102

36:                                               ; preds = %27
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ocfs2_inode_lock(i32 %39, %struct.buffer_head** %11, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %102

47:                                               ; preds = %36
  %48 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %49 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %51, %struct.ocfs2_dinode** %12, align 8
  %52 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %53 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %52, i32 0, i32 1
  %54 = call i32 @down_read(i32* %53)
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @ocfs2_xattr_ibody_list(i32 %57, %struct.ocfs2_dinode* %58, i8* %59, i64 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  store i32 0, i32* %10, align 4
  br label %89

65:                                               ; preds = %47
  %66 = load i8*, i8** %6, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %7, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %68, %65
  %78 = load %struct.dentry*, %struct.dentry** %5, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @ocfs2_xattr_block_list(i32 %80, %struct.ocfs2_dinode* %81, i8* %82, i64 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %87, %77
  br label %89

89:                                               ; preds = %88, %64
  %90 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %13, align 8
  %91 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %90, i32 0, i32 1
  %92 = call i32 @up_read(i32* %91)
  %93 = load %struct.dentry*, %struct.dentry** %5, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ocfs2_inode_unlock(i32 %95, i32 0)
  %97 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %98 = call i32 @brelse(%struct.buffer_head* %97)
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %89, %43, %34, %24
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(i32) #1

declare dso_local i32 @ocfs2_supports_xattr(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_inode_lock(i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ocfs2_xattr_ibody_list(i32, %struct.ocfs2_dinode*, i8*, i64) #1

declare dso_local i32 @ocfs2_xattr_block_list(i32, %struct.ocfs2_dinode*, i8*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
