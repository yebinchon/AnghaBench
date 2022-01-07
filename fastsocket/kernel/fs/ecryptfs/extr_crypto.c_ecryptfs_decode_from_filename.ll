; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_decode_from_filename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_crypto.c_ecryptfs_decode_from_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filename_rev_map = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i8*, i64)* @ecryptfs_decode_from_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecryptfs_decode_from_filename(i8* %0, i64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, 1
  %18 = mul i64 %17, 3
  %19 = udiv i64 %18, 4
  %20 = load i64*, i64** %6, align 8
  store i64 %19, i64* %20, align 8
  br label %104

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %98, %21
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %101

26:                                               ; preds = %22
  %27 = load i8*, i8** @filename_rev_map, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %27, i64 %33
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %12, align 1
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %98 [
    i32 0, label %37
    i32 6, label %45
    i32 4, label %65
    i32 2, label %84
  ]

37:                                               ; preds = %26
  %38 = load i8, i8* %12, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %39, 2
  %41 = trunc i32 %40 to i8
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %41, i8* %44, align 1
  store i32 6, i32* %9, align 4
  br label %98

45:                                               ; preds = %26
  %46 = load i8, i8* %12, align 1
  %47 = zext i8 %46 to i32
  %48 = ashr i32 %47, 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %11, align 8
  %52 = getelementptr inbounds i8, i8* %49, i64 %50
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, %48
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  %57 = load i8, i8* %12, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 15
  %60 = shl i32 %59, 4
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 %61, i8* %64, align 1
  store i32 4, i32* %9, align 4
  br label %98

65:                                               ; preds = %26
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = ashr i32 %67, 2
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %11, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %11, align 8
  %72 = getelementptr inbounds i8, i8* %69, i64 %70
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %68
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %72, align 1
  %77 = load i8, i8* %12, align 1
  %78 = zext i8 %77 to i32
  %79 = shl i32 %78, 6
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %5, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 %80, i8* %83, align 1
  store i32 2, i32* %9, align 4
  br label %98

84:                                               ; preds = %26
  %85 = load i8, i8* %12, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %11, align 8
  %90 = getelementptr inbounds i8, i8* %87, i64 %88
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %92, %86
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %90, align 1
  %95 = load i8*, i8** %5, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8 0, i8* %97, align 1
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %26, %84, %65, %45, %37
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %22

101:                                              ; preds = %22
  %102 = load i64, i64* %11, align 8
  %103 = load i64*, i64** %6, align 8
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
