; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_lvalue_p_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_tree.c_lvalue_p_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clk_none = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i32 0, align 4
@clk_ordinary = common dso_local global i32 0, align 4
@current_class_ptr = common dso_local global i64 0, align 8
@FIELD_DECL = common dso_local global i32 0, align 4
@clk_bitfield = common dso_local global i32 0, align 4
@clk_packed = common dso_local global i32 0, align 4
@METHOD_TYPE = common dso_local global i32 0, align 4
@clk_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @lvalue_p_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lvalue_p_1(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @clk_none, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @clk_none, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @TREE_TYPE(i64 %10)
  %12 = call i32 @TREE_CODE(i64 %11)
  %13 = load i32, i32* @REFERENCE_TYPE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @clk_ordinary, align 4
  store i32 %16, i32* %3, align 4
  br label %203

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @current_class_ptr, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @clk_none, align 4
  store i32 %22, i32* %3, align 4
  br label %203

23:                                               ; preds = %17
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @TREE_CODE(i64 %24)
  switch i32 %25, label %177 [
    i32 138, label %26
    i32 139, label %26
    i32 135, label %26
    i32 131, label %26
    i32 128, label %26
    i32 137, label %26
    i32 146, label %26
    i32 151, label %31
    i32 133, label %71
    i32 148, label %73
    i32 130, label %73
    i32 145, label %92
    i32 153, label %92
    i32 140, label %92
    i32 136, label %92
    i32 134, label %101
    i32 144, label %103
    i32 143, label %103
    i32 149, label %124
    i32 142, label %133
    i32 150, label %135
    i32 132, label %140
    i32 129, label %149
    i32 152, label %163
    i32 147, label %165
    i32 141, label %175
  ]

26:                                               ; preds = %23, %23, %23, %23, %23, %23, %23
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @TREE_OPERAND(i64 %27, i32 0)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @lvalue_p_1(i64 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %203

31:                                               ; preds = %23
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TREE_OPERAND(i64 %32, i32 0)
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @lvalue_p_1(i64 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @TREE_OPERAND(i64 %39, i32 1)
  %41 = call i32 @TREE_CODE(i64 %40)
  %42 = load i32, i32* @FIELD_DECL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %31
  br label %69

45:                                               ; preds = %38
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @TREE_OPERAND(i64 %46, i32 1)
  %48 = call i32 @DECL_C_BIT_FIELD(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @clk_ordinary, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @clk_bitfield, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %68

58:                                               ; preds = %45
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @TREE_OPERAND(i64 %59, i32 1)
  %61 = call i32 @DECL_PACKED(i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @clk_packed, align 4
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %50
  br label %69

69:                                               ; preds = %68, %44
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %203

71:                                               ; preds = %23
  %72 = load i32, i32* @clk_ordinary, align 4
  store i32 %72, i32* %3, align 4
  br label %203

73:                                               ; preds = %23, %23
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @TREE_READONLY(i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %73
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @TREE_STATIC(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @DECL_LANG_SPECIFIC(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @DECL_IN_AGGR_P(i64 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @clk_none, align 4
  store i32 %90, i32* %3, align 4
  br label %203

91:                                               ; preds = %85, %81, %77, %73
  br label %92

92:                                               ; preds = %23, %23, %23, %23, %91
  %93 = load i64, i64* %4, align 8
  %94 = call i64 @TREE_TYPE(i64 %93)
  %95 = call i32 @TREE_CODE(i64 %94)
  %96 = load i32, i32* @METHOD_TYPE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @clk_ordinary, align 4
  store i32 %99, i32* %3, align 4
  br label %203

100:                                              ; preds = %92
  br label %178

101:                                              ; preds = %23
  %102 = call i32 (...) @gcc_unreachable()
  br label %103

103:                                              ; preds = %23, %23, %101
  %104 = load i64, i64* %4, align 8
  %105 = call i64 @TREE_OPERAND(i64 %104, i32 0)
  %106 = call i32 @TREE_SIDE_EFFECTS(i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %4, align 8
  %110 = call i64 @TREE_OPERAND(i64 %109, i32 1)
  %111 = call i32 @TREE_SIDE_EFFECTS(i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108, %103
  %114 = load i32, i32* @clk_none, align 4
  store i32 %114, i32* %3, align 4
  br label %203

115:                                              ; preds = %108
  %116 = load i64, i64* %4, align 8
  %117 = call i64 @TREE_OPERAND(i64 %116, i32 0)
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @lvalue_p_1(i64 %117, i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i64, i64* %4, align 8
  %121 = call i64 @TREE_OPERAND(i64 %120, i32 1)
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @lvalue_p_1(i64 %121, i32 %122)
  store i32 %123, i32* %7, align 4
  br label %178

124:                                              ; preds = %23
  %125 = load i64, i64* %4, align 8
  %126 = call i64 @TREE_OPERAND(i64 %125, i32 1)
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @lvalue_p_1(i64 %126, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i64, i64* %4, align 8
  %130 = call i64 @TREE_OPERAND(i64 %129, i32 2)
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @lvalue_p_1(i64 %130, i32 %131)
  store i32 %132, i32* %7, align 4
  br label %178

133:                                              ; preds = %23
  %134 = load i32, i32* @clk_ordinary, align 4
  store i32 %134, i32* %3, align 4
  br label %203

135:                                              ; preds = %23
  %136 = load i64, i64* %4, align 8
  %137 = call i64 @TREE_OPERAND(i64 %136, i32 1)
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @lvalue_p_1(i64 %137, i32 %138)
  store i32 %139, i32* %3, align 4
  br label %203

140:                                              ; preds = %23
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* @clk_class, align 4
  br label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @clk_none, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  store i32 %148, i32* %3, align 4
  br label %203

149:                                              ; preds = %23
  %150 = load i32, i32* %5, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i64, i64* %4, align 8
  %154 = call i64 @TREE_TYPE(i64 %153)
  %155 = call i32 @CLASS_TYPE_P(i64 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @clk_class, align 4
  br label %161

159:                                              ; preds = %152, %149
  %160 = load i32, i32* @clk_none, align 4
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %160, %159 ]
  store i32 %162, i32* %3, align 4
  br label %203

163:                                              ; preds = %23
  %164 = load i32, i32* @clk_none, align 4
  store i32 %164, i32* %3, align 4
  br label %203

165:                                              ; preds = %23
  %166 = load i64, i64* %4, align 8
  %167 = call i32 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* @clk_none, align 4
  br label %173

171:                                              ; preds = %165
  %172 = load i32, i32* @clk_ordinary, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  store i32 %174, i32* %3, align 4
  br label %203

175:                                              ; preds = %23
  %176 = load i32, i32* @clk_ordinary, align 4
  store i32 %176, i32* %3, align 4
  br label %203

177:                                              ; preds = %23
  br label %178

178:                                              ; preds = %177, %124, %115, %100
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %181, %178
  %185 = load i32, i32* @clk_none, align 4
  store i32 %185, i32* %3, align 4
  br label %203

186:                                              ; preds = %181
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = or i32 %187, %188
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @clk_ordinary, align 4
  %192 = xor i32 %191, -1
  %193 = and i32 %190, %192
  %194 = load i32, i32* @clk_none, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %186
  %197 = load i32, i32* @clk_ordinary, align 4
  %198 = xor i32 %197, -1
  %199 = load i32, i32* %6, align 4
  %200 = and i32 %199, %198
  store i32 %200, i32* %6, align 4
  br label %201

201:                                              ; preds = %196, %186
  %202 = load i32, i32* %6, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %201, %184, %175, %173, %163, %161, %147, %135, %133, %113, %98, %89, %71, %69, %26, %21, %15
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local i32 @DECL_C_BIT_FIELD(i64) #1

declare dso_local i32 @DECL_PACKED(i64) #1

declare dso_local i32 @TREE_READONLY(i64) #1

declare dso_local i32 @TREE_STATIC(i64) #1

declare dso_local i32 @DECL_LANG_SPECIFIC(i64) #1

declare dso_local i32 @DECL_IN_AGGR_P(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i32 @DECL_NONSTATIC_MEMBER_FUNCTION_P(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
