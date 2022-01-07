; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rtime.c_jffs2_rtime_compress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_compr_rtime.c_jffs2_rtime_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32*, i8*)* @jffs2_rtime_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_rtime_compress(i8* %0, i8* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [256 x i16], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = getelementptr inbounds [256 x i16], [256 x i16]* %12, i64 0, i64 0
  %19 = call i32 @memset(i16* %18, i32 0, i32 512)
  br label %20

20:                                               ; preds = %94, %5
  %21 = load i32, i32* %14, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %13, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 2
  %30 = icmp sle i32 %26, %29
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi i1 [ false, %20 ], [ %30, %25 ]
  br i1 %32, label %33, label %102

33:                                               ; preds = %31
  store i32 0, i32* %16, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %17, align 1
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 %44, i8* %49, align 1
  %50 = load i8, i8* %17, align 1
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds [256 x i16], [256 x i16]* %12, i64 0, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = trunc i32 %55 to i16
  %57 = load i8, i8* %17, align 1
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds [256 x i16], [256 x i16]* %12, i64 0, i64 %58
  store i16 %56, i16* %59, align 2
  br label %60

60:                                               ; preds = %89, %33
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %75, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %69
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 255
  br label %87

87:                                               ; preds = %84, %69, %64, %60
  %88 = phi i1 [ false, %69 ], [ false, %64 ], [ false, %60 ], [ %86, %84 ]
  br i1 %88, label %89, label %94

89:                                               ; preds = %87
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %60

94:                                               ; preds = %87
  %95 = load i32, i32* %16, align 4
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  store i8 %96, i8* %101, align 1
  br label %20

102:                                              ; preds = %31
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 -1, i32* %6, align 4
  br label %112

107:                                              ; preds = %102
  %108 = load i32, i32* %14, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %107, %106
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @memset(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
