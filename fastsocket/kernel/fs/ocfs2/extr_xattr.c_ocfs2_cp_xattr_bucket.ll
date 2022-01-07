; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_cp_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_cp_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_xattr_bucket = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"cp bucket %llu to %llu, target is %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i64, i64, i32)* @ocfs2_cp_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_cp_xattr_bucket(%struct.inode* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_xattr_bucket*, align 8
  %13 = alloca %struct.ocfs2_xattr_bucket*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store %struct.ocfs2_xattr_bucket* null, %struct.ocfs2_xattr_bucket** %12, align 8
  store %struct.ocfs2_xattr_bucket* null, %struct.ocfs2_xattr_bucket** %13, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %20, i32 %21)
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = call %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %23)
  store %struct.ocfs2_xattr_bucket* %24, %struct.ocfs2_xattr_bucket** %12, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode* %25)
  store %struct.ocfs2_xattr_bucket* %26, %struct.ocfs2_xattr_bucket** %13, align 8
  %27 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %12, align 8
  %28 = icmp ne %struct.ocfs2_xattr_bucket* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %13, align 8
  %31 = icmp ne %struct.ocfs2_xattr_bucket* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29, %5
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @mlog_errno(i32 %35)
  br label %73

37:                                               ; preds = %29
  %38 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket* %38, i64 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %73

44:                                               ; preds = %37
  %45 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %13, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @ocfs2_init_xattr_bucket(%struct.ocfs2_xattr_bucket* %45, i64 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %73

51:                                               ; preds = %44
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %52, %struct.ocfs2_xattr_bucket* %53, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %73

66:                                               ; preds = %60
  %67 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %13, align 8
  %68 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %12, align 8
  %69 = call i32 @ocfs2_xattr_bucket_copy_data(%struct.ocfs2_xattr_bucket* %67, %struct.ocfs2_xattr_bucket* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %13, align 8
  %72 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %70, %struct.ocfs2_xattr_bucket* %71)
  br label %73

73:                                               ; preds = %66, %65, %50, %43, %32
  %74 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %13, align 8
  %75 = call i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %74)
  %76 = load %struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket** %12, align 8
  %77 = call i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket* %76)
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64, i32) #1

declare dso_local %struct.ocfs2_xattr_bucket* @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.ocfs2_xattr_bucket*, i64) #1

declare dso_local i32 @ocfs2_init_xattr_bucket(%struct.ocfs2_xattr_bucket*, i64) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, %struct.ocfs2_xattr_bucket*, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_copy_data(%struct.ocfs2_xattr_bucket*, %struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, %struct.ocfs2_xattr_bucket*) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(%struct.ocfs2_xattr_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
