; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_dir.c_ext4_dir_llseek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_dir.c_ext4_dir_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext4_dir_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %7, align 8
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %8, align 8
  %17 = load %struct.inode*, %struct.inode** %7, align 8
  %18 = call i32 @is_dx_dir(%struct.inode* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %59 [
    i32 128, label %23
    i32 129, label %46
  ]

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = icmp sgt i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %101

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = call i64 @ext4_get_htree_eof(%struct.file* %34)
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %45

38:                                               ; preds = %30
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %5, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %38, %33
  br label %59

46:                                               ; preds = %3
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.file*, %struct.file** %4, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %5, align 8
  br label %99

53:                                               ; preds = %46
  %54 = load %struct.file*, %struct.file** %4, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %3, %53, %45
  %60 = load i64, i64* %5, align 8
  %61 = icmp slt i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %101

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %101

78:                                               ; preds = %69
  br label %86

79:                                               ; preds = %66
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.file*, %struct.file** %4, align 8
  %82 = call i64 @ext4_get_htree_eof(%struct.file* %81)
  %83 = icmp sgt i64 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %101

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %78
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.file*, %struct.file** %4, align 8
  %89 = getelementptr inbounds %struct.file, %struct.file* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.file*, %struct.file** %4, align 8
  %95 = getelementptr inbounds %struct.file, %struct.file* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.file*, %struct.file** %4, align 8
  %97 = getelementptr inbounds %struct.file, %struct.file* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %92, %86
  br label %99

99:                                               ; preds = %98, %49
  %100 = load i64, i64* %5, align 8
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %99, %84, %77, %65, %29
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i64, i64* %8, align 8
  ret i64 %105
}

declare dso_local i32 @is_dx_dir(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ext4_get_htree_eof(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
