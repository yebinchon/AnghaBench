; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_half_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_side.c_print_half_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outfile = common dso_local global i32* null, align 8
@tabsize = common dso_local global i64 0, align 8
@expand_tabs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8**, i64, i64)* @print_half_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @print_half_line(i8** %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32*, i32** @outfile, align 8
  store i32* %16, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %147, %3
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp ult i8* %24, %25
  br i1 %26, label %27, label %148

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %11, align 8
  %30 = load i8, i8* %28, align 1
  store i8 %30, i8* %13, align 1
  %31 = load i8, i8* %13, align 1
  %32 = zext i8 %31 to i32
  switch i32 %32, label %128 [
    i32 9, label %33
    i32 13, label %81
    i32 8, label %87
    i32 12, label %118
    i32 11, label %118
    i32 32, label %134
    i32 10, label %145
  ]

33:                                               ; preds = %27
  %34 = load i64, i64* @tabsize, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @tabsize, align 8
  %37 = urem i64 %35, %36
  %38 = sub i64 %34, %37
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %77

42:                                               ; preds = %33
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %15, align 8
  %46 = load i32, i32* @expand_tabs, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  store i64 %53, i64* %15, align 8
  br label %54

54:                                               ; preds = %52, %48
  br label %55

55:                                               ; preds = %62, %54
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %15, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @putc(i8 zeroext 32, i32* %60)
  br label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %10, align 8
  br label %55

65:                                               ; preds = %55
  br label %76

66:                                               ; preds = %42
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i64, i64* %15, align 8
  store i64 %71, i64* %10, align 8
  %72 = load i8, i8* %13, align 1
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @putc(i8 zeroext %72, i32* %73)
  br label %75

75:                                               ; preds = %70, %66
  br label %76

76:                                               ; preds = %75, %65
  br label %77

77:                                               ; preds = %76, %33
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %9, align 8
  br label %147

81:                                               ; preds = %27
  %82 = load i8, i8* %13, align 1
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @putc(i8 zeroext %82, i32* %83)
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @tab_from_to(i32 0, i64 %85)
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %147

87:                                               ; preds = %27
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %87
  %91 = load i64, i64* %9, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %9, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %9, align 8
  %98 = icmp ule i64 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  br label %100

100:                                              ; preds = %107, %99
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @putc(i8 zeroext 32, i32* %105)
  br label %107

107:                                              ; preds = %104
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %100

110:                                              ; preds = %100
  br label %116

111:                                              ; preds = %95
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %10, align 8
  %113 = load i8, i8* %13, align 1
  %114 = load i32*, i32** %8, align 8
  %115 = call i32 @putc(i8 zeroext %113, i32* %114)
  br label %116

116:                                              ; preds = %111, %110
  br label %117

117:                                              ; preds = %116, %90, %87
  br label %147

118:                                              ; preds = %27, %27
  br label %119

119:                                              ; preds = %132, %118
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %7, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i8, i8* %13, align 1
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @putc(i8 zeroext %124, i32* %125)
  br label %127

127:                                              ; preds = %123, %119
  br label %147

128:                                              ; preds = %27
  %129 = load i8, i8* %13, align 1
  %130 = call i32 @isprint(i8 zeroext %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  br label %119

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %27, %133
  %135 = load i64, i64* %9, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %7, align 8
  %138 = icmp ult i64 %135, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load i64, i64* %9, align 8
  store i64 %140, i64* %10, align 8
  %141 = load i8, i8* %13, align 1
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @putc(i8 zeroext %141, i32* %142)
  br label %144

144:                                              ; preds = %139, %134
  br label %147

145:                                              ; preds = %27
  %146 = load i64, i64* %10, align 8
  store i64 %146, i64* %4, align 8
  br label %150

147:                                              ; preds = %144, %127, %117, %81, %77
  br label %23

148:                                              ; preds = %23
  %149 = load i64, i64* %10, align 8
  store i64 %149, i64* %4, align 8
  br label %150

150:                                              ; preds = %148, %145
  %151 = load i64, i64* %4, align 8
  ret i64 %151
}

declare dso_local i32 @putc(i8 zeroext, i32*) #1

declare dso_local i32 @tab_from_to(i32, i64) #1

declare dso_local i32 @isprint(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
