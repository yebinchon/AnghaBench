; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_file.c_ext4_llseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_file.c_ext4_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext4_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %17 = call i32 @ext4_test_inode_flag(%struct.inode* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call %struct.TYPE_5__* @EXT4_SB(%struct.TYPE_6__* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  br label %32

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %60 [
    i32 128, label %37
    i32 129, label %44
  ]

37:                                               ; preds = %32
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %6, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %60

44:                                               ; preds = %32
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %4, align 8
  br label %90

54:                                               ; preds = %44
  %55 = load %struct.file*, %struct.file** %5, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %6, align 8
  br label %60

60:                                               ; preds = %32, %54, %37
  %61 = load i64, i64* %6, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %63, %60
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i64, i64* @EINVAL, align 8
  %72 = sub nsw i64 0, %71
  store i64 %72, i64* %4, align 8
  br label %90

73:                                               ; preds = %63
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.file*, %struct.file** %5, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.file*, %struct.file** %5, align 8
  %84 = getelementptr inbounds %struct.file, %struct.file* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %79, %73
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i64, i64* %6, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %85, %67, %47
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_5__* @EXT4_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
