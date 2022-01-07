; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/strings/extr_strings.c_getcharacter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/strings/extr_strings.c_getcharacter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@encoding_size = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@encoding = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getcharacter(i32* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @encoding_size, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @getc(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @EOF, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %100

20:                                               ; preds = %13
  %21 = load i32, i32* %7, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 %24
  store i8 %22, i8* %25, align 1
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* @encoding, align 4
  switch i32 %30, label %98 [
    i32 129, label %31
    i32 128, label %31
    i32 133, label %36
    i32 132, label %47
    i32 131, label %58
    i32 130, label %78
  ]

31:                                               ; preds = %29, %29
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i64
  %35 = load i64*, i64** %5, align 8
  store i64 %34, i64* %35, align 8
  br label %99

36:                                               ; preds = %29
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = or i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %5, align 8
  store i64 %45, i64* %46, align 8
  br label %99

47:                                               ; preds = %29
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = shl i32 %53, 8
  %55 = or i32 %50, %54
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  br label %99

58:                                               ; preds = %29
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i64
  %62 = shl i64 %61, 24
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i64
  %66 = shl i64 %65, 16
  %67 = or i64 %62, %66
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i64
  %71 = shl i64 %70, 8
  %72 = or i64 %67, %71
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i64
  %76 = or i64 %72, %75
  %77 = load i64*, i64** %5, align 8
  store i64 %76, i64* %77, align 8
  br label %99

78:                                               ; preds = %29
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i64
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i64
  %85 = shl i64 %84, 8
  %86 = or i64 %81, %85
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i64
  %90 = shl i64 %89, 16
  %91 = or i64 %86, %90
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 3
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i64
  %95 = shl i64 %94, 24
  %96 = or i64 %91, %95
  %97 = load i64*, i64** %5, align 8
  store i64 %96, i64* %97, align 8
  br label %99

98:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %100

99:                                               ; preds = %78, %58, %47, %36, %31
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %98, %19
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
