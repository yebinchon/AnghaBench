; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_do_type_instantiation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_do_type_instantiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TYPE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"explicit instantiation of non-template type %qT\00", align 1
@tf_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"explicit instantiation of %q#T before definition of template\00", align 1
@NULL_TREE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@in_system_header = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"ISO C++ forbids the use of %qE on explicit instantiations\00", align 1
@ridpointers = common dso_local global i64* null, align 8
@RID_INLINE = common dso_local global i64 0, align 8
@RID_EXTERN = common dso_local global i64 0, align 8
@RID_STATIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"storage class %qD applied to template instantiation\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"duplicate explicit instantiation of %q#T\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@bt_instantiate_type_proc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_type_instantiation(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @TREE_CODE(i64 %12)
  %14 = load i64, i64* @TYPE_DECL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @TREE_TYPE(i64 %17)
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @CLASS_TYPE_P(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @CLASSTYPE_TEMPLATE_INFO(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %195

30:                                               ; preds = %23
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @complete_type(i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @COMPLETE_TYPE_P(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @tf_error, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %41, %36
  br label %195

45:                                               ; preds = %30
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @NULL_TREE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %94

49:                                               ; preds = %45
  %50 = load i64, i64* @pedantic, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* @in_system_header, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @pedwarn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %55, %52, %49
  %59 = load i64, i64* %5, align 8
  %60 = load i64*, i64** @ridpointers, align 8
  %61 = load i64, i64* @RID_INLINE, align 8
  %62 = trunc i64 %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %59, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  br label %93

68:                                               ; preds = %58
  %69 = load i64, i64* %5, align 8
  %70 = load i64*, i64** @ridpointers, align 8
  %71 = load i64, i64* @RID_EXTERN, align 8
  %72 = trunc i64 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %69, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 1, i32* %7, align 4
  br label %92

78:                                               ; preds = %68
  %79 = load i64, i64* %5, align 8
  %80 = load i64*, i64** @ridpointers, align 8
  %81 = load i64, i64* @RID_STATIC, align 8
  %82 = trunc i64 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %79, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  store i32 1, i32* %9, align 4
  br label %91

88:                                               ; preds = %78
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i64 %89)
  store i32 0, i32* %7, align 4
  br label %91

91:                                               ; preds = %88, %87
  br label %92

92:                                               ; preds = %91, %77
  br label %93

93:                                               ; preds = %92, %67
  br label %94

94:                                               ; preds = %93, %45
  %95 = load i64, i64* %4, align 8
  %96 = call i64 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %195

99:                                               ; preds = %94
  %100 = load i64, i64* %4, align 8
  %101 = call i64 @CLASSTYPE_EXPLICIT_INSTANTIATION(i64 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load i64, i64* %4, align 8
  %105 = call i32 @CLASSTYPE_INTERFACE_ONLY(i64 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @tf_error, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @pedwarn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %117)
  br label %119

119:                                              ; preds = %116, %111, %108, %103
  %120 = load i64, i64* %4, align 8
  %121 = call i32 @CLASSTYPE_INTERFACE_ONLY(i64 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  br label %195

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %124, %99
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @TYPE_NAME(i64 %127)
  %129 = call i32 @check_explicit_instantiation_namespace(i32 %128)
  %130 = load i64, i64* %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @mark_class_instantiated(i64 %130, i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %195

136:                                              ; preds = %126
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %163, label %139

139:                                              ; preds = %136
  %140 = load i64, i64* %4, align 8
  %141 = call i64 @TYPE_METHODS(i64 %140)
  store i64 %141, i64* %11, align 8
  br label %142

142:                                              ; preds = %159, %139
  %143 = load i64, i64* %11, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %142
  %146 = load i64, i64* %11, align 8
  %147 = call i64 @TREE_CODE(i64 %146)
  %148 = load i64, i64* @FUNCTION_DECL, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load i64, i64* %11, align 8
  %152 = call i64 @DECL_TEMPLATE_INSTANTIATION(i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load i64, i64* %11, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @instantiate_class_member(i64 %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %150, %145
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %11, align 8
  %161 = call i64 @TREE_CHAIN(i64 %160)
  store i64 %161, i64* %11, align 8
  br label %142

162:                                              ; preds = %142
  br label %163

163:                                              ; preds = %162, %136
  %164 = load i64, i64* %4, align 8
  %165 = call i64 @TYPE_FIELDS(i64 %164)
  store i64 %165, i64* %11, align 8
  br label %166

166:                                              ; preds = %183, %163
  %167 = load i64, i64* %11, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = load i64, i64* %11, align 8
  %171 = call i64 @TREE_CODE(i64 %170)
  %172 = load i64, i64* @VAR_DECL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load i64, i64* %11, align 8
  %176 = call i64 @DECL_TEMPLATE_INSTANTIATION(i64 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i64, i64* %11, align 8
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @instantiate_class_member(i64 %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %174, %169
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %11, align 8
  %185 = call i64 @TREE_CHAIN(i64 %184)
  store i64 %185, i64* %11, align 8
  br label %166

186:                                              ; preds = %166
  %187 = load i64, i64* %4, align 8
  %188 = call i64 @CLASSTYPE_NESTED_UTDS(i64 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = load i64, i64* %4, align 8
  %192 = call i64 @CLASSTYPE_NESTED_UTDS(i64 %191)
  %193 = load i32, i32* @bt_instantiate_type_proc, align 4
  %194 = call i32 @binding_table_foreach(i64 %192, i32 %193, i64* %5)
  br label %195

195:                                              ; preds = %27, %44, %98, %123, %135, %190, %186
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @CLASS_TYPE_P(i64) #1

declare dso_local i32 @CLASSTYPE_TEMPLATE_INFO(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @complete_type(i64) #1

declare dso_local i32 @COMPLETE_TYPE_P(i64) #1

declare dso_local i32 @pedwarn(i8*, i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i64) #1

declare dso_local i64 @CLASSTYPE_EXPLICIT_INSTANTIATION(i64) #1

declare dso_local i32 @CLASSTYPE_INTERFACE_ONLY(i64) #1

declare dso_local i32 @check_explicit_instantiation_namespace(i32) #1

declare dso_local i32 @TYPE_NAME(i64) #1

declare dso_local i32 @mark_class_instantiated(i64, i32) #1

declare dso_local i64 @TYPE_METHODS(i64) #1

declare dso_local i64 @DECL_TEMPLATE_INSTANTIATION(i64) #1

declare dso_local i32 @instantiate_class_member(i64, i32) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @TYPE_FIELDS(i64) #1

declare dso_local i64 @CLASSTYPE_NESTED_UTDS(i64) #1

declare dso_local i32 @binding_table_foreach(i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
