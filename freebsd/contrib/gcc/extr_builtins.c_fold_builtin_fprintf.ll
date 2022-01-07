; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_fprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@BUILT_IN_FPRINTF_CHK = common dso_local global i32 0, align 4
@BUILT_IN_VFPRINTF_CHK = common dso_local global i32 0, align 4
@INTEGER_TYPE = common dso_local global i64 0, align 8
@BUILT_IN_FPRINTF_UNLOCKED = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_FPUTC_UNLOCKED = common dso_local global i64 0, align 8
@BUILT_IN_FPUTS_UNLOCKED = common dso_local global i64 0, align 8
@implicit_built_in_decls = common dso_local global i64* null, align 8
@BUILT_IN_FPUTC = common dso_local global i64 0, align 8
@BUILT_IN_FPUTS = common dso_local global i64 0, align 8
@target_percent = common dso_local global i32 0, align 4
@BUILT_IN_VFPRINTF = common dso_local global i32 0, align 4
@target_percent_s = common dso_local global i32 0, align 4
@target_percent_c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32)* @fold_builtin_fprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fold_builtin_fprintf(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i64, i64* @NULL_TREE, align 8
  store i64 %19, i64* %12, align 8
  store i8* null, i8** %17, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %240

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %240

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @TREE_VALUE(i64 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @TREE_TYPE(i64 %30)
  %32 = call i32 @POINTER_TYPE_P(i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i64 0, i64* %5, align 8
  br label %240

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @TREE_CHAIN(i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @BUILT_IN_FPRINTF_CHK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @BUILT_IN_VFPRINTF_CHK, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41, %35
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i64 0, i64* %5, align 8
  br label %240

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @TREE_VALUE(i64 %50)
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %18, align 8
  %53 = call i64 @TREE_TYPE(i64 %52)
  %54 = call i64 @TREE_CODE(i64 %53)
  %55 = load i64, i64* @INTEGER_TYPE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %18, align 8
  %59 = call i64 @TREE_SIDE_EFFECTS(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %49
  store i64 0, i64* %5, align 8
  br label %240

62:                                               ; preds = %57
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @TREE_CHAIN(i64 %63)
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %62, %41
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i64 0, i64* %5, align 8
  br label %240

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @TREE_VALUE(i64 %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @TREE_TYPE(i64 %72)
  %74 = call i32 @POINTER_TYPE_P(i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  store i64 0, i64* %5, align 8
  br label %240

77:                                               ; preds = %69
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @TREE_CHAIN(i64 %78)
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i8* @c_getstr(i64 %80)
  store i8* %81, i8** %17, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i64, i64* @NULL_TREE, align 8
  store i64 %85, i64* %5, align 8
  br label %240

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @BUILT_IN_FPRINTF_UNLOCKED, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i64*, i64** @built_in_decls, align 8
  %92 = load i64, i64* @BUILT_IN_FPUTC_UNLOCKED, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %13, align 8
  %95 = load i64*, i64** @built_in_decls, align 8
  %96 = load i64, i64* @BUILT_IN_FPUTS_UNLOCKED, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %14, align 8
  br label %108

99:                                               ; preds = %86
  %100 = load i64*, i64** @implicit_built_in_decls, align 8
  %101 = load i64, i64* @BUILT_IN_FPUTC, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %13, align 8
  %104 = load i64*, i64** @implicit_built_in_decls, align 8
  %105 = load i64, i64* @BUILT_IN_FPUTS, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %14, align 8
  br label %108

108:                                              ; preds = %99, %90
  %109 = call i32 (...) @init_target_chars()
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i64 0, i64* %5, align 8
  br label %240

112:                                              ; preds = %108
  %113 = load i8*, i8** %17, align 8
  %114 = load i32, i32* @target_percent, align 4
  %115 = call i32* @strchr(i8* %113, i32 %114)
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %154

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @BUILT_IN_VFPRINTF, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @BUILT_IN_VFPRINTF_CHK, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i64 0, i64* %5, align 8
  br label %240

129:                                              ; preds = %125, %121, %117
  %130 = load i8*, i8** %17, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %129
  %136 = load i64, i64* %10, align 8
  %137 = call i64 @TREE_SIDE_EFFECTS(i64 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i64 0, i64* %5, align 8
  br label %240

140:                                              ; preds = %135
  %141 = load i64, i64* %6, align 8
  %142 = call i64 @TREE_TYPE(i64 %141)
  %143 = call i64 @TREE_TYPE(i64 %142)
  %144 = call i64 @build_int_cst(i64 %143, i32 0)
  store i64 %144, i64* %5, align 8
  br label %240

145:                                              ; preds = %129
  %146 = load i64, i64* @NULL_TREE, align 8
  %147 = load i64, i64* %10, align 8
  %148 = call i64 @build_tree_list(i64 %146, i64 %147)
  store i64 %148, i64* %7, align 8
  %149 = load i64, i64* @NULL_TREE, align 8
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* %7, align 8
  %152 = call i64 @tree_cons(i64 %149, i64 %150, i64 %151)
  store i64 %152, i64* %7, align 8
  %153 = load i64, i64* %14, align 8
  store i64 %153, i64* %12, align 8
  br label %227

154:                                              ; preds = %112
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @BUILT_IN_VFPRINTF, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @BUILT_IN_VFPRINTF_CHK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %154
  store i64 0, i64* %5, align 8
  br label %240

163:                                              ; preds = %158
  %164 = load i8*, i8** %17, align 8
  %165 = load i32, i32* @target_percent_s, align 4
  %166 = call i64 @strcmp(i8* %164, i32 %165)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %193

168:                                              ; preds = %163
  %169 = load i64, i64* %7, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load i64, i64* %7, align 8
  %173 = call i64 @TREE_VALUE(i64 %172)
  %174 = call i64 @TREE_TYPE(i64 %173)
  %175 = call i32 @POINTER_TYPE_P(i64 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %171
  %178 = load i64, i64* %7, align 8
  %179 = call i64 @TREE_CHAIN(i64 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177, %171, %168
  store i64 0, i64* %5, align 8
  br label %240

182:                                              ; preds = %177
  %183 = load i64, i64* %7, align 8
  %184 = call i64 @TREE_VALUE(i64 %183)
  store i64 %184, i64* %15, align 8
  %185 = load i64, i64* @NULL_TREE, align 8
  %186 = load i64, i64* %10, align 8
  %187 = call i64 @build_tree_list(i64 %185, i64 %186)
  store i64 %187, i64* %7, align 8
  %188 = load i64, i64* @NULL_TREE, align 8
  %189 = load i64, i64* %15, align 8
  %190 = load i64, i64* %7, align 8
  %191 = call i64 @tree_cons(i64 %188, i64 %189, i64 %190)
  store i64 %191, i64* %7, align 8
  %192 = load i64, i64* %14, align 8
  store i64 %192, i64* %12, align 8
  br label %225

193:                                              ; preds = %163
  %194 = load i8*, i8** %17, align 8
  %195 = load i32, i32* @target_percent_c, align 4
  %196 = call i64 @strcmp(i8* %194, i32 %195)
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %224

198:                                              ; preds = %193
  %199 = load i64, i64* %7, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %198
  %202 = load i64, i64* %7, align 8
  %203 = call i64 @TREE_VALUE(i64 %202)
  %204 = call i64 @TREE_TYPE(i64 %203)
  %205 = call i64 @TREE_CODE(i64 %204)
  %206 = load i64, i64* @INTEGER_TYPE, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %201
  %209 = load i64, i64* %7, align 8
  %210 = call i64 @TREE_CHAIN(i64 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208, %201, %198
  store i64 0, i64* %5, align 8
  br label %240

213:                                              ; preds = %208
  %214 = load i64, i64* %7, align 8
  %215 = call i64 @TREE_VALUE(i64 %214)
  store i64 %215, i64* %15, align 8
  %216 = load i64, i64* @NULL_TREE, align 8
  %217 = load i64, i64* %10, align 8
  %218 = call i64 @build_tree_list(i64 %216, i64 %217)
  store i64 %218, i64* %7, align 8
  %219 = load i64, i64* @NULL_TREE, align 8
  %220 = load i64, i64* %15, align 8
  %221 = load i64, i64* %7, align 8
  %222 = call i64 @tree_cons(i64 %219, i64 %220, i64 %221)
  store i64 %222, i64* %7, align 8
  %223 = load i64, i64* %13, align 8
  store i64 %223, i64* %12, align 8
  br label %224

224:                                              ; preds = %213, %193
  br label %225

225:                                              ; preds = %224, %182
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226, %145
  %228 = load i64, i64* %12, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  store i64 0, i64* %5, align 8
  br label %240

231:                                              ; preds = %227
  %232 = load i64, i64* %12, align 8
  %233 = load i64, i64* %7, align 8
  %234 = call i64 @build_function_call_expr(i64 %232, i64 %233)
  store i64 %234, i64* %16, align 8
  %235 = load i64, i64* %6, align 8
  %236 = call i64 @TREE_TYPE(i64 %235)
  %237 = call i64 @TREE_TYPE(i64 %236)
  %238 = load i64, i64* %16, align 8
  %239 = call i64 @fold_convert(i64 %237, i64 %238)
  store i64 %239, i64* %5, align 8
  br label %240

240:                                              ; preds = %231, %230, %212, %181, %162, %140, %139, %128, %111, %84, %76, %68, %61, %48, %34, %26, %22
  %241 = load i64, i64* %5, align 8
  ret i64 %241
}

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i64) #1

declare dso_local i8* @c_getstr(i64) #1

declare dso_local i32 @init_target_chars(...) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i64 @build_int_cst(i64, i32) #1

declare dso_local i64 @build_tree_list(i64, i64) #1

declare dso_local i64 @tree_cons(i64, i64, i64) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @build_function_call_expr(i64, i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
