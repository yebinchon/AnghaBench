; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_max_bitmap_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_max_bitmap_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXT4_NDIR_BLOCKS = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ext4_max_bitmap_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_max_bitmap_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @EXT4_NDIR_BLOCKS, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 9
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, %13
  store i32 %15, i32* %7, align 4
  br label %17

16:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %11
  store i32 1, i32* %6, align 4
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 2
  %20 = zext i32 %19 to i64
  %21 = shl i64 1, %20
  %22 = add nsw i64 1, %21
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %27, 2
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  %31 = add nsw i64 1, %30
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 2
  %34 = mul nsw i32 2, %33
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = add nsw i64 %31, %36
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 %48, 2
  %50 = zext i32 %49 to i64
  %51 = shl i64 1, %50
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 %56, 2
  %58 = mul nsw i32 2, %57
  %59 = zext i32 %58 to i64
  %60 = shl i64 1, %59
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %3, align 4
  %66 = sub nsw i32 %65, 2
  %67 = mul nsw i32 3, %66
  %68 = zext i32 %67 to i64
  %69 = shl i64 1, %68
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %5, align 4
  %76 = shl i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %17
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %17
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
