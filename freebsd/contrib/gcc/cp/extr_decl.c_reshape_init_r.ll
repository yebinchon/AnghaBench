; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_reshape_init_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_reshape_init_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@CONSTRUCTOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"braces around scalar initializer for type %qT\00", align 1
@error_mark_node = common dso_local global i32 0, align 4
@LOOKUP_NORMAL = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i64 0, align 8
@constructor_elt = common dso_local global i32 0, align 4
@STRING_CST = common dso_local global i64 0, align 8
@OPT_Wmissing_braces = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"missing braces around initializer for %qT\00", align 1
@VECTOR_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__*, i32)* @reshape_init_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reshape_init_r(i32 %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @CP_AGGREGATE_TYPE_P(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @CONSTRUCTOR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @BRACE_ENCLOSED_INITIALIZER_P(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @error_mark_node, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %23, %18
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 1
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %33, align 8
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %178

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @TREE_CODE(i32 %38)
  %40 = load i64, i64* @CONSTRUCTOR, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @TREE_TYPE(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @LOOKUP_NORMAL, align 4
  %48 = call i64 @can_convert_arg(i32 %43, i64 %45, i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 1
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %52, align 8
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %178

56:                                               ; preds = %42, %37
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @TREE_CODE(i32 %57)
  %59 = load i64, i64* @ARRAY_TYPE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %101

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @TREE_TYPE(i32 %62)
  %64 = call i32 @TYPE_MAIN_VARIANT(i64 %63)
  %65 = call i64 @char_type_p(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @TREE_CODE(i32 %72)
  %74 = load i64, i64* @CONSTRUCTOR, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = load i32, i32* @constructor_elt, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @CONSTRUCTOR_ELTS(i32 %78)
  %80 = call i32 @VEC_length(i32 %77, i32 %79)
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32, i32* @constructor_elt, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @CONSTRUCTOR_ELTS(i32 %84)
  %86 = call %struct.TYPE_10__* @VEC_index(i32 %83, i32 %85, i32 0)
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %82, %76, %71, %67
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @TREE_CODE(i32 %90)
  %92 = load i64, i64* @STRING_CST, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 1
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %96, align 8
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %178

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %61, %56
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %147, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @TREE_CODE(i32 %105)
  %107 = load i64, i64* @CONSTRUCTOR, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %104
  %110 = load i32, i32* %8, align 4
  %111 = call i64 @TREE_TYPE(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = call i64 @TREE_TYPE(i32 %114)
  %116 = call i64 @TYPE_PTRMEMFUNC_P(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %142

119:                                              ; preds = %113, %109
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @COMPOUND_LITERAL_P(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @BRACE_ENCLOSED_INITIALIZER_P(i32 %124)
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @gcc_assert(i32 %128)
  br label %141

130:                                              ; preds = %119
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 1
  store %struct.TYPE_8__* %134, %struct.TYPE_8__** %132, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @BRACE_ENCLOSED_INITIALIZER_P(i32 %135)
  %137 = call i32 @gcc_assert(i32 %136)
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @reshape_init(i32 %138, i32 %139)
  store i32 %140, i32* %4, align 4
  br label %178

141:                                              ; preds = %123
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %104
  %144 = load i32, i32* @OPT_Wmissing_braces, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @warning(i32 %144, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %147

147:                                              ; preds = %143, %101
  %148 = load i32, i32* %5, align 4
  %149 = call i64 @CLASS_TYPE_P(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @reshape_init_class(i32 %152, %struct.TYPE_9__* %153, i32 %154)
  store i32 %155, i32* %4, align 4
  br label %178

156:                                              ; preds = %147
  %157 = load i32, i32* %5, align 4
  %158 = call i64 @TREE_CODE(i32 %157)
  %159 = load i64, i64* @ARRAY_TYPE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %164 = call i32 @reshape_init_array(i32 %162, %struct.TYPE_9__* %163)
  store i32 %164, i32* %4, align 4
  br label %178

165:                                              ; preds = %156
  %166 = load i32, i32* %5, align 4
  %167 = call i64 @TREE_CODE(i32 %166)
  %168 = load i64, i64* @VECTOR_TYPE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %173 = call i32 @reshape_init_vector(i32 %171, %struct.TYPE_9__* %172)
  store i32 %173, i32* %4, align 4
  br label %178

174:                                              ; preds = %165
  %175 = call i32 (...) @gcc_unreachable()
  br label %176

176:                                              ; preds = %174
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %31, %50, %94, %130, %151, %161, %170, %177
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @CP_AGGREGATE_TYPE_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @BRACE_ENCLOSED_INITIALIZER_P(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i64 @can_convert_arg(i32, i64, i32, i32) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i64 @char_type_p(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i64) #1

declare dso_local i32 @VEC_length(i32, i32) #1

declare dso_local i32 @CONSTRUCTOR_ELTS(i32) #1

declare dso_local %struct.TYPE_10__* @VEC_index(i32, i32, i32) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i64 @COMPOUND_LITERAL_P(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @reshape_init(i32, i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

declare dso_local i64 @CLASS_TYPE_P(i32) #1

declare dso_local i32 @reshape_init_class(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @reshape_init_array(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @reshape_init_vector(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
