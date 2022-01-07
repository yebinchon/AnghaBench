; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_ihex_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_ascii.c_ihex_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32*, i32*, i64*)* @ihex_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ihex_read(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  %19 = load i64*, i64** %13, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %16, align 4
  store i32 1, i32* %18, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @read_num(i8* %20, i32* %18, i32* %14, i32 1, i32* %16)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %121

24:                                               ; preds = %6
  %25 = load i8*, i8** %8, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i64 @read_num(i8* %25, i32* %18, i32* %26, i32 2, i32* %16)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %121

30:                                               ; preds = %24
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %18, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %18, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 48
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 -1, i32* %7, align 4
  br label %121

40:                                               ; preds = %30
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %18, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %18, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %9, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sub nsw i32 %50, 48
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %16, align 4
  %54 = load i8*, i8** %9, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  switch i32 %56, label %109 [
    i32 48, label %57
    i32 49, label %82
    i32 50, label %87
    i32 52, label %87
    i32 51, label %98
    i32 53, label %98
  ]

57:                                               ; preds = %40
  store i32 0, i32* %17, align 4
  br label %58

58:                                               ; preds = %75, %57
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i8*, i8** %8, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i64 @read_num(i8* %63, i32* %18, i32* %64, i32 1, i32* %16)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 -1, i32* %7, align 4
  br label %121

68:                                               ; preds = %62
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %58

78:                                               ; preds = %58
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %13, align 8
  store i64 %80, i64* %81, align 8
  br label %110

82:                                               ; preds = %40
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 -1, i32* %7, align 4
  br label %121

86:                                               ; preds = %82
  br label %110

87:                                               ; preds = %40, %40
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 -1, i32* %7, align 4
  br label %121

91:                                               ; preds = %87
  %92 = load i8*, i8** %8, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i64 @read_num(i8* %92, i32* %18, i32* %93, i32 2, i32* %16)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 -1, i32* %7, align 4
  br label %121

97:                                               ; preds = %91
  br label %110

98:                                               ; preds = %40, %40
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 4
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 -1, i32* %7, align 4
  br label %121

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i64 @read_num(i8* %103, i32* %18, i32* %104, i32 4, i32* %16)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i32 -1, i32* %7, align 4
  br label %121

108:                                              ; preds = %102
  br label %110

109:                                              ; preds = %40
  store i32 -1, i32* %7, align 4
  br label %121

110:                                              ; preds = %108, %97, %86, %78
  %111 = load i8*, i8** %8, align 8
  %112 = call i64 @read_num(i8* %111, i32* %18, i32* %15, i32 1, i32* %16)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 -1, i32* %7, align 4
  br label %121

115:                                              ; preds = %110
  %116 = load i32, i32* %16, align 4
  %117 = and i32 %116, 255
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  store i32 -1, i32* %7, align 4
  br label %121

120:                                              ; preds = %115
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %120, %119, %114, %109, %107, %101, %96, %90, %85, %67, %39, %29, %23
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i64 @read_num(i8*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
