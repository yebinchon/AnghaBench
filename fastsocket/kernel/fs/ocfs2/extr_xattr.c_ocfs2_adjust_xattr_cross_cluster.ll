; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_adjust_xattr_cross_cluster.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_adjust_xattr_cross_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"adjust xattrs from cluster %llu len %u to %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket*, i64, i32, i32*, i32*)* @ocfs2_adjust_xattr_cross_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_adjust_xattr_cross_cluster(%struct.inode* %0, i32* %1, %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket* %3, i64 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %12 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.ocfs2_xattr_bucket* %2, %struct.ocfs2_xattr_bucket** %11, align 8
  store %struct.ocfs2_xattr_bucket* %3, %struct.ocfs2_xattr_bucket** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %20 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %19)
  %21 = load i32, i32* %14, align 4
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21, i64 %22)
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @OCFS2_SB(i32 %26)
  %28 = call i32 @ocfs2_xattr_buckets_per_cluster(i32 %27)
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %45

30:                                               ; preds = %8
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %34 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @ocfs2_mv_xattr_bucket_cross_cluster(%struct.inode* %31, i32* %32, %struct.ocfs2_xattr_bucket* %33, %struct.ocfs2_xattr_bucket* %34, i64 %35, i32 %36, i32* %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %44

44:                                               ; preds = %41, %30
  br label %103

45:                                               ; preds = %8
  %46 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %47 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %46)
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ocfs2_clusters_to_blocks(i32 %52, i32 1)
  %54 = mul nsw i32 %49, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %47, %55
  store i64 %56, i64* %18, align 8
  %57 = load i32, i32* %14, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %79

59:                                               ; preds = %45
  %60 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %12, align 8
  %61 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %60)
  %62 = load i64, i64* %18, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %11, align 8
  %68 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %67)
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @ocfs2_mv_xattr_buckets(%struct.inode* %65, i32* %66, i64 %68, i64 %69, i64 %70, i32 0, i32* %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @mlog_errno(i32 %76)
  br label %78

78:                                               ; preds = %75, %64
  br label %102

79:                                               ; preds = %59, %45
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* %13, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @ocfs2_divide_xattr_cluster(%struct.inode* %80, i32* %81, i64 %82, i64 %83, i32* %84)
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %91

91:                                               ; preds = %88, %79
  %92 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %12, align 8
  %93 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %92)
  %94 = load i64, i64* %18, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32*, i32** %16, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32*, i32** %16, align 8
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %96, %91
  br label %102

102:                                              ; preds = %101, %78
  br label %103

103:                                              ; preds = %102, %44
  %104 = load i32, i32* %17, align 4
  ret i32 %104
}

declare dso_local i32 @mlog(i32, i8*, i64, i32, i64) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_buckets_per_cluster(i32) #1

declare dso_local i32 @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_mv_xattr_bucket_cross_cluster(%struct.inode*, i32*, %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket*, i64, i32, i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_clusters_to_blocks(i32, i32) #1

declare dso_local i32 @ocfs2_mv_xattr_buckets(%struct.inode*, i32*, i64, i64, i64, i32, i32*) #1

declare dso_local i32 @ocfs2_divide_xattr_cluster(%struct.inode*, i32*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
