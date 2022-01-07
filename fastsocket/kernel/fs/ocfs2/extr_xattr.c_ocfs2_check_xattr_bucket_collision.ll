; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_check_xattr_bucket_collision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_check_xattr_bucket_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }
%struct.ocfs2_xattr_header = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Too much hash collision in xattr bucket %llu, hash = %u\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_xattr_bucket*, i8*)* @ocfs2_check_xattr_bucket_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_check_xattr_bucket_collision(%struct.inode* %0, %struct.ocfs2_xattr_bucket* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ocfs2_xattr_header*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_xattr_bucket* %1, %struct.ocfs2_xattr_bucket** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %11 = call %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket* %10)
  store %struct.ocfs2_xattr_header* %11, %struct.ocfs2_xattr_header** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = call i64 @ocfs2_xattr_name_hash(%struct.inode* %12, i8* %13, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  %19 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @le32_to_cpu(i64 %23)
  %25 = icmp ne i64 %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

27:                                               ; preds = %3
  %28 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  %29 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  %32 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le16_to_cpu(i32 %33)
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %39, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %27
  %48 = load i32, i32* @ML_ERROR, align 4
  %49 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %6, align 8
  %50 = call i64 @bucket_blkno(%struct.ocfs2_xattr_bucket* %49)
  %51 = load %struct.ocfs2_xattr_header*, %struct.ocfs2_xattr_header** %8, align 8
  %52 = getelementptr inbounds %struct.ocfs2_xattr_header, %struct.ocfs2_xattr_header* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @le32_to_cpu(i64 %56)
  %58 = call i32 @mlog(i32 %48, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %50, i64 %57)
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %47, %26
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ocfs2_xattr_header* @bucket_xh(%struct.ocfs2_xattr_bucket*) #1

declare dso_local i64 @ocfs2_xattr_name_hash(%struct.inode*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i64 @bucket_blkno(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
