; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-convert.c_convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-convert.c_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* (i64, i64)* }
%struct.TYPE_4__ = type { i64 (i64, i64)* }

@error_mark_node = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR_MARK = common dso_local global i64 0, align 8
@VOID_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"void value not ignored as it ought to be\00", align 1
@INTEGER_TYPE = common dso_local global i32 0, align 4
@ENUMERAL_TYPE = common dso_local global i32 0, align 4
@BOOLEAN_TYPE = common dso_local global i32 0, align 4
@POINTER_TYPE = common dso_local global i32 0, align 4
@REFERENCE_TYPE = common dso_local global i32 0, align 4
@BLOCK_POINTER_TYPE = common dso_local global i32 0, align 4
@REAL_TYPE = common dso_local global i32 0, align 4
@COMPLEX_TYPE = common dso_local global i32 0, align 4
@VECTOR_TYPE = common dso_local global i32 0, align 4
@RECORD_TYPE = common dso_local global i32 0, align 4
@UNION_TYPE = common dso_local global i32 0, align 4
@lang_hooks = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"conversion to non-scalar type requested\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @error_mark_node, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @error_mark_node, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @TREE_TYPE(i64 %21)
  %23 = load i64, i64* @error_mark_node, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %16, %2
  %26 = load i64, i64* @error_mark_node, align 8
  store i64 %26, i64* %3, align 8
  br label %173

27:                                               ; preds = %20
  %28 = load i8* (i64, i64)*, i8* (i64, i64)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 0), align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @TREE_TYPE(i64 %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i8* %28(i64 %30, i64 %31)
  store i8* %32, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 (i8*, ...) @error(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* @error_mark_node, align 8
  store i64 %37, i64* %3, align 8
  br label %173

38:                                               ; preds = %27
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @TREE_TYPE(i64 %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %3, align 8
  br label %173

45:                                               ; preds = %38
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @TYPE_MAIN_VARIANT(i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @TREE_TYPE(i64 %48)
  %50 = call i64 @TYPE_MAIN_VARIANT(i64 %49)
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @fold_convert(i64 %53, i64 %54)
  store i64 %55, i64* %3, align 8
  br label %173

56:                                               ; preds = %45
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @TREE_TYPE(i64 %57)
  %59 = call i64 @TREE_CODE(i64 %58)
  %60 = load i64, i64* @ERROR_MARK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i64, i64* @error_mark_node, align 8
  store i64 %63, i64* %3, align 8
  br label %173

64:                                               ; preds = %56
  %65 = load i64, i64* %5, align 8
  %66 = call i64 @TREE_TYPE(i64 %65)
  %67 = call i64 @TREE_CODE(i64 %66)
  %68 = load i64, i64* @VOID_TYPE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i64, i64* @error_mark_node, align 8
  store i64 %72, i64* %3, align 8
  br label %173

73:                                               ; preds = %64
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* @VOID_TYPE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @fold_convert(i64 %79, i64 %80)
  store i64 %81, i64* %3, align 8
  br label %173

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @INTEGER_TYPE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @ENUMERAL_TYPE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %86, %82
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @convert_to_integer(i64 %91, i64 %92)
  %94 = call i64 @fold(i32 %93)
  store i64 %94, i64* %3, align 8
  br label %173

95:                                               ; preds = %86
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @BOOLEAN_TYPE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i64 @c_objc_common_truthvalue_conversion(i64 %101)
  %103 = call i64 @fold_convert(i64 %100, i64 %102)
  store i64 %103, i64* %3, align 8
  br label %173

104:                                              ; preds = %95
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @POINTER_TYPE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @REFERENCE_TYPE, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108, %104
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @convert_to_pointer(i64 %113, i64 %114)
  %116 = call i64 @fold(i32 %115)
  store i64 %116, i64* %3, align 8
  br label %173

117:                                              ; preds = %108
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @BLOCK_POINTER_TYPE, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @convert_to_block_pointer(i64 %122, i64 %123)
  %125 = call i64 @fold(i32 %124)
  store i64 %125, i64* %3, align 8
  br label %173

126:                                              ; preds = %117
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @REAL_TYPE, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @convert_to_real(i64 %131, i64 %132)
  %134 = call i64 @fold(i32 %133)
  store i64 %134, i64* %3, align 8
  br label %173

135:                                              ; preds = %126
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @COMPLEX_TYPE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* %6, align 8
  %142 = call i32 @convert_to_complex(i64 %140, i64 %141)
  %143 = call i64 @fold(i32 %142)
  store i64 %143, i64* %3, align 8
  br label %173

144:                                              ; preds = %135
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @VECTOR_TYPE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i64, i64* %4, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call i32 @convert_to_vector(i64 %149, i64 %150)
  %152 = call i64 @fold(i32 %151)
  store i64 %152, i64* %3, align 8
  br label %173

153:                                              ; preds = %144
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @RECORD_TYPE, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @UNION_TYPE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %157, %153
  %162 = load i64 (i64, i64)*, i64 (i64, i64)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @lang_hooks, i32 0, i32 0), align 8
  %163 = load i64, i64* %4, align 8
  %164 = load i64, i64* %5, align 8
  %165 = call i64 @TREE_TYPE(i64 %164)
  %166 = call i64 %162(i64 %163, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i64, i64* %6, align 8
  store i64 %169, i64* %3, align 8
  br label %173

170:                                              ; preds = %161, %157
  %171 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i64, i64* @error_mark_node, align 8
  store i64 %172, i64* %3, align 8
  br label %173

173:                                              ; preds = %170, %168, %148, %139, %130, %121, %112, %99, %90, %78, %70, %62, %52, %43, %34, %25
  %174 = load i64, i64* %3, align 8
  ret i64 %174
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i64 @fold_convert(i64, i64) #1

declare dso_local i64 @fold(i32) #1

declare dso_local i32 @convert_to_integer(i64, i64) #1

declare dso_local i64 @c_objc_common_truthvalue_conversion(i64) #1

declare dso_local i32 @convert_to_pointer(i64, i64) #1

declare dso_local i32 @convert_to_block_pointer(i64, i64) #1

declare dso_local i32 @convert_to_real(i64, i64) #1

declare dso_local i32 @convert_to_complex(i64, i64) #1

declare dso_local i32 @convert_to_vector(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
