; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_output_big_sleb128.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_output_big_sleb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LITTLENUM_MASK = common dso_local global i32 0, align 4
@LITTLENUM_NUMBER_OF_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @output_big_sleb128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_big_sleb128(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %36, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LITTLENUM_MASK, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @LITTLENUM_MASK, align 4
  %32 = sdiv i32 %31, 2
  %33 = icmp sgt i32 %30, %32
  br label %34

34:                                               ; preds = %24, %15, %12
  %35 = phi i1 [ false, %15 ], [ false, %12 ], [ %33, %24 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  br label %12

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %101, %39
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load i64, i64* @LITTLENUM_NUMBER_OF_BITS, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  br label %56

56:                                               ; preds = %98, %40
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 127
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 7
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = ashr i32 %61, 7
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = and i32 %67, 64
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %75

71:                                               ; preds = %65
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  br label %75

75:                                               ; preds = %71, %70
  %76 = phi i32 [ 0, %70 ], [ %74, %71 ]
  %77 = icmp ne i32 %66, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %56
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, 128
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i8*, i8** %7, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32, i32* %10, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %4, align 8
  store i8 %86, i8* %87, align 1
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = icmp sge i32 %96, 7
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi i1 [ false, %91 ], [ %97, %95 ]
  br i1 %99, label %56, label %100

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %40, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  %106 = and i32 %105, 128
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = sub nsw i32 %110, 1
  %112 = shl i32 1, %111
  %113 = and i32 %109, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load i32, i32* %9, align 4
  %117 = shl i32 -1, %116
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %115, %108
  %121 = load i8*, i8** %7, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = and i32 %124, 127
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %4, align 8
  store i8 %126, i8* %127, align 1
  br label %128

128:                                              ; preds = %123, %120
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %4, align 8
  br label %131

131:                                              ; preds = %128, %104
  %132 = load i8*, i8** %4, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  ret i32 %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
