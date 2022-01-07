; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_fill_with_dentries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_fill_with_dentries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_dentry_buf = type { i64, %struct.dentry**, %struct.TYPE_8__* }
%struct.dentry = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"xattr-20003\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Corrupted directory: xattr %s listed but not found for file %s.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32)* @fill_with_dentries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_with_dentries(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.reiserfs_dentry_buf*, align 8
  %15 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.reiserfs_dentry_buf*
  store %struct.reiserfs_dentry_buf* %17, %struct.reiserfs_dentry_buf** %14, align 8
  %18 = load %struct.reiserfs_dentry_buf*, %struct.reiserfs_dentry_buf** %14, align 8
  %19 = getelementptr inbounds %struct.reiserfs_dentry_buf, %struct.reiserfs_dentry_buf* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @mutex_is_locked(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON_ONCE(i32 %27)
  %29 = load %struct.reiserfs_dentry_buf*, %struct.reiserfs_dentry_buf** %14, align 8
  %30 = getelementptr inbounds %struct.reiserfs_dentry_buf, %struct.reiserfs_dentry_buf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.reiserfs_dentry_buf*, %struct.reiserfs_dentry_buf** %14, align 8
  %33 = getelementptr inbounds %struct.reiserfs_dentry_buf, %struct.reiserfs_dentry_buf* %32, i32 0, i32 1
  %34 = load %struct.dentry**, %struct.dentry*** %33, align 8
  %35 = call i64 @ARRAY_SIZE(%struct.dentry** %34)
  %36 = icmp eq i64 %31, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %6
  %38 = load i32, i32* @ENOSPC, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %113

40:                                               ; preds = %6
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %46, label %65

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %46
  store i32 0, i32* %7, align 4
  br label %113

65:                                               ; preds = %58, %52, %40
  %66 = load i8*, i8** %9, align 8
  %67 = load %struct.reiserfs_dentry_buf*, %struct.reiserfs_dentry_buf** %14, align 8
  %68 = getelementptr inbounds %struct.reiserfs_dentry_buf, %struct.reiserfs_dentry_buf* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call %struct.dentry* @lookup_one_len(i8* %66, %struct.TYPE_8__* %69, i32 %70)
  store %struct.dentry* %71, %struct.dentry** %15, align 8
  %72 = load %struct.dentry*, %struct.dentry** %15, align 8
  %73 = call i64 @IS_ERR(%struct.dentry* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.dentry*, %struct.dentry** %15, align 8
  %77 = call i32 @PTR_ERR(%struct.dentry* %76)
  store i32 %77, i32* %7, align 4
  br label %113

78:                                               ; preds = %65
  %79 = load %struct.dentry*, %struct.dentry** %15, align 8
  %80 = getelementptr inbounds %struct.dentry, %struct.dentry* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %78
  %84 = load %struct.dentry*, %struct.dentry** %15, align 8
  %85 = getelementptr inbounds %struct.dentry, %struct.dentry* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dentry*, %struct.dentry** %15, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.reiserfs_dentry_buf*, %struct.reiserfs_dentry_buf** %14, align 8
  %92 = getelementptr inbounds %struct.reiserfs_dentry_buf, %struct.reiserfs_dentry_buf* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @reiserfs_error(i32 %86, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %96)
  %98 = load %struct.dentry*, %struct.dentry** %15, align 8
  %99 = call i32 @dput(%struct.dentry* %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %7, align 4
  br label %113

102:                                              ; preds = %78
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.dentry*, %struct.dentry** %15, align 8
  %105 = load %struct.reiserfs_dentry_buf*, %struct.reiserfs_dentry_buf** %14, align 8
  %106 = getelementptr inbounds %struct.reiserfs_dentry_buf, %struct.reiserfs_dentry_buf* %105, i32 0, i32 1
  %107 = load %struct.dentry**, %struct.dentry*** %106, align 8
  %108 = load %struct.reiserfs_dentry_buf*, %struct.reiserfs_dentry_buf** %14, align 8
  %109 = getelementptr inbounds %struct.reiserfs_dentry_buf, %struct.reiserfs_dentry_buf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  %112 = getelementptr inbounds %struct.dentry*, %struct.dentry** %107, i64 %110
  store %struct.dentry* %104, %struct.dentry** %112, align 8
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %103, %83, %75, %64, %37
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.dentry**) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @reiserfs_error(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
