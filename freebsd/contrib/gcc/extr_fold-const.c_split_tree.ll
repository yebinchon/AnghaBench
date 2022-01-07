; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_split_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_split_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_CST = common dso_local global i64 0, align 8
@REAL_CST = common dso_local global i64 0, align 8
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64*, i64*, i64*, i32)* @split_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @split_tree(i64 %0, i32 %1, i64* %2, i64* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %20 = load i64*, i64** %9, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %10, align 8
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** %11, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @STRIP_SIGN_NOPS(i64 %23)
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @INTEGER_CST, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %6
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @TREE_CODE(i64 %30)
  %32 = load i64, i64* @REAL_CST, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %6
  %35 = load i64, i64* %7, align 8
  %36 = load i64*, i64** %10, align 8
  store i64 %35, i64* %36, align 8
  br label %178

37:                                               ; preds = %29
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %68, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @TREE_TYPE(i64 %44)
  %46 = call i32 @FLOAT_TYPE_P(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %167, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @PLUS_EXPR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @TREE_CODE(i64 %53)
  %55 = load i64, i64* @MINUS_EXPR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @MINUS_EXPR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %167

62:                                               ; preds = %57
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @TREE_CODE(i64 %63)
  %65 = load i32, i32* @PLUS_EXPR, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %167

68:                                               ; preds = %62, %52, %37
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @TREE_OPERAND(i64 %69, i32 0)
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @TREE_OPERAND(i64 %71, i32 1)
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @TREE_CODE(i64 %73)
  %75 = load i64, i64* @MINUS_EXPR, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %78 = load i64, i64* %14, align 8
  %79 = call i64 @TREE_CODE(i64 %78)
  %80 = load i64, i64* @INTEGER_CST, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %68
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @TREE_CODE(i64 %83)
  %85 = load i64, i64* @REAL_CST, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %82, %68
  %88 = load i64, i64* %14, align 8
  %89 = load i64*, i64** %10, align 8
  store i64 %88, i64* %89, align 8
  store i64 0, i64* %14, align 8
  br label %105

90:                                               ; preds = %82
  %91 = load i64, i64* %15, align 8
  %92 = call i64 @TREE_CODE(i64 %91)
  %93 = load i64, i64* @INTEGER_CST, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %15, align 8
  %97 = call i64 @TREE_CODE(i64 %96)
  %98 = load i64, i64* @REAL_CST, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95, %90
  %101 = load i64, i64* %15, align 8
  %102 = load i64*, i64** %10, align 8
  store i64 %101, i64* %102, align 8
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %17, align 4
  store i64 0, i64* %15, align 8
  br label %104

104:                                              ; preds = %100, %95
  br label %105

105:                                              ; preds = %104, %87
  %106 = load i64, i64* %14, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load i64, i64* %14, align 8
  %110 = call i64 @TREE_CONSTANT(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i64, i64* %14, align 8
  %114 = load i64*, i64** %9, align 8
  store i64 %113, i64* %114, align 8
  store i64 0, i64* %14, align 8
  br label %127

115:                                              ; preds = %108, %105
  %116 = load i64, i64* %15, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load i64, i64* %15, align 8
  %120 = call i64 @TREE_CONSTANT(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i64, i64* %15, align 8
  %124 = load i64*, i64** %9, align 8
  store i64 %123, i64* %124, align 8
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %18, align 4
  store i64 0, i64* %15, align 8
  br label %126

126:                                              ; preds = %122, %118, %115
  br label %127

127:                                              ; preds = %126, %112
  %128 = load i64, i64* %14, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i64, i64* %15, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i64, i64* %7, align 8
  store i64 %134, i64* %13, align 8
  br label %144

135:                                              ; preds = %130, %127
  %136 = load i64, i64* %14, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i64, i64* %14, align 8
  store i64 %139, i64* %13, align 8
  br label %143

140:                                              ; preds = %135
  %141 = load i64, i64* %15, align 8
  store i64 %141, i64* %13, align 8
  %142 = load i32, i32* %16, align 4
  store i32 %142, i32* %19, align 4
  br label %143

143:                                              ; preds = %140, %138
  br label %144

144:                                              ; preds = %143, %133
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i64*, i64** %10, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %11, align 8
  store i64 %149, i64* %150, align 8
  %151 = load i64*, i64** %10, align 8
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %147, %144
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load i64*, i64** %9, align 8
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @negate_expr(i64 %157)
  %159 = load i64*, i64** %9, align 8
  store i64 %158, i64* %159, align 8
  br label %160

160:                                              ; preds = %155, %152
  %161 = load i32, i32* %19, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i64, i64* %13, align 8
  %165 = call i64 @negate_expr(i64 %164)
  store i64 %165, i64* %13, align 8
  br label %166

166:                                              ; preds = %163, %160
  br label %177

167:                                              ; preds = %62, %57, %43
  %168 = load i64, i64* %7, align 8
  %169 = call i64 @TREE_CONSTANT(i64 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i64, i64* %7, align 8
  %173 = load i64*, i64** %9, align 8
  store i64 %172, i64* %173, align 8
  br label %176

174:                                              ; preds = %167
  %175 = load i64, i64* %7, align 8
  store i64 %175, i64* %13, align 8
  br label %176

176:                                              ; preds = %174, %171
  br label %177

177:                                              ; preds = %176, %166
  br label %178

178:                                              ; preds = %177, %34
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %207

181:                                              ; preds = %178
  %182 = load i64*, i64** %10, align 8
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %181
  %186 = load i64*, i64** %10, align 8
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** %11, align 8
  store i64 %187, i64* %188, align 8
  %189 = load i64*, i64** %10, align 8
  store i64 0, i64* %189, align 8
  br label %200

190:                                              ; preds = %181
  %191 = load i64*, i64** %11, align 8
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load i64*, i64** %11, align 8
  %196 = load i64, i64* %195, align 8
  %197 = load i64*, i64** %10, align 8
  store i64 %196, i64* %197, align 8
  %198 = load i64*, i64** %11, align 8
  store i64 0, i64* %198, align 8
  br label %199

199:                                              ; preds = %194, %190
  br label %200

200:                                              ; preds = %199, %185
  %201 = load i64*, i64** %9, align 8
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @negate_expr(i64 %202)
  %204 = load i64*, i64** %9, align 8
  store i64 %203, i64* %204, align 8
  %205 = load i64, i64* %13, align 8
  %206 = call i64 @negate_expr(i64 %205)
  store i64 %206, i64* %13, align 8
  br label %207

207:                                              ; preds = %200, %178
  %208 = load i64, i64* %13, align 8
  ret i64 %208
}

declare dso_local i32 @STRIP_SIGN_NOPS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @FLOAT_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i64 @TREE_CONSTANT(i64) #1

declare dso_local i64 @negate_expr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
