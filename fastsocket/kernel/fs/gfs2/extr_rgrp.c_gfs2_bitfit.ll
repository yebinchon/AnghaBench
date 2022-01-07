; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_bitfit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_bitfit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_bitmap = type { i32 }

@BFITNOENT = common dso_local global i32 0, align 4
@GFS2_NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.gfs2_bitmap*, i32, i8)* @gfs2_bitfit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_bitfit(i8* %0, %struct.gfs2_bitmap* %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gfs2_bitmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.gfs2_bitmap* %1, %struct.gfs2_bitmap** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = and i64 %18, 31
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %8, align 4
  %24 = ashr i32 %23, 5
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  store i32* %26, i32** %11, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %29 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ALIGN(i32 %30, i32 4)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %27, i64 %32
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** %12, align 8
  store i32 1431655765, i32* %14, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %14, align 4
  %37 = shl i32 %36, %35
  store i32 %37, i32* %14, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i8, i8* %9, align 1
  %41 = call i32 @gfs2_bit_search(i32* %38, i32 %39, i8 zeroext %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %11, align 8
  br label %44

44:                                               ; preds = %53, %4
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ult i32* %48, %49
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %59

53:                                               ; preds = %51
  %54 = load i32*, i32** %11, align 8
  %55 = load i8, i8* %9, align 1
  %56 = call i32 @gfs2_bit_search(i32* %54, i32 1431655765, i8 zeroext %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %11, align 8
  br label %44

59:                                               ; preds = %51
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = icmp eq i32* %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %59
  %64 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %65 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %67, 3
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %63
  %71 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %72 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = and i64 %74, 3
  %76 = mul i64 8, %75
  %77 = sub i64 64, %76
  %78 = trunc i64 %77 to i32
  %79 = ashr i32 -1, %78
  %80 = load i32, i32* %13, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %70, %63, %59
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @BFITNOENT, align 4
  store i32 %86, i32* %5, align 4
  br label %107

87:                                               ; preds = %82
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 -1
  store i32* %89, i32** %11, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @__ffs64(i32 %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = sdiv i32 %92, 2
  store i32 %93, i32* %15, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = bitcast i32* %94 to i8*
  %96 = load i8*, i8** %6, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = load i32, i32* @GFS2_NBBY, align 4
  %101 = sext i32 %100 to i64
  %102 = mul nsw i64 %99, %101
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %87, %85
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @gfs2_bit_search(i32*, i32, i8 zeroext) #1

declare dso_local i32 @__ffs64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
