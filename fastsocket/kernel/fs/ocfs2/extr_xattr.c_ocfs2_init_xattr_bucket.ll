; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_init_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_init_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xattr_bucket = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_xattr_bucket*, i64)* @ocfs2_init_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_init_xattr_bucket(%struct.ocfs2_xattr_bucket* %0, i64 %1) #0 {
  %3 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ocfs2_xattr_bucket* %0, %struct.ocfs2_xattr_bucket** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %71, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %7
  %14 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %15 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i32 @sb_getblk(i32 %18, i64 %22)
  %24 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %25 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  %30 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %31 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %13
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @mlog_errno(i32 %41)
  br label %74

43:                                               ; preds = %13
  %44 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 @INODE_CACHE(%struct.TYPE_2__* %46)
  %48 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %49 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ocfs2_buffer_uptodate(i32 %47, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %43
  %58 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %59 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = call i32 @INODE_CACHE(%struct.TYPE_2__* %60)
  %62 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %63 = getelementptr inbounds %struct.ocfs2_xattr_bucket, %struct.ocfs2_xattr_bucket* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %61, i32 %68)
  br label %70

70:                                               ; preds = %57, %43
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %7

74:                                               ; preds = %38, %7
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %3, align 8
  %79 = call i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @sb_getblk(i32, i64) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_buffer_uptodate(i32, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.TYPE_2__*) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
