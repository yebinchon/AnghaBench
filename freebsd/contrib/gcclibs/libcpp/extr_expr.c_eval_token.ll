; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_eval_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_eval_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }

@CPP_N_CATEGORY = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"floating constant in preprocessor expression\00", align 1
@CPP_N_IMAGINARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"imaginary number in preprocessor expression\00", align 1
@PART_PRECISION = common dso_local global i32 0, align 4
@BITS_PER_CPPCHAR_T = common dso_local global i32 0, align 4
@precision = common dso_local global i32 0, align 4
@cplusplus = common dso_local global i32 0, align 4
@warn_undef = common dso_local global i32 0, align 4
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"\22%s\22 is not defined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (%struct.TYPE_28__*, %struct.TYPE_27__*)* @eval_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @eval_token(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_29__, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_29__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_29__, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %175 [
    i32 132, label %16
    i32 128, label %50
    i32 134, label %50
    i32 133, label %94
  ]

16:                                               ; preds = %2
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %19 = call i32 @cpp_classify_number(%struct.TYPE_28__* %17, %struct.TYPE_27__* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @CPP_N_CATEGORY, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %47 [
    i32 131, label %23
    i32 130, label %27
    i32 129, label %46
  ]

23:                                               ; preds = %16
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %25 = load i32, i32* @CPP_DL_ERROR, align 4
  %26 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @cpp_error(%struct.TYPE_28__* %24, i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %47

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @CPP_N_IMAGINARY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call { i64, i64 } @cpp_interpret_integer(%struct.TYPE_28__* %33, %struct.TYPE_27__* %34, i32 %35)
  %37 = bitcast %struct.TYPE_29__* %3 to { i64, i64 }*
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 0
  %39 = extractvalue { i64, i64 } %36, 0
  store i64 %39, i64* %38, align 4
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %37, i32 0, i32 1
  %41 = extractvalue { i64, i64 } %36, 1
  store i64 %41, i64* %40, align 4
  br label %190

42:                                               ; preds = %27
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %44 = load i32, i32* @CPP_DL_ERROR, align 4
  %45 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @cpp_error(%struct.TYPE_28__* %43, i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %47

46:                                               ; preds = %16
  br label %47

47:                                               ; preds = %16, %46, %42, %23
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 2
  store i32 0, i32* %49, align 4
  br label %181

50:                                               ; preds = %2, %2
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %53 = call i32 @cpp_interpret_charconst(%struct.TYPE_28__* %51, %struct.TYPE_27__* %52, i32* %7, i32* %8)
  store i32 %53, i32* %9, align 4
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %93, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %59
  %63 = load i32, i32* @PART_PRECISION, align 4
  %64 = load i32, i32* @BITS_PER_CPPCHAR_T, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* @PART_PRECISION, align 4
  %68 = load i32, i32* @BITS_PER_CPPCHAR_T, align 4
  %69 = sub nsw i32 %67, %68
  %70 = ashr i32 -1, %69
  %71 = xor i32 %70, -1
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %66, %62
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 2
  store i32 -1, i32* %76, align 4
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %78 = load i32, i32* @precision, align 4
  %79 = call i32 @CPP_OPTION(%struct.TYPE_28__* %77, i32 %78)
  %80 = bitcast %struct.TYPE_29__* %6 to { i64, i64 }*
  %81 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 4
  %83 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %80, i32 0, i32 1
  %84 = load i64, i64* %83, align 4
  %85 = call { i64, i64 } @num_trim(i64 %82, i64 %84, i32 %79)
  %86 = bitcast %struct.TYPE_29__* %10 to { i64, i64 }*
  %87 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 0
  %88 = extractvalue { i64, i64 } %85, 0
  store i64 %88, i64* %87, align 4
  %89 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %86, i32 0, i32 1
  %90 = extractvalue { i64, i64 } %85, 1
  store i64 %90, i64* %89, align 4
  %91 = bitcast %struct.TYPE_29__* %6 to i8*
  %92 = bitcast %struct.TYPE_29__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 16, i1 false)
  br label %93

93:                                               ; preds = %75, %59, %50
  br label %181

94:                                               ; preds = %2
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %98, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %94
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %106 = call { i64, i64 } @parse_defined(%struct.TYPE_28__* %105)
  %107 = bitcast %struct.TYPE_29__* %3 to { i64, i64 }*
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 0
  %109 = extractvalue { i64, i64 } %106, 0
  store i64 %109, i64* %108, align 4
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 1
  %111 = extractvalue { i64, i64 } %106, 1
  store i64 %111, i64* %110, align 4
  br label %190

112:                                              ; preds = %94
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %114 = load i32, i32* @cplusplus, align 4
  %115 = call i32 @CPP_OPTION(%struct.TYPE_28__* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %150

117:                                              ; preds = %112
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %121, %125
  br i1 %126, label %137, label %127

127:                                              ; preds = %117
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %131, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %127, %117
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 2
  store i32 0, i32* %138, align 4
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %142, %146
  %148 = zext i1 %147 to i32
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 3
  store i32 %148, i32* %149, align 4
  br label %173

150:                                              ; preds = %127, %112
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 2
  store i32 0, i32* %151, align 4
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 3
  store i32 0, i32* %152, align 4
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %154 = load i32, i32* @warn_undef, align 4
  %155 = call i32 @CPP_OPTION(%struct.TYPE_28__* %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %150
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %157
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %165 = load i32, i32* @CPP_DL_WARNING, align 4
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @NODE_NAME(i32 %169)
  %171 = call i32 (%struct.TYPE_28__*, i32, i8*, ...) @cpp_error(%struct.TYPE_28__* %164, i32 %165, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %163, %157, %150
  br label %173

173:                                              ; preds = %172, %137
  br label %174

174:                                              ; preds = %173
  br label %181

175:                                              ; preds = %2
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %177 = call i32 @_cpp_test_assertion(%struct.TYPE_28__* %176, i32* %7)
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 2
  store i32 0, i32* %178, align 4
  %179 = load i32, i32* %7, align 4
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 3
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %174, %93, %47
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  store i32 %186, i32* %187, align 4
  %188 = bitcast %struct.TYPE_29__* %3 to i8*
  %189 = bitcast %struct.TYPE_29__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %188, i8* align 4 %189, i64 16, i1 false)
  br label %190

190:                                              ; preds = %181, %104, %32
  %191 = bitcast %struct.TYPE_29__* %3 to { i64, i64 }*
  %192 = load { i64, i64 }, { i64, i64 }* %191, align 4
  ret { i64, i64 } %192
}

declare dso_local i32 @cpp_classify_number(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @cpp_error(%struct.TYPE_28__*, i32, i8*, ...) #1

declare dso_local { i64, i64 } @cpp_interpret_integer(%struct.TYPE_28__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @cpp_interpret_charconst(%struct.TYPE_28__*, %struct.TYPE_27__*, i32*, i32*) #1

declare dso_local { i64, i64 } @num_trim(i64, i64, i32) #1

declare dso_local i32 @CPP_OPTION(%struct.TYPE_28__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i64, i64 } @parse_defined(%struct.TYPE_28__*) #1

declare dso_local i32 @NODE_NAME(i32) #1

declare dso_local i32 @_cpp_test_assertion(%struct.TYPE_28__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
