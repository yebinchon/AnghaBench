; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_warn_about_parentheses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_warn_about_parentheses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_parentheses = common dso_local global i32 0, align 4
@LSHIFT_EXPR = common dso_local global i32 0, align 4
@RSHIFT_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@OPT_Wparentheses = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"suggest parentheses around + or - inside shift\00", align 1
@TRUTH_ORIF_EXPR = common dso_local global i32 0, align 4
@TRUTH_ANDIF_EXPR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"suggest parentheses around && within ||\00", align 1
@BIT_IOR_EXPR = common dso_local global i32 0, align 4
@BIT_AND_EXPR = common dso_local global i32 0, align 4
@BIT_XOR_EXPR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"suggest parentheses around arithmetic in operand of |\00", align 1
@tcc_comparison = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"suggest parentheses around comparison in operand of |\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"suggest parentheses around arithmetic in operand of ^\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"suggest parentheses around comparison in operand of ^\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"suggest parentheses around + or - in operand of &\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"suggest parentheses around comparison in operand of &\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"comparisons like X<=Y<=Z do not have their mathematical meaning\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warn_about_parentheses(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @warn_parentheses, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %207

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @LSHIFT_EXPR, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RSHIFT_EXPR, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PLUS_EXPR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @MINUS_EXPR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PLUS_EXPR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MINUS_EXPR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30, %26, %22, %18
  %35 = load i32, i32* @OPT_Wparentheses, align 4
  %36 = call i32 @warning(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %14
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @TRUTH_ORIF_EXPR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @TRUTH_ANDIF_EXPR, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @OPT_Wparentheses, align 4
  %52 = call i32 @warning(i32 %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %38
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @BIT_IOR_EXPR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %107

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @BIT_AND_EXPR, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %90, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @BIT_XOR_EXPR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %90, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PLUS_EXPR, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %90, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @MINUS_EXPR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %90, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @BIT_AND_EXPR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @BIT_XOR_EXPR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @PLUS_EXPR, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MINUS_EXPR, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86, %82, %78, %74, %70, %66, %62, %58
  %91 = load i32, i32* @OPT_Wparentheses, align 4
  %92 = call i32 @warning(i32 %91, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %5, align 4
  %95 = call i64 @TREE_CODE_CLASS(i32 %94)
  %96 = load i64, i64* @tcc_comparison, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @TREE_CODE_CLASS(i32 %99)
  %101 = load i64, i64* @tcc_comparison, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98, %93
  %104 = load i32, i32* @OPT_Wparentheses, align 4
  %105 = call i32 @warning(i32 %104, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %106, %54
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @BIT_XOR_EXPR, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %152

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @BIT_AND_EXPR, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %135, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @PLUS_EXPR, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %135, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @MINUS_EXPR, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @BIT_AND_EXPR, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %135, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @PLUS_EXPR, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @MINUS_EXPR, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131, %127, %123, %119, %115, %111
  %136 = load i32, i32* @OPT_Wparentheses, align 4
  %137 = call i32 @warning(i32 %136, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  br label %138

138:                                              ; preds = %135, %131
  %139 = load i32, i32* %5, align 4
  %140 = call i64 @TREE_CODE_CLASS(i32 %139)
  %141 = load i64, i64* @tcc_comparison, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  %145 = call i64 @TREE_CODE_CLASS(i32 %144)
  %146 = load i64, i64* @tcc_comparison, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %143, %138
  %149 = load i32, i32* @OPT_Wparentheses, align 4
  %150 = call i32 @warning(i32 %149, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %143
  br label %152

152:                                              ; preds = %151, %107
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @BIT_AND_EXPR, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %189

156:                                              ; preds = %152
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @PLUS_EXPR, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %172, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @MINUS_EXPR, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %172, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @PLUS_EXPR, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %172, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @MINUS_EXPR, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %168, %164, %160, %156
  %173 = load i32, i32* @OPT_Wparentheses, align 4
  %174 = call i32 @warning(i32 %173, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %168
  %176 = load i32, i32* %5, align 4
  %177 = call i64 @TREE_CODE_CLASS(i32 %176)
  %178 = load i64, i64* @tcc_comparison, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %6, align 4
  %182 = call i64 @TREE_CODE_CLASS(i32 %181)
  %183 = load i64, i64* @tcc_comparison, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %180, %175
  %186 = load i32, i32* @OPT_Wparentheses, align 4
  %187 = call i32 @warning(i32 %186, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %180
  br label %189

189:                                              ; preds = %188, %152
  %190 = load i32, i32* %4, align 4
  %191 = call i64 @TREE_CODE_CLASS(i32 %190)
  %192 = load i64, i64* @tcc_comparison, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %207

194:                                              ; preds = %189
  %195 = load i32, i32* %5, align 4
  %196 = call i64 @TREE_CODE_CLASS(i32 %195)
  %197 = load i64, i64* @tcc_comparison, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* %6, align 4
  %201 = call i64 @TREE_CODE_CLASS(i32 %200)
  %202 = load i64, i64* @tcc_comparison, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %199, %194
  %205 = load i32, i32* @OPT_Wparentheses, align 4
  %206 = call i32 @warning(i32 %205, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0))
  br label %207

207:                                              ; preds = %9, %204, %199, %189
  ret void
}

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @TREE_CODE_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
