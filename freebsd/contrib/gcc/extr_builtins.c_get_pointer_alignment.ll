; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_get_pointer_alignment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_get_pointer_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize = common dso_local global i64 0, align 8
@flag_tree_ter = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@VIEW_CONVERT_EXPR = common dso_local global i32 0, align 4
@INDIRECT_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_pointer_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pointer_alignment(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = load i64, i64* @optimize, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* @flag_tree_ter, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %2
  store i32 0, i32* %3, align 4
  br label %204

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TREE_TYPE(i32 %23)
  %25 = call i32 @POINTER_TYPE_P(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %204

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TREE_TYPE(i32 %29)
  %31 = call i32 @TREE_TYPE(i32 %30)
  %32 = call i32 @TYPE_ALIGN(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @MIN(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %28, %203
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TREE_CODE(i32 %37)
  switch i32 %38, label %201 [
    i32 129, label %39
    i32 131, label %39
    i32 130, label %39
    i32 128, label %56
    i32 132, label %80
  ]

39:                                               ; preds = %36, %36, %36
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @TREE_OPERAND(i32 %40, i32 0)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @TREE_TYPE(i32 %42)
  %44 = call i32 @POINTER_TYPE_P(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %204

48:                                               ; preds = %39
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @TREE_TYPE(i32 %49)
  %51 = call i32 @TREE_TYPE(i32 %50)
  %52 = call i32 @TYPE_ALIGN(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @MIN(i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  br label %203

56:                                               ; preds = %36
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @TREE_OPERAND(i32 %57, i32 1)
  %59 = call i32 @host_integerp(i32 %58, i32 1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %204

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %74, %63
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @TREE_OPERAND(i32 %65, i32 1)
  %67 = call i32 @tree_low_cst(i32 %66, i32 1)
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @BITS_PER_UNIT, align 4
  %70 = udiv i32 %68, %69
  %71 = sub i32 %70, 1
  %72 = and i32 %67, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = lshr i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %64

77:                                               ; preds = %64
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @TREE_OPERAND(i32 %78, i32 0)
  store i32 %79, i32* %4, align 4
  br label %203

80:                                               ; preds = %36
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @TREE_OPERAND(i32 %81, i32 0)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @handled_component_p(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %167

87:                                               ; preds = %80
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @get_inner_reference(i32 %88, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32 1)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 0, %95
  %97 = and i32 %94, %96
  %98 = call i32 @MIN(i32 %93, i32 %97)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %92, %87
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @TREE_CODE(i32 %103)
  %105 = icmp eq i32 %104, 128
  br i1 %105, label %106, label %129

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @TREE_OPERAND(i32 %107, i32 1)
  %109 = call i32 @host_integerp(i32 %108, i32 1)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @TREE_OPERAND(i32 %112, i32 1)
  %114 = call i32 @tree_low_cst(i32 %113, i32 1)
  %115 = load i32, i32* @BITS_PER_UNIT, align 4
  %116 = mul i32 %114, %115
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = sub i32 0, %122
  %124 = and i32 %121, %123
  %125 = call i32 @MIN(i32 %120, i32 %124)
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %119, %111
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @TREE_OPERAND(i32 %127, i32 0)
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %126, %106, %102, %99
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %158

132:                                              ; preds = %129
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @TREE_CODE(i32 %133)
  %135 = load i32, i32* @MULT_EXPR, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %132
  %138 = load i32, i32* %10, align 4
  %139 = call i32 @TREE_OPERAND(i32 %138, i32 1)
  %140 = call i32 @host_integerp(i32 %139, i32 1)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %137
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @TREE_OPERAND(i32 %143, i32 1)
  %145 = call i32 @tree_low_cst(i32 %144, i32 1)
  %146 = load i32, i32* @BITS_PER_UNIT, align 4
  %147 = mul i32 %145, %146
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %142
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %15, align 4
  %154 = sub i32 0, %153
  %155 = and i32 %152, %154
  %156 = call i32 @MIN(i32 %151, i32 %155)
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %150, %142
  br label %166

158:                                              ; preds = %137, %132, %129
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @BITS_PER_UNIT, align 4
  %164 = call i32 @MIN(i32 %162, i32 %163)
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %161, %158
  br label %166

166:                                              ; preds = %165, %157
  br label %167

167:                                              ; preds = %166, %80
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @DECL_P(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @DECL_ALIGN(i32 %173)
  %175 = call i32 @MIN(i32 %172, i32 %174)
  store i32 %175, i32* %6, align 4
  br label %197

176:                                              ; preds = %167
  %177 = load i32, i32* %4, align 4
  %178 = call i32 @TREE_CODE(i32 %177)
  %179 = load i32, i32* @VIEW_CONVERT_EXPR, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %4, align 4
  %183 = call i32 @TREE_CODE(i32 %182)
  %184 = load i32, i32* @INDIRECT_REF, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %181, %176
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @TREE_TYPE(i32 %187)
  %189 = call i32 @TYPE_ALIGN(i32 %188)
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @MIN(i32 %189, i32 %190)
  store i32 %191, i32* %6, align 4
  br label %196

192:                                              ; preds = %181
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @MIN(i32 %193, i32 %194)
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %192, %186
  br label %197

197:                                              ; preds = %196, %171
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @MIN(i32 %198, i32 %199)
  store i32 %200, i32* %3, align 4
  br label %204

201:                                              ; preds = %36
  %202 = load i32, i32* %6, align 4
  store i32 %202, i32* %3, align 4
  br label %204

203:                                              ; preds = %77, %48
  br label %36

204:                                              ; preds = %201, %197, %61, %46, %27, %21
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @host_integerp(i32, i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @handled_component_p(i32) #1

declare dso_local i32 @get_inner_reference(i32, i32*, i32*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @DECL_P(i32) #1

declare dso_local i32 @DECL_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
