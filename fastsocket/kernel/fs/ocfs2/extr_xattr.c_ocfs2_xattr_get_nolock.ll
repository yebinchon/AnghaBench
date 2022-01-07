; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get_nolock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_get_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i64 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_xattr_search = type { i32, %struct.buffer_head* }

@ENODATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@OCFS2_HAS_XATTR_FL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_xattr_get_nolock(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca %struct.ocfs2_inode_info*, align 8
  %17 = alloca %struct.ocfs2_xattr_search, align 8
  %18 = alloca %struct.ocfs2_xattr_search, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %15, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %19)
  store %struct.ocfs2_inode_info* %20, %struct.ocfs2_inode_info** %16, align 8
  %21 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %17, i32 0, i32 0
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %17, i32 0, i32 1
  store %struct.buffer_head* null, %struct.buffer_head** %24, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %18, i32 0, i32 0
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %25, align 8
  %28 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %18, i32 0, i32 1
  store %struct.buffer_head* null, %struct.buffer_head** %28, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @OCFS2_SB(i32 %31)
  %33 = call i32 @ocfs2_supports_xattr(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %86

38:                                               ; preds = %6
  %39 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %40 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCFS2_HAS_XATTR_FL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENODATA, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %45, %38
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %18, i32 0, i32 1
  store %struct.buffer_head* %49, %struct.buffer_head** %50, align 8
  %51 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %17, i32 0, i32 1
  store %struct.buffer_head* %49, %struct.buffer_head** %51, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %55, %struct.ocfs2_dinode** %15, align 8
  %56 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %57 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %56, i32 0, i32 1
  %58 = call i32 @down_read(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @ocfs2_xattr_ibody_get(%struct.inode* %59, i32 %60, i8* %61, i8* %62, i64 %63, %struct.ocfs2_xattr_search* %17)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @ENODATA, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %48
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @ocfs2_xattr_block_get(%struct.inode* %75, i32 %76, i8* %77, i8* %78, i64 %79, %struct.ocfs2_xattr_search* %18)
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %74, %69, %48
  %82 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %16, align 8
  %83 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %82, i32 0, i32 1
  %84 = call i32 @up_read(i32* %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %81, %35
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_supports_xattr(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ocfs2_xattr_ibody_get(%struct.inode*, i32, i8*, i8*, i64, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @ocfs2_xattr_block_get(%struct.inode*, i32, i8*, i8*, i64, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
