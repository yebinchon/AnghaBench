; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_check_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_check_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OP_LEGAL = common dso_local global i32 0, align 4
@OP_OUT_OF_RANGE = common dso_local global i32 0, align 4
@OP_EVEN = common dso_local global i32 0, align 4
@OP_NOT_EVEN = common dso_local global i32 0, align 4
@OP_DEC = common dso_local global i32 0, align 4
@OP_SHIFT = common dso_local global i32 0, align 4
@OP_SHIFT_DEC = common dso_local global i32 0, align 4
@OP_ABS20 = common dso_local global i32 0, align 4
@OP_ESC = common dso_local global i32 0, align 4
@OP_ESC1 = common dso_local global i32 0, align 4
@OP_SIGNED = common dso_local global i32 0, align 4
@OP_UNSIGNED = common dso_local global i32 0, align 4
@OP_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i32)* @check_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_range(i64* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @OP_LEGAL, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i64*, i64** %6, align 8
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i64, i64* %13, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @OP_OUT_OF_RANGE, align 4
  store i32 %23, i32* %5, align 4
  br label %209

24:                                               ; preds = %19, %4
  %25 = load i64, i64* %13, align 8
  %26 = and i64 %25, 2147483648
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %13, align 8
  %30 = or i64 %29, -2147483648
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @OP_EVEN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i64, i64* %13, align 8
  %38 = srem i64 %37, 2
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @OP_NOT_EVEN, align 4
  store i32 %41, i32* %5, align 4
  br label %209

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @OP_DEC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i64, i64* %13, align 8
  %50 = sub nsw i64 %49, 1
  store i64 %50, i64* %13, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64, i64* %13, align 8
  %55 = load i64*, i64** %6, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @OP_SHIFT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i64, i64* %13, align 8
  %64 = ashr i64 %63, 1
  store i64 %64, i64* %13, align 8
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i64, i64* %13, align 8
  %69 = load i64*, i64** %6, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %67, %62
  br label %87

71:                                               ; preds = %57
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @OP_SHIFT_DEC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i64, i64* %13, align 8
  %78 = ashr i64 %77, 1
  %79 = sub nsw i64 %78, 1
  store i64 %79, i64* %13, align 8
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i64, i64* %13, align 8
  %84 = load i64*, i64** %6, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %76
  br label %86

86:                                               ; preds = %85, %71
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @OP_ABS20, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load i64, i64* %13, align 8
  %94 = icmp sgt i64 %93, 983039
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @OP_OUT_OF_RANGE, align 4
  store i32 %96, i32* %5, align 4
  br label %209

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @OP_ESC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %98
  %104 = load i64, i64* %13, align 8
  %105 = icmp eq i64 %104, 11
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i64, i64* %13, align 8
  %108 = icmp eq i64 %107, 9
  br i1 %108, label %109, label %111

109:                                              ; preds = %106, %103
  %110 = load i32, i32* @OP_OUT_OF_RANGE, align 4
  store i32 %110, i32* %5, align 4
  br label %209

111:                                              ; preds = %106
  %112 = load i64, i64* %13, align 8
  %113 = icmp eq i64 %112, -1
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i64*, i64** %6, align 8
  store i64 9, i64* %118, align 8
  br label %119

119:                                              ; preds = %117, %114
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %5, align 4
  br label %209

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %98
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @OP_ESC1, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = load i64, i64* %13, align 8
  %130 = icmp sgt i64 %129, 13
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* @OP_OUT_OF_RANGE, align 4
  store i32 %132, i32* %5, align 4
  br label %209

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133, %123
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @OP_SIGNED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %134
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %140, 1
  %142 = shl i32 1, %141
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  store i64 %144, i64* %11, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sub nsw i32 %145, 1
  %147 = shl i32 1, %146
  %148 = sub nsw i32 0, %147
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %10, align 8
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* %11, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %139
  %154 = load i64, i64* %13, align 8
  %155 = load i64, i64* %10, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153, %139
  %158 = load i32, i32* @OP_OUT_OF_RANGE, align 4
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %157, %153
  br label %207

160:                                              ; preds = %134
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @OP_UNSIGNED, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %160
  %166 = load i32, i32* %7, align 4
  %167 = sub nsw i32 %166, 1
  %168 = shl i32 1, %167
  %169 = sub nsw i32 %168, 1
  %170 = shl i32 %169, 1
  %171 = or i32 %170, 1
  %172 = sext i32 %171 to i64
  store i64 %172, i64* %11, align 8
  store i64 0, i64* %10, align 8
  %173 = load i64, i64* %13, align 8
  %174 = load i64, i64* %11, align 8
  %175 = icmp ugt i64 %173, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %165
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %10, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176, %165
  %181 = load i32, i32* @OP_OUT_OF_RANGE, align 4
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %180, %176
  br label %206

183:                                              ; preds = %160
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @OP_NEG, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %183
  store i64 -1, i64* %11, align 8
  %189 = load i32, i32* %7, align 4
  %190 = sub nsw i32 %189, 1
  %191 = shl i32 1, %190
  %192 = sub nsw i32 %191, 1
  %193 = sub nsw i32 0, %192
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %10, align 8
  %195 = load i64, i64* %13, align 8
  %196 = load i64, i64* %11, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %202, label %198

198:                                              ; preds = %188
  %199 = load i64, i64* %13, align 8
  %200 = load i64, i64* %10, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %198, %188
  %203 = load i32, i32* @OP_OUT_OF_RANGE, align 4
  store i32 %203, i32* %12, align 4
  br label %204

204:                                              ; preds = %202, %198
  br label %205

205:                                              ; preds = %204, %183
  br label %206

206:                                              ; preds = %205, %182
  br label %207

207:                                              ; preds = %206, %159
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %5, align 4
  br label %209

209:                                              ; preds = %207, %131, %119, %109, %95, %40, %22
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
