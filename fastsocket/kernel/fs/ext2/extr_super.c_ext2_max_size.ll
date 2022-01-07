; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_max_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_super.c_ext2_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT2_NDIR_BLOCKS = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ext2_max_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_max_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @EXT2_NDIR_BLOCKS, align 4
  store i32 %6, i32* %3, align 4
  store i32 -1, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 %7, 9
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, %8
  store i32 %10, i32* %5, align 4
  store i32 1, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sub nsw i32 %11, 2
  %13 = zext i32 %12 to i64
  %14 = shl i64 1, %13
  %15 = add nsw i64 1, %14
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %15
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 %20, 2
  %22 = zext i32 %21 to i64
  %23 = shl i64 1, %22
  %24 = add nsw i64 1, %23
  %25 = load i32, i32* %2, align 4
  %26 = sub nsw i32 %25, 2
  %27 = mul nsw i32 2, %26
  %28 = zext i32 %27 to i64
  %29 = shl i64 1, %28
  %30 = add nsw i64 %24, %29
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %2, align 4
  %42 = sub nsw i32 %41, 2
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %2, align 4
  %50 = sub nsw i32 %49, 2
  %51 = mul nsw i32 2, %50
  %52 = zext i32 %51 to i64
  %53 = shl i64 1, %52
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %2, align 4
  %59 = sub nsw i32 %58, 2
  %60 = mul nsw i32 3, %59
  %61 = zext i32 %60 to i64
  %62 = shl i64 1, %61
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %3, align 4
  %69 = shl i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %1
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %1
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
