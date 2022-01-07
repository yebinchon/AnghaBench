; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_calc_security_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_calc_security_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ocfs2_security_xattr_info = type { i64, i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_MIN_BLOCKSIZE = common dso_local global i64 0, align 8
@OCFS2_XATTR_FREE_IN_IBODY = common dso_local global i32 0, align 4
@OCFS2_XATTR_BLOCK_CREATE_CREDITS = common dso_local global i64 0, align 8
@OCFS2_XATTR_INLINE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_calc_security_init(%struct.inode* %0, %struct.ocfs2_security_xattr_info* %1, i32* %2, i32* %3, %struct.ocfs2_alloc_context** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ocfs2_security_xattr_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_alloc_context**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_super*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.ocfs2_security_xattr_info* %1, %struct.ocfs2_security_xattr_info** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.ocfs2_alloc_context** %4, %struct.ocfs2_alloc_context*** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_4__* %18)
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %13, align 8
  %20 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %8, align 8
  %21 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strlen(i32 %22)
  %24 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %8, align 8
  %25 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ocfs2_xattr_entry_real_size(i32 %23, i64 %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @OCFS2_XATTR_FREE_IN_IBODY, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35, %5
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %13, align 8
  %41 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %11, align 8
  %42 = call i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %40, i32 1, %struct.ocfs2_alloc_context** %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @mlog_errno(i32 %46)
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %86

49:                                               ; preds = %39
  %50 = load i64, i64* @OCFS2_XATTR_BLOCK_CREATE_CREDITS, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %50
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  br label %56

56:                                               ; preds = %49, %35
  %57 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %8, align 8
  %58 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @OCFS2_XATTR_INLINE_SIZE, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %56
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %8, align 8
  %67 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ocfs2_clusters_for_bytes(%struct.TYPE_4__* %65, i64 %68)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i64 @ocfs2_clusters_to_blocks(%struct.TYPE_4__* %72, i32 %73)
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %74
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %62, %56
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %45
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @ocfs2_xattr_entry_real_size(i32, i64) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super*, i32, %struct.ocfs2_alloc_context**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(%struct.TYPE_4__*, i64) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
