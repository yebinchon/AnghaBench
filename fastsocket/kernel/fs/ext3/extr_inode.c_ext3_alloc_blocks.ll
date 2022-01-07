; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_alloc_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_alloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i64, i32, i32, i64*, i32*)* @ext3_alloc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_alloc_blocks(i32* %0, %struct.inode* %1, i64 %2, i32 %3, i32 %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %16, align 4
  br label %25

25:                                               ; preds = %7, %66
  %26 = load i32, i32* %16, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %18, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.inode*, %struct.inode** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32*, i32** %15, align 8
  %32 = call i64 @ext3_new_blocks(i32* %28, %struct.inode* %29, i64 %30, i64* %18, i32* %31)
  store i64 %32, i64* %20, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %77

37:                                               ; preds = %25
  %38 = load i64, i64* %18, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %52, %37
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i64, i64* %18, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i1 [ false, %43 ], [ %49, %47 ]
  br i1 %51, label %52, label %62

52:                                               ; preds = %50
  %53 = load i64, i64* %20, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %20, align 8
  %55 = load i64*, i64** %14, align 8
  %56 = load i32, i32* %19, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %19, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  store i64 %53, i64* %59, align 8
  %60 = load i64, i64* %18, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %18, align 8
  br label %43

62:                                               ; preds = %50
  %63 = load i64, i64* %18, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  br label %25

67:                                               ; preds = %65
  %68 = load i64, i64* %20, align 8
  %69 = load i64*, i64** %14, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %68, i64* %72, align 8
  %73 = load i64, i64* %18, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %21, align 4
  %75 = load i32*, i32** %15, align 8
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* %21, align 4
  store i32 %76, i32* %8, align 4
  br label %96

77:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %19, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = load i64*, i64** %14, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ext3_free_blocks(i32* %83, %struct.inode* %84, i64 %89, i32 1)
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  br label %78

94:                                               ; preds = %78
  %95 = load i32, i32* %21, align 4
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %67
  %97 = load i32, i32* %8, align 4
  ret i32 %97
}

declare dso_local i64 @ext3_new_blocks(i32*, %struct.inode*, i64, i64*, i32*) #1

declare dso_local i32 @ext3_free_blocks(i32*, %struct.inode*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
