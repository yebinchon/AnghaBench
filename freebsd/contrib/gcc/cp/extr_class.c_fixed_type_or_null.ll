; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_fixed_type_or_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_fixed_type_or_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i8* null, align 8
@INTEGER_CST = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i32 0, align 4
@current_class_ptr = common dso_local global i8* null, align 8
@current_function_decl = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i32 0, align 4
@fixed_type_or_null.ht = internal global i32 0, align 4
@htab_hash_pointer = common dso_local global i32 0, align 4
@htab_eq_pointer = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32*)* @fixed_type_or_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fixed_type_or_null(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @TREE_CODE(i8* %11)
  switch i32 %12, label %246 [
    i32 136, label %13
    i32 140, label %26
    i32 130, label %40
    i32 132, label %58
    i32 135, label %58
    i32 134, label %83
    i32 138, label %83
    i32 141, label %89
    i32 139, label %111
    i32 128, label %128
    i32 137, label %128
    i32 129, label %150
    i32 133, label %150
    i32 131, label %150
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @TREE_TYPE(i8* %14)
  %16 = call i32 @POINTER_TYPE_P(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i8*, i8** @NULL_TREE, align 8
  store i8* %19, i8** %4, align 8
  br label %248

20:                                               ; preds = %13
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @TREE_OPERAND(i8* %21, i32 0)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call i8* @fixed_type_or_null(i8* %22, i32* %23, i32* %24)
  store i8* %25, i8** %4, align 8
  br label %248

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @TREE_HAS_CONSTRUCTOR(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @TREE_TYPE(i8* %36)
  store i8* %37, i8** %4, align 8
  br label %248

38:                                               ; preds = %26
  %39 = load i8*, i8** @NULL_TREE, align 8
  store i8* %39, i8** %4, align 8
  br label %248

40:                                               ; preds = %3
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @TREE_HAS_CONSTRUCTOR(i8* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32*, i32** %6, align 8
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i8*, i8** %5, align 8
  %51 = call i8* @TREE_TYPE(i8* %50)
  store i8* %51, i8** %4, align 8
  br label %248

52:                                               ; preds = %40
  %53 = load i8*, i8** %5, align 8
  %54 = call i8* @TREE_OPERAND(i8* %53, i32 0)
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i8* @fixed_type_or_null(i8* %54, i32* %55, i32* %56)
  store i8* %57, i8** %4, align 8
  br label %248

58:                                               ; preds = %3, %3
  %59 = load i8*, i8** %5, align 8
  %60 = call i8* @TREE_OPERAND(i8* %59, i32 0)
  %61 = call i32 @TREE_CODE(i8* %60)
  %62 = icmp eq i32 %61, 141
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = call i8* @TREE_OPERAND(i8* %64, i32 0)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i8* @fixed_type_or_null(i8* %65, i32* %66, i32* %67)
  store i8* %68, i8** %4, align 8
  br label %248

69:                                               ; preds = %58
  %70 = load i8*, i8** %5, align 8
  %71 = call i8* @TREE_OPERAND(i8* %70, i32 1)
  %72 = call i32 @TREE_CODE(i8* %71)
  %73 = load i32, i32* @INTEGER_CST, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i8*, i8** %5, align 8
  %77 = call i8* @TREE_OPERAND(i8* %76, i32 0)
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i8* @fixed_type_or_null(i8* %77, i32* %78, i32* %79)
  store i8* %80, i8** %4, align 8
  br label %248

81:                                               ; preds = %69
  %82 = load i8*, i8** @NULL_TREE, align 8
  store i8* %82, i8** %4, align 8
  br label %248

83:                                               ; preds = %3, %3
  %84 = load i8*, i8** %5, align 8
  %85 = call i8* @TREE_OPERAND(i8* %84, i32 0)
  %86 = load i32*, i32** %6, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i8* @fixed_type_or_null(i8* %85, i32* %86, i32* %87)
  store i8* %88, i8** %4, align 8
  br label %248

89:                                               ; preds = %3
  %90 = load i8*, i8** %5, align 8
  %91 = call i8* @TREE_OPERAND(i8* %90, i32 0)
  store i8* %91, i8** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load i8*, i8** %5, align 8
  %96 = call i8* @get_base_address(i8* %95)
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @DECL_P(i8* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %99, %94
  br label %106

106:                                              ; preds = %105, %89
  %107 = load i8*, i8** %5, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = call i8* @fixed_type_or_null(i8* %107, i32* %108, i32* %109)
  store i8* %110, i8** %4, align 8
  br label %248

111:                                              ; preds = %3
  %112 = load i8*, i8** %5, align 8
  %113 = call i8* @TREE_OPERAND(i8* %112, i32 1)
  %114 = call i32 @DECL_FIELD_IS_BASE(i8* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i8*, i8** %5, align 8
  %118 = call i8* @TREE_OPERAND(i8* %117, i32 0)
  %119 = load i32*, i32** %6, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = call i8* @fixed_type_or_null(i8* %118, i32* %119, i32* %120)
  store i8* %121, i8** %4, align 8
  br label %248

122:                                              ; preds = %111
  %123 = load i8*, i8** %5, align 8
  %124 = call i8* @TREE_OPERAND(i8* %123, i32 1)
  %125 = load i32*, i32** %6, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = call i8* @fixed_type_or_null(i8* %124, i32* %125, i32* %126)
  store i8* %127, i8** %4, align 8
  br label %248

128:                                              ; preds = %3, %3
  %129 = load i8*, i8** %5, align 8
  %130 = call i8* @TREE_TYPE(i8* %129)
  %131 = call i32 @TREE_CODE(i8* %130)
  %132 = load i32, i32* @ARRAY_TYPE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %128
  %135 = load i8*, i8** %5, align 8
  %136 = call i8* @TREE_TYPE(i8* %135)
  %137 = call i8* @TREE_TYPE(i8* %136)
  %138 = call i32 @IS_AGGR_TYPE(i8* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load i32*, i32** %6, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32*, i32** %6, align 8
  store i32 1, i32* %144, align 4
  br label %145

145:                                              ; preds = %143, %140
  %146 = load i8*, i8** %5, align 8
  %147 = call i8* @TREE_TYPE(i8* %146)
  %148 = call i8* @TREE_TYPE(i8* %147)
  store i8* %148, i8** %4, align 8
  br label %248

149:                                              ; preds = %134, %128
  br label %150

150:                                              ; preds = %3, %3, %3, %149
  %151 = load i8*, i8** %5, align 8
  %152 = call i8* @TREE_TYPE(i8* %151)
  %153 = call i32 @IS_AGGR_TYPE(i8* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load i32*, i32** %6, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32*, i32** %6, align 8
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %158, %155
  %161 = load i8*, i8** %5, align 8
  %162 = call i8* @TREE_TYPE(i8* %161)
  store i8* %162, i8** %4, align 8
  br label %248

163:                                              ; preds = %150
  %164 = load i8*, i8** %5, align 8
  %165 = load i8*, i8** @current_class_ptr, align 8
  %166 = icmp eq i8* %164, %165
  br i1 %166, label %167, label %194

167:                                              ; preds = %163
  %168 = load i32*, i32** %6, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32*, i32** %6, align 8
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %170, %167
  %173 = load i32, i32* @current_function_decl, align 4
  %174 = call i32 @DECL_LANG_SPECIFIC(i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %172
  %177 = load i32, i32* @current_function_decl, align 4
  %178 = call i32 @DECL_CONSTRUCTOR_P(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* @current_function_decl, align 4
  %182 = call i32 @DECL_DESTRUCTOR_P(i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %180, %176
  %185 = load i32*, i32** %7, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32*, i32** %7, align 8
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %187, %184
  %190 = load i8*, i8** %5, align 8
  %191 = call i8* @TREE_TYPE(i8* %190)
  %192 = call i8* @TREE_TYPE(i8* %191)
  store i8* %192, i8** %4, align 8
  br label %248

193:                                              ; preds = %180, %172
  br label %243

194:                                              ; preds = %163
  %195 = load i8*, i8** %5, align 8
  %196 = call i8* @TREE_TYPE(i8* %195)
  %197 = call i32 @TREE_CODE(i8* %196)
  %198 = load i32, i32* @REFERENCE_TYPE, align 4
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %242

200:                                              ; preds = %194
  %201 = load i32, i32* @fixed_type_or_null.ht, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* @htab_hash_pointer, align 4
  %205 = load i32, i32* @htab_eq_pointer, align 4
  %206 = call i32 @htab_create(i32 37, i32 %204, i32 %205, i32* null)
  store i32 %206, i32* @fixed_type_or_null.ht, align 4
  br label %207

207:                                              ; preds = %203, %200
  %208 = load i32*, i32** %6, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = load i32*, i32** %6, align 8
  store i32 1, i32* %211, align 4
  br label %212

212:                                              ; preds = %210, %207
  %213 = load i8*, i8** %5, align 8
  %214 = call i32 @TREE_CODE(i8* %213)
  %215 = icmp eq i32 %214, 128
  br i1 %215, label %216, label %241

216:                                              ; preds = %212
  %217 = load i8*, i8** %5, align 8
  %218 = call i8* @DECL_INITIAL(i8* %217)
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %241

220:                                              ; preds = %216
  %221 = load i32, i32* @fixed_type_or_null.ht, align 4
  %222 = load i8*, i8** %5, align 8
  %223 = call i32 @htab_find(i32 %221, i8* %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %241, label %225

225:                                              ; preds = %220
  %226 = load i32, i32* @fixed_type_or_null.ht, align 4
  %227 = load i8*, i8** %5, align 8
  %228 = load i32, i32* @INSERT, align 4
  %229 = call i8** @htab_find_slot(i32 %226, i8* %227, i32 %228)
  store i8** %229, i8*** %10, align 8
  %230 = load i8*, i8** %5, align 8
  %231 = load i8**, i8*** %10, align 8
  store i8* %230, i8** %231, align 8
  %232 = load i8*, i8** %5, align 8
  %233 = call i8* @DECL_INITIAL(i8* %232)
  %234 = load i32*, i32** %6, align 8
  %235 = load i32*, i32** %7, align 8
  %236 = call i8* @fixed_type_or_null(i8* %233, i32* %234, i32* %235)
  store i8* %236, i8** %9, align 8
  %237 = load i32, i32* @fixed_type_or_null.ht, align 4
  %238 = load i8*, i8** %5, align 8
  %239 = call i32 @htab_remove_elt(i32 %237, i8* %238)
  %240 = load i8*, i8** %9, align 8
  store i8* %240, i8** %4, align 8
  br label %248

241:                                              ; preds = %220, %216, %212
  br label %242

242:                                              ; preds = %241, %194
  br label %243

243:                                              ; preds = %242, %193
  br label %244

244:                                              ; preds = %243
  %245 = load i8*, i8** @NULL_TREE, align 8
  store i8* %245, i8** %4, align 8
  br label %248

246:                                              ; preds = %3
  %247 = load i8*, i8** @NULL_TREE, align 8
  store i8* %247, i8** %4, align 8
  br label %248

248:                                              ; preds = %246, %244, %225, %189, %160, %145, %122, %116, %106, %83, %81, %75, %63, %52, %49, %38, %35, %20, %18
  %249 = load i8*, i8** %4, align 8
  ret i8* %249
}

declare dso_local i32 @TREE_CODE(i8*) #1

declare dso_local i32 @POINTER_TYPE_P(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i8* @TREE_OPERAND(i8*, i32) #1

declare dso_local i32 @TREE_HAS_CONSTRUCTOR(i8*) #1

declare dso_local i8* @get_base_address(i8*) #1

declare dso_local i32 @DECL_P(i8*) #1

declare dso_local i32 @DECL_FIELD_IS_BASE(i8*) #1

declare dso_local i32 @IS_AGGR_TYPE(i8*) #1

declare dso_local i32 @DECL_LANG_SPECIFIC(i32) #1

declare dso_local i32 @DECL_CONSTRUCTOR_P(i32) #1

declare dso_local i32 @DECL_DESTRUCTOR_P(i32) #1

declare dso_local i32 @htab_create(i32, i32, i32, i32*) #1

declare dso_local i8* @DECL_INITIAL(i8*) #1

declare dso_local i32 @htab_find(i32, i8*) #1

declare dso_local i8** @htab_find_slot(i32, i8*, i32) #1

declare dso_local i32 @htab_remove_elt(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
