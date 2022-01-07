; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_get_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_get_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i64 0, align 8
@encoding_bytes = common dso_local global i32 0, align 4
@encoding = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i8**)* @get_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_char(i32* %0, i32* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [4 x i8], align 1
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i64, i64* @EOF, align 8
  store i64 %14, i64* %12, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %56, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @encoding_bytes, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load i8**, i8*** %9, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %10, align 4
  br label %47

32:                                               ; preds = %19
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i64, i64* @EOF, align 8
  store i64 %36, i64* %5, align 8
  br label %130

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @getc(i32* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @EOF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @EOF, align 8
  store i64 %45, i64* %5, align 8
  br label %130

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %10, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %54
  store i8 %52, i8* %55, align 1
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %15

59:                                               ; preds = %15
  %60 = load i32, i32* @encoding, align 4
  switch i32 %60, label %123 [
    i32 83, label %61
    i32 115, label %61
    i32 98, label %65
    i32 108, label %75
    i32 66, label %85
    i32 76, label %104
  ]

61:                                               ; preds = %59, %59
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i64
  store i64 %64, i64* %12, align 8
  br label %123

65:                                               ; preds = %59
  %66 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 8
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = or i32 %69, %72
  %74 = sext i32 %73 to i64
  store i64 %74, i64* %12, align 8
  br label %123

75:                                               ; preds = %59
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 8
  %83 = or i32 %78, %82
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %12, align 8
  br label %123

85:                                               ; preds = %59
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i64
  %89 = shl i64 %88, 24
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i64
  %93 = shl i64 %92, 16
  %94 = or i64 %89, %93
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = shl i64 %97, 8
  %99 = or i64 %94, %98
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  %103 = or i64 %99, %102
  store i64 %103, i64* %12, align 8
  br label %123

104:                                              ; preds = %59
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i64
  %111 = shl i64 %110, 8
  %112 = or i64 %107, %111
  %113 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i64
  %116 = shl i64 %115, 16
  %117 = or i64 %112, %116
  %118 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 3
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i64
  %121 = shl i64 %120, 24
  %122 = or i64 %117, %121
  store i64 %122, i64* %12, align 8
  br label %123

123:                                              ; preds = %59, %104, %85, %75, %65, %61
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* @EOF, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i64 0, i64* %5, align 8
  br label %130

128:                                              ; preds = %123
  %129 = load i64, i64* %12, align 8
  store i64 %129, i64* %5, align 8
  br label %130

130:                                              ; preds = %128, %127, %44, %35
  %131 = load i64, i64* %5, align 8
  ret i64 %131
}

declare dso_local i32 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
