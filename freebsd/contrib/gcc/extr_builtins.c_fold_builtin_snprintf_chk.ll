; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_snprintf_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_fold_builtin_snprintf_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEGER_TYPE = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@target_percent = common dso_local global i32 0, align 4
@target_percent_s = common dso_local global i32 0, align 4
@built_in_decls = common dso_local global i32* null, align 8
@BUILT_IN_VSNPRINTF_CHK = common dso_local global i32 0, align 4
@BUILT_IN_VSNPRINTF = common dso_local global i64 0, align 8
@BUILT_IN_SNPRINTF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fold_builtin_snprintf_chk(i32 %0, i32 %1, i32 %2) #0 {
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
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %177

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TREE_VALUE(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @TREE_TYPE(i32 %21)
  %23 = call i32 @POINTER_TYPE_P(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %177

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @TREE_CHAIN(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %177

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @TREE_VALUE(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @TREE_TYPE(i32 %35)
  %37 = call i64 @TREE_CODE(i32 %36)
  %38 = load i64, i64* @INTEGER_TYPE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %177

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @TREE_CHAIN(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %177

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @TREE_VALUE(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @TREE_TYPE(i32 %50)
  %52 = call i64 @TREE_CODE(i32 %51)
  %53 = load i64, i64* @INTEGER_TYPE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %177

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @TREE_CHAIN(i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %177

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @TREE_VALUE(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @TREE_TYPE(i32 %65)
  %67 = call i64 @TREE_CODE(i32 %66)
  %68 = load i64, i64* @INTEGER_TYPE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %177

71:                                               ; preds = %62
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @TREE_CHAIN(i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %177

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @TREE_VALUE(i32 %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @TREE_TYPE(i32 %80)
  %82 = call i32 @POINTER_TYPE_P(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %177

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @TREE_CHAIN(i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @host_integerp(i32 %88, i32 1)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %177

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @integer_all_onesp(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %119, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @host_integerp(i32 %97, i32 1)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @NULL_TREE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @host_integerp(i32 %105, i32 1)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104, %100
  store i32 0, i32* %4, align 4
  br label %177

109:                                              ; preds = %104
  br label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %110, %109
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %6, align 4
  %115 = call i64 @tree_int_cst_lt(i32 %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %177

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %92
  %120 = call i32 (...) @init_target_chars()
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  store i32 0, i32* %4, align 4
  br label %177

123:                                              ; preds = %119
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @integer_zerop(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %145, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %12, align 4
  %129 = call i8* @c_getstr(i32 %128)
  store i8* %129, i8** %14, align 8
  %130 = load i8*, i8** %14, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %177

133:                                              ; preds = %127
  %134 = load i8*, i8** %14, align 8
  %135 = load i32, i32* @target_percent, align 4
  %136 = call i32* @strchr(i8* %134, i32 %135)
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %133
  %139 = load i8*, i8** %14, align 8
  %140 = load i32, i32* @target_percent_s, align 4
  %141 = call i64 @strcmp(i8* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %177

144:                                              ; preds = %138, %133
  br label %145

145:                                              ; preds = %144, %123
  %146 = load i32, i32* @NULL_TREE, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @tree_cons(i32 %146, i32 %147, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* @NULL_TREE, align 4
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @tree_cons(i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* @NULL_TREE, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @tree_cons(i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32*, i32** @built_in_decls, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* @BUILT_IN_VSNPRINTF_CHK, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %145
  %163 = load i64, i64* @BUILT_IN_VSNPRINTF, align 8
  br label %166

164:                                              ; preds = %145
  %165 = load i64, i64* @BUILT_IN_SNPRINTF, align 8
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i64 [ %163, %162 ], [ %165, %164 ]
  %168 = getelementptr inbounds i32, i32* %158, i64 %167
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  br label %177

173:                                              ; preds = %166
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @build_function_call_expr(i32 %174, i32 %175)
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %173, %172, %143, %132, %122, %117, %108, %91, %84, %76, %70, %61, %55, %46, %40, %31, %25, %17
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @host_integerp(i32, i32) #1

declare dso_local i32 @integer_all_onesp(i32) #1

declare dso_local i64 @tree_int_cst_lt(i32, i32) #1

declare dso_local i32 @init_target_chars(...) #1

declare dso_local i32 @integer_zerop(i32) #1

declare dso_local i8* @c_getstr(i32) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @tree_cons(i32, i32, i32) #1

declare dso_local i32 @build_function_call_expr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
