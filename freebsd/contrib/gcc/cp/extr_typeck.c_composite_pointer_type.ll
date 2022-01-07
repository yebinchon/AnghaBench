; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_composite_pointer_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_composite_pointer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i8*, i8*)* }

@POINTER_TYPE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"ISO C++ forbids %s between pointer of type %<void *%> and pointer-to-function\00", align 1
@void_type_node = common dso_local global i8* null, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s between distinct pointer types %qT and %qT lacks a cast\00", align 1
@error_mark_node = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [69 x i8] c"%s between distinct pointer-to-member types %qT and %qT lacks a cast\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @composite_pointer_type(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @null_ptr_cst_p(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  store i8* %21, i8** %6, align 8
  br label %229

22:                                               ; preds = %5
  %23 = load i8*, i8** %10, align 8
  %24 = call i64 @null_ptr_cst_p(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %6, align 8
  br label %229

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @TREE_CODE(i8* %29)
  %31 = load i64, i64* @POINTER_TYPE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = call i8* @TREE_TYPE(i8* %34)
  %36 = call i64 @VOID_TYPE_P(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  store i8* %39, i8** %14, align 8
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %14, align 8
  store i8* %41, i8** %8, align 8
  br label %42

42:                                               ; preds = %38, %33, %28
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @TREE_CODE(i8* %43)
  %45 = load i64, i64* @POINTER_TYPE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = call i8* @TREE_TYPE(i8* %48)
  %50 = call i64 @VOID_TYPE_P(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %47
  %53 = load i64, i64* @pedantic, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @TYPE_PTRFN_P(i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @pedwarn(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %55, %52
  %63 = load i8*, i8** @void_type_node, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i8* @TREE_TYPE(i8* %64)
  %66 = call i32 @cp_type_quals(i8* %65)
  %67 = load i8*, i8** %8, align 8
  %68 = call i8* @TREE_TYPE(i8* %67)
  %69 = call i32 @cp_type_quals(i8* %68)
  %70 = or i32 %66, %69
  %71 = call i8* @cp_build_qualified_type(i8* %63, i32 %70)
  store i8* %71, i8** %16, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = call i8* @build_pointer_type(i8* %72)
  store i8* %73, i8** %16, align 8
  %74 = load i8* (i8*, i8*)*, i8* (i8*, i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = call i8* %74(i8* %75, i8* %76)
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = call i8* @build_type_attribute_variant(i8* %78, i8* %79)
  store i8* %80, i8** %6, align 8
  br label %229

81:                                               ; preds = %47, %42
  %82 = call i64 (...) @c_dialect_objc()
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @TREE_CODE(i8* %85)
  %87 = load i64, i64* @POINTER_TYPE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %84
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @TREE_CODE(i8* %90)
  %92 = load i64, i64* @POINTER_TYPE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* @NULL_TREE, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = call i64 @objc_have_common_type(i8* %95, i8* %96, i32 -3, i32 %97, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i8*, i8** %7, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = call i8* @objc_common_type(i8* %102, i8* %103)
  store i8* %104, i8** %6, align 8
  br label %229

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %89, %84, %81
  %107 = load i8*, i8** %7, align 8
  %108 = call i64 @TREE_CODE(i8* %107)
  %109 = load i64, i64* @POINTER_TYPE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %167

111:                                              ; preds = %106
  %112 = load i8*, i8** %8, align 8
  %113 = call i64 @TREE_CODE(i8* %112)
  %114 = load i64, i64* @POINTER_TYPE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %167

116:                                              ; preds = %111
  %117 = load i8*, i8** %7, align 8
  %118 = call i8* @TREE_TYPE(i8* %117)
  %119 = call i64 @CLASS_TYPE_P(i8* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %167

121:                                              ; preds = %116
  %122 = load i8*, i8** %8, align 8
  %123 = call i8* @TREE_TYPE(i8* %122)
  %124 = call i64 @CLASS_TYPE_P(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %167

126:                                              ; preds = %121
  %127 = load i8*, i8** %7, align 8
  %128 = call i8* @TREE_TYPE(i8* %127)
  %129 = load i8*, i8** %8, align 8
  %130 = call i8* @TREE_TYPE(i8* %129)
  %131 = call i32 @same_type_ignoring_top_level_qualifiers_p(i8* %128, i8* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %167, label %133

133:                                              ; preds = %126
  %134 = load i8*, i8** %7, align 8
  %135 = call i8* @TREE_TYPE(i8* %134)
  store i8* %135, i8** %12, align 8
  %136 = load i8*, i8** %8, align 8
  %137 = call i8* @TREE_TYPE(i8* %136)
  store i8* %137, i8** %13, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = call i64 @DERIVED_FROM_P(i8* %138, i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load i8*, i8** %12, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @TYPE_QUALS(i8* %144)
  %146 = call i8* @cp_build_qualified_type(i8* %143, i32 %145)
  %147 = call i8* @build_pointer_type(i8* %146)
  store i8* %147, i8** %8, align 8
  br label %166

148:                                              ; preds = %133
  %149 = load i8*, i8** %13, align 8
  %150 = load i8*, i8** %12, align 8
  %151 = call i64 @DERIVED_FROM_P(i8* %149, i8* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i8*, i8** %13, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = call i32 @TYPE_QUALS(i8* %155)
  %157 = call i8* @cp_build_qualified_type(i8* %154, i32 %156)
  %158 = call i8* @build_pointer_type(i8* %157)
  store i8* %158, i8** %7, align 8
  br label %165

159:                                              ; preds = %148
  %160 = load i8*, i8** %11, align 8
  %161 = load i8*, i8** %7, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %160, i8* %161, i8* %162)
  %164 = load i8*, i8** @error_mark_node, align 8
  store i8* %164, i8** %6, align 8
  br label %229

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %142
  br label %224

167:                                              ; preds = %126, %121, %116, %111, %106
  %168 = load i8*, i8** %7, align 8
  %169 = call i64 @TYPE_PTR_TO_MEMBER_P(i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %210

171:                                              ; preds = %167
  %172 = load i8*, i8** %7, align 8
  %173 = call i8* @TYPE_PTRMEM_CLASS_TYPE(i8* %172)
  %174 = load i8*, i8** %8, align 8
  %175 = call i8* @TYPE_PTRMEM_CLASS_TYPE(i8* %174)
  %176 = call i32 @same_type_p(i8* %173, i8* %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %210, label %178

178:                                              ; preds = %171
  %179 = load i8*, i8** %7, align 8
  %180 = call i8* @TYPE_PTRMEM_CLASS_TYPE(i8* %179)
  store i8* %180, i8** %12, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = call i8* @TYPE_PTRMEM_CLASS_TYPE(i8* %181)
  store i8* %182, i8** %13, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = load i8*, i8** %13, align 8
  %185 = call i64 @DERIVED_FROM_P(i8* %183, i8* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load i8*, i8** %13, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i8* %189)
  %191 = call i8* @build_ptrmem_type(i8* %188, i32 %190)
  store i8* %191, i8** %7, align 8
  br label %209

192:                                              ; preds = %178
  %193 = load i8*, i8** %13, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = call i64 @DERIVED_FROM_P(i8* %193, i8* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load i8*, i8** %12, align 8
  %199 = load i8*, i8** %8, align 8
  %200 = call i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i8* %199)
  %201 = call i8* @build_ptrmem_type(i8* %198, i32 %200)
  store i8* %201, i8** %8, align 8
  br label %208

202:                                              ; preds = %192
  %203 = load i8*, i8** %11, align 8
  %204 = load i8*, i8** %7, align 8
  %205 = load i8*, i8** %8, align 8
  %206 = call i32 @error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i8* %203, i8* %204, i8* %205)
  %207 = load i8*, i8** @error_mark_node, align 8
  store i8* %207, i8** %6, align 8
  br label %229

208:                                              ; preds = %197
  br label %209

209:                                              ; preds = %208, %187
  br label %223

210:                                              ; preds = %171, %167
  %211 = load i8*, i8** %7, align 8
  %212 = call i64 @TREE_CODE(i8* %211)
  %213 = load i8*, i8** %8, align 8
  %214 = call i64 @TREE_CODE(i8* %213)
  %215 = icmp ne i64 %212, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %210
  %217 = load i8*, i8** %11, align 8
  %218 = load i8*, i8** %7, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %217, i8* %218, i8* %219)
  %221 = load i8*, i8** @error_mark_node, align 8
  store i8* %221, i8** %6, align 8
  br label %229

222:                                              ; preds = %210
  br label %223

223:                                              ; preds = %222, %209
  br label %224

224:                                              ; preds = %223, %166
  %225 = load i8*, i8** %7, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = call i8* @composite_pointer_type_r(i8* %225, i8* %226, i8* %227)
  store i8* %228, i8** %6, align 8
  br label %229

229:                                              ; preds = %224, %216, %202, %159, %101, %62, %26, %20
  %230 = load i8*, i8** %6, align 8
  ret i8* %230
}

declare dso_local i64 @null_ptr_cst_p(i8*) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i64 @VOID_TYPE_P(i8*) #1

declare dso_local i8* @TREE_TYPE(i8*) #1

declare dso_local i64 @TYPE_PTRFN_P(i8*) #1

declare dso_local i32 @pedwarn(i8*, i8*) #1

declare dso_local i8* @cp_build_qualified_type(i8*, i32) #1

declare dso_local i32 @cp_type_quals(i8*) #1

declare dso_local i8* @build_pointer_type(i8*) #1

declare dso_local i8* @build_type_attribute_variant(i8*, i8*) #1

declare dso_local i64 @c_dialect_objc(...) #1

declare dso_local i64 @objc_have_common_type(i8*, i8*, i32, i32, i8*) #1

declare dso_local i8* @objc_common_type(i8*, i8*) #1

declare dso_local i64 @CLASS_TYPE_P(i8*) #1

declare dso_local i32 @same_type_ignoring_top_level_qualifiers_p(i8*, i8*) #1

declare dso_local i64 @DERIVED_FROM_P(i8*, i8*) #1

declare dso_local i32 @TYPE_QUALS(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*, i8*) #1

declare dso_local i64 @TYPE_PTR_TO_MEMBER_P(i8*) #1

declare dso_local i32 @same_type_p(i8*, i8*) #1

declare dso_local i8* @TYPE_PTRMEM_CLASS_TYPE(i8*) #1

declare dso_local i8* @build_ptrmem_type(i8*, i32) #1

declare dso_local i32 @TYPE_PTRMEM_POINTED_TO_TYPE(i8*) #1

declare dso_local i8* @composite_pointer_type_r(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
