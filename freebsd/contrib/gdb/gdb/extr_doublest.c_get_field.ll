; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_get_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_get_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floatformat_little = common dso_local global i32 0, align 4
@floatformat_littlebyte_bigword = common dso_local global i32 0, align 4
@FLOATFORMAT_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32, i32, i32)* @get_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_field(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @floatformat_little, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @floatformat_littlebyte_bigword, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18, %5
  %23 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %26 = urem i32 %24, %25
  %27 = sub i32 %23, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %30 = udiv i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %31, %32
  %34 = load i32, i32* %14, align 4
  %35 = add i32 %33, %34
  %36 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %37 = udiv i32 %35, %36
  %38 = sub i32 %30, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %39, %40
  %42 = load i32, i32* %14, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %45 = urem i32 %43, %44
  %46 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %13, align 4
  br label %61

48:                                               ; preds = %18
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %49, %50
  %52 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %53 = udiv i32 %51, %52
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %54, %55
  %57 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %58 = urem i32 %56, %57
  %59 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %48, %22
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %64 = sub i32 0, %63
  %65 = icmp ugt i32 %62, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 0, %73
  %75 = ashr i32 %72, %74
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %11, align 8
  br label %78

77:                                               ; preds = %61
  store i64 0, i64* %11, align 8
  br label %78

78:                                               ; preds = %77, %66
  %79 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @floatformat_little, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @floatformat_littlebyte_bigword, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %78
  %90 = load i32, i32* %12, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %128, %95
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %96
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %12, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i64
  %107 = load i32, i32* %13, align 4
  %108 = zext i32 %107 to i64
  %109 = shl i64 %106, %108
  %110 = load i64, i64* %11, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %11, align 8
  %112 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @floatformat_little, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @floatformat_littlebyte_bigword, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118, %100
  %123 = load i32, i32* %12, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %12, align 4
  br label %128

125:                                              ; preds = %118
  %126 = load i32, i32* %12, align 4
  %127 = add i32 %126, -1
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %125, %122
  br label %96

129:                                              ; preds = %96
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %133 = zext i32 %132 to i64
  %134 = mul i64 8, %133
  %135 = icmp ult i64 %131, %134
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = shl i64 1, %138
  %140 = sub i64 %139, 1
  %141 = load i64, i64* %11, align 8
  %142 = and i64 %141, %140
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %136, %129
  %144 = load i64, i64* %11, align 8
  ret i64 %144
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
