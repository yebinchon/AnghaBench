; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_generic_file_llseek_unlocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_read_write.c_generic_file_llseek_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @generic_file_llseek_unlocked(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %35 [
    i32 128, label %15
    i32 129, label %22
  ]

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* %6, align 8
  br label %35

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %4, align 8
  br label %63

29:                                               ; preds = %22
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %3, %29, %15
  %36 = load i64, i64* %6, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %39, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38, %35
  %47 = load i64, i64* @EINVAL, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %4, align 8
  br label %63

49:                                               ; preds = %38
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.file*, %struct.file** %5, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %61, %46, %25
  %64 = load i64, i64* %4, align 8
  ret i64 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
