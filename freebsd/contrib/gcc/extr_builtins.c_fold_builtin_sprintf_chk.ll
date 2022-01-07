; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_sprintf_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_sprintf_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@target_percent = common dso_local global i32 0, align 4
@BUILT_IN_SPRINTF_CHK = common dso_local global i32 0, align 4
@size_type_node = common dso_local global i32 0, align 4
@target_percent_s = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_VSPRINTF_CHK = common dso_local global i32 0, align 4
@BUILT_IN_VSPRINTF = common dso_local global i64 0, align 8
@BUILT_IN_SPRINTF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @fold_builtin_sprintf_chk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_sprintf_chk(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %206

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @TREE_VALUE(i64 %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @TREE_TYPE(i64 %20)
  %22 = call i64 @POINTER_TYPE_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %206

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @TREE_CHAIN(i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i64 0, i64* %3, align 8
  br label %206

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TREE_VALUE(i64 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @TREE_TYPE(i64 %34)
  %36 = call i64 @TREE_CODE(i32 %35)
  %37 = load i64, i64* @INTEGER_TYPE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i64 0, i64* %3, align 8
  br label %206

40:                                               ; preds = %31
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @TREE_CHAIN(i64 %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i64 0, i64* %3, align 8
  br label %206

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_VALUE(i64 %47)
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @TREE_TYPE(i64 %49)
  %51 = call i64 @TREE_CODE(i32 %50)
  %52 = load i64, i64* @INTEGER_TYPE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i64 0, i64* %3, align 8
  br label %206

55:                                               ; preds = %46
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @TREE_CHAIN(i64 %56)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i64 0, i64* %3, align 8
  br label %206

61:                                               ; preds = %55
  %62 = load i64, i64* %4, align 8
  %63 = call i64 @TREE_VALUE(i64 %62)
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @TREE_TYPE(i64 %64)
  %66 = call i64 @POINTER_TYPE_P(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %206

69:                                               ; preds = %61
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @TREE_CHAIN(i64 %70)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @host_integerp(i64 %72, i32 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  store i64 0, i64* %3, align 8
  br label %206

76:                                               ; preds = %69
  %77 = load i64, i64* @NULL_TREE, align 8
  store i64 %77, i64* %8, align 8
  %78 = call i32 (...) @init_target_chars()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store i64 0, i64* %3, align 8
  br label %206

81:                                               ; preds = %76
  %82 = load i64, i64* %10, align 8
  %83 = call i8* @c_getstr(i64 %82)
  store i8* %83, i8** %12, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %144

86:                                               ; preds = %81
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* @target_percent, align 4
  %89 = call i32* @strchr(i8* %87, i32 %88)
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @BUILT_IN_SPRINTF_CHK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* @NULL_TREE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95, %91
  %100 = load i32, i32* @size_type_node, align 4
  %101 = load i8*, i8** %12, align 8
  %102 = call i32 @strlen(i8* %101)
  %103 = call i64 @build_int_cstu(i32 %100, i32 %102)
  store i64 %103, i64* %8, align 8
  br label %104

104:                                              ; preds = %99, %95
  br label %143

105:                                              ; preds = %86
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @BUILT_IN_SPRINTF_CHK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %105
  %110 = load i8*, i8** %12, align 8
  %111 = load i32, i32* @target_percent_s, align 4
  %112 = call i64 @strcmp(i8* %110, i32 %111)
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %142

114:                                              ; preds = %109
  %115 = load i64, i64* %4, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %114
  %118 = load i64, i64* %4, align 8
  %119 = call i64 @TREE_CHAIN(i64 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %141, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %4, align 8
  %123 = call i64 @TREE_VALUE(i64 %122)
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %13, align 8
  %125 = call i32 @TREE_TYPE(i64 %124)
  %126 = call i64 @POINTER_TYPE_P(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %121
  %129 = load i64, i64* %13, align 8
  %130 = call i64 @c_strlen(i64 %129, i32 1)
  store i64 %130, i64* %8, align 8
  %131 = load i64, i64* %8, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @host_integerp(i64 %134, i32 1)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %133, %128
  %138 = load i64, i64* @NULL_TREE, align 8
  store i64 %138, i64* %8, align 8
  br label %139

139:                                              ; preds = %137, %133
  br label %140

140:                                              ; preds = %139, %121
  br label %141

141:                                              ; preds = %140, %117, %114
  br label %142

142:                                              ; preds = %141, %109, %105
  br label %143

143:                                              ; preds = %142, %104
  br label %144

144:                                              ; preds = %143, %81
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @integer_all_onesp(i64 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %144
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @tree_int_cst_lt(i64 %152, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %151, %148
  store i64 0, i64* %3, align 8
  br label %206

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %157, %144
  %159 = load i64, i64* %11, align 8
  %160 = call i32 @integer_zerop(i64 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %158
  %163 = load i8*, i8** %12, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i64 0, i64* %3, align 8
  br label %206

166:                                              ; preds = %162
  %167 = load i8*, i8** %12, align 8
  %168 = load i32, i32* @target_percent, align 4
  %169 = call i32* @strchr(i8* %167, i32 %168)
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load i8*, i8** %12, align 8
  %173 = load i32, i32* @target_percent_s, align 4
  %174 = call i64 @strcmp(i8* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i64 0, i64* %3, align 8
  br label %206

177:                                              ; preds = %171, %166
  br label %178

178:                                              ; preds = %177, %158
  %179 = load i64, i64* @NULL_TREE, align 8
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %4, align 8
  %182 = call i64 @tree_cons(i64 %179, i64 %180, i64 %181)
  store i64 %182, i64* %4, align 8
  %183 = load i64, i64* @NULL_TREE, align 8
  %184 = load i64, i64* %6, align 8
  %185 = load i64, i64* %4, align 8
  %186 = call i64 @tree_cons(i64 %183, i64 %184, i64 %185)
  store i64 %186, i64* %4, align 8
  %187 = load i64*, i64** @built_in_decls, align 8
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @BUILT_IN_VSPRINTF_CHK, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %193

191:                                              ; preds = %178
  %192 = load i64, i64* @BUILT_IN_VSPRINTF, align 8
  br label %195

193:                                              ; preds = %178
  %194 = load i64, i64* @BUILT_IN_SPRINTF, align 8
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i64 [ %192, %191 ], [ %194, %193 ]
  %197 = getelementptr inbounds i64, i64* %187, i64 %196
  %198 = load i64, i64* %197, align 8
  store i64 %198, i64* %9, align 8
  %199 = load i64, i64* %9, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %195
  store i64 0, i64* %3, align 8
  br label %206

202:                                              ; preds = %195
  %203 = load i64, i64* %9, align 8
  %204 = load i64, i64* %4, align 8
  %205 = call i64 @build_function_call_expr(i64 %203, i64 %204)
  store i64 %205, i64* %3, align 8
  br label %206

206:                                              ; preds = %202, %201, %176, %165, %156, %80, %75, %68, %60, %54, %45, %39, %30, %24, %16
  %207 = load i64, i64* %3, align 8
  ret i64 %207
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @host_integerp(i64, i32) #1

declare dso_local i32 @init_target_chars(...) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i64 @build_int_cstu(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @c_strlen(i64, i32) #1

declare dso_local i32 @integer_all_onesp(i64) #1

declare dso_local i32 @tree_int_cst_lt(i64, i64) #1

declare dso_local i32 @integer_zerop(i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
