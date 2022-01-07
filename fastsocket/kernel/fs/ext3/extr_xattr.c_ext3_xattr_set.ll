; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr.c_ext3_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_xattr_set(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %51, %6
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @EXT3_DATA_TRANS_BLOCKS(i32 %21)
  %23 = call i32* @ext3_journal_start(%struct.inode* %18, i32 %22)
  store i32* %23, i32** %13, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i64 @IS_ERR(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @PTR_ERR(i32* %28)
  store i32 %29, i32* %14, align 4
  br label %58

30:                                               ; preds = %17
  %31 = load i32*, i32** %13, align 8
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ext3_xattr_set_handle(i32* %31, %struct.inode* %32, i32 %33, i8* %34, i8* %35, i64 %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @ext3_journal_stop(i32* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @ext3_should_retry_alloc(i32 %48, i32* %15)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %17

52:                                               ; preds = %45, %30
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i32, i32* %14, align 4
  ret i32 %59
}

declare dso_local i32* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @EXT3_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ext3_xattr_set_handle(i32*, %struct.inode*, i32, i8*, i8*, i64, i32) #1

declare dso_local i32 @ext3_journal_stop(i32*) #1

declare dso_local i64 @ext3_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
