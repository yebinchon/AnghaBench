; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_interpret_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-lex.c_interpret_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@parse_in = common dso_local global i32 0, align 4
@CPP_N_UNSIGNED = common dso_local global i32 0, align 4
@CPP_N_RADIX = common dso_local global i32 0, align 4
@CPP_N_DECIMAL = common dso_local global i32 0, align 4
@itk_long = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i32 0, align 4
@itk_unsigned_long = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"this decimal constant is unsigned only in ISO C90\00", align 1
@OPT_Wtraditional = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"this decimal constant would be unsigned in ISO C90\00", align 1
@itk_none = common dso_local global i32 0, align 4
@widest_unsigned_literal_type_node = common dso_local global i32 0, align 4
@widest_integer_literal_type_node = common dso_local global i32 0, align 4
@integer_types = common dso_local global i32* null, align 8
@CPP_N_WIDTH = common dso_local global i32 0, align 4
@CPP_N_LARGE = common dso_local global i32 0, align 4
@in_system_header = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"integer constant is too large for %qs type\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@CPP_N_IMAGINARY = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @interpret_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpret_integer(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @parse_in, align 4
  %15 = call %struct.TYPE_7__* @cpp_get_options(i32 %14)
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %9, align 8
  %16 = load i32, i32* @parse_in, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @cpp_interpret_integer(i32 %16, i32* %17, i32 %18)
  %20 = bitcast %struct.TYPE_8__* %10 to i64*
  store i64 %19, i64* %20, align 4
  %21 = bitcast %struct.TYPE_8__* %8 to i8*
  %22 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 8, i1 false)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = bitcast %struct.TYPE_8__* %8 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = call i64 @cpp_num_sign_extend(i64 %27, i32 %25)
  %29 = bitcast %struct.TYPE_8__* %11 to i64*
  store i64 %28, i64* %29, align 4
  %30 = bitcast %struct.TYPE_8__* %8 to i8*
  %31 = bitcast %struct.TYPE_8__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CPP_N_UNSIGNED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @narrowest_unsigned_type(i32 %38, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %92

43:                                               ; preds = %2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @narrowest_unsigned_type(i32 %45, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @narrowest_signed_type(i32 %51, i32 %53, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @CPP_N_RADIX, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @CPP_N_DECIMAL, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %43
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @MIN(i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  br label %91

65:                                               ; preds = %43
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @itk_long, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i32, i32* @flag_isoc99, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @itk_unsigned_long, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @itk_unsigned_long, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %7, align 4
  %85 = call i32 @warning(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @OPT_Wtraditional, align 4
  %88 = call i32 @warning(i32 %87, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %70, %65
  br label %91

91:                                               ; preds = %90, %61
  br label %92

92:                                               ; preds = %91, %36
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @itk_none, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @CPP_N_UNSIGNED, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @widest_unsigned_literal_type_node, align 4
  br label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @widest_integer_literal_type_node, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  store i32 %106, i32* %6, align 4
  br label %113

107:                                              ; preds = %92
  %108 = load i32*, i32** @integer_types, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %107, %105
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @itk_unsigned_long, align 4
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @CPP_N_WIDTH, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @CPP_N_LARGE, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load i32, i32* @in_system_header, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @flag_isoc99, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @CPP_N_UNSIGNED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %136 = call i32 @pedwarn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %129, %126, %123, %117, %113
  %138 = load i32, i32* %6, align 4
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @build_int_cst_wide(i32 %138, i32 %140, i32 %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @CPP_N_IMAGINARY, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %137
  %149 = load i32, i32* @NULL_TREE, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @build_int_cst(i32 %150, i32 0)
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @build_complex(i32 %149, i32 %151, i32 %152)
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %148, %137
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_7__* @cpp_get_options(i32) #1

declare dso_local i64 @cpp_interpret_integer(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cpp_num_sign_extend(i64, i32) #1

declare dso_local i32 @narrowest_unsigned_type(i32, i32, i32) #1

declare dso_local i32 @narrowest_signed_type(i32, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @pedwarn(i8*, i8*) #1

declare dso_local i32 @build_int_cst_wide(i32, i32, i32) #1

declare dso_local i32 @build_complex(i32, i32, i32) #1

declare dso_local i32 @build_int_cst(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
