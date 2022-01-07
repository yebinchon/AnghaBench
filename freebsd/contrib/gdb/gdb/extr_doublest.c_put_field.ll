; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_put_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_put_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floatformat_little = common dso_local global i32 0, align 4
@floatformat_littlebyte_bigword = common dso_local global i32 0, align 4
@FLOATFORMAT_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32, i64)* @put_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_field(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @floatformat_little, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @floatformat_littlebyte_bigword, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %19, %6
  %24 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %27 = urem i32 %25, %26
  %28 = sub i32 %24, %27
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %31 = udiv i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %32, %33
  %35 = load i32, i32* %15, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %38 = udiv i32 %36, %37
  %39 = sub i32 %31, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add i32 %40, %41
  %43 = load i32, i32* %15, align 4
  %44 = add i32 %42, %43
  %45 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %46 = urem i32 %44, %45
  %47 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %48 = sub i32 %46, %47
  store i32 %48, i32* %14, align 4
  br label %62

49:                                               ; preds = %19
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %50, %51
  %53 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %54 = udiv i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %55, %56
  %58 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %59 = urem i32 %57, %58
  %60 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %49, %23
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %65 = sub i32 0, %64
  %66 = icmp ugt i32 %63, %65
  br i1 %66, label %67, label %105

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %68, %69
  %71 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %72 = urem i32 %70, %71
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %14, align 4
  %76 = sub nsw i32 0, %75
  %77 = shl i32 %74, %76
  %78 = xor i32 %77, -1
  %79 = load i8*, i8** %7, align 8
  %80 = load i32, i32* %13, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, %78
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %82, align 1
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %89 = shl i32 1, %88
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = and i64 %87, %91
  %93 = load i32, i32* %14, align 4
  %94 = sub nsw i32 0, %93
  %95 = zext i32 %94 to i64
  %96 = shl i64 %92, %95
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %13, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i64
  %103 = or i64 %102, %96
  %104 = trunc i64 %103 to i8
  store i8 %104, i8* %100, align 1
  br label %105

105:                                              ; preds = %67, %62
  %106 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @floatformat_little, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @floatformat_littlebyte_bigword, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112, %105
  %117 = load i32, i32* %13, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %122

119:                                              ; preds = %112
  %120 = load i32, i32* %13, align 4
  %121 = add i32 %120, -1
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %192, %122
  %124 = load i32, i32* %14, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %127, label %193

127:                                              ; preds = %123
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sub i32 %128, %129
  %131 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %132 = icmp ult i32 %130, %131
  br i1 %132, label %133, label %160

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %14, align 4
  %136 = sub i32 %134, %135
  %137 = shl i32 1, %136
  %138 = sub nsw i32 %137, 1
  %139 = xor i32 %138, -1
  %140 = load i8*, i8** %7, align 8
  %141 = load i32, i32* %13, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %145, %139
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1
  %148 = load i64, i64* %12, align 8
  %149 = load i32, i32* %14, align 4
  %150 = zext i32 %149 to i64
  %151 = lshr i64 %148, %150
  %152 = load i8*, i8** %7, align 8
  %153 = load i32, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i64
  %158 = or i64 %157, %151
  %159 = trunc i64 %158 to i8
  store i8 %159, i8* %155, align 1
  br label %175

160:                                              ; preds = %127
  %161 = load i64, i64* %12, align 8
  %162 = load i32, i32* %14, align 4
  %163 = zext i32 %162 to i64
  %164 = lshr i64 %161, %163
  %165 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %166 = shl i32 1, %165
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = and i64 %164, %168
  %170 = trunc i64 %169 to i8
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %13, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  store i8 %170, i8* %174, align 1
  br label %175

175:                                              ; preds = %160, %133
  %176 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add i32 %177, %176
  store i32 %178, i32* %14, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @floatformat_little, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %175
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @floatformat_littlebyte_bigword, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %182, %175
  %187 = load i32, i32* %13, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %13, align 4
  br label %192

189:                                              ; preds = %182
  %190 = load i32, i32* %13, align 4
  %191 = add i32 %190, -1
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %189, %186
  br label %123

193:                                              ; preds = %123
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
