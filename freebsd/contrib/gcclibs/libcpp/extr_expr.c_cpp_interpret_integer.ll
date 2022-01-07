; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_cpp_interpret_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_cpp_interpret_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32*, i32 }

@CPP_N_UNSIGNED = common dso_local global i32 0, align 4
@CPP_N_RADIX = common dso_local global i32 0, align 4
@CPP_N_OCTAL = common dso_local global i32 0, align 4
@CPP_N_HEX = common dso_local global i32 0, align 4
@CPP_N_BINARY = common dso_local global i32 0, align 4
@PART_PRECISION = common dso_local global i64 0, align 8
@CPP_DL_PEDWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"integer constant is too large for its type\00", align 1
@traditional = common dso_local global i32 0, align 4
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"integer constant is so large that it is unsigned\00", align 1
@precision = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpp_interpret_integer(%struct.TYPE_20__* noalias sret %0, %struct.TYPE_19__* %1, %struct.TYPE_18__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %6, align 8
  store i32 %3, i32* %7, align 4
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CPP_N_UNSIGNED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %32, i64 %38
  store i32* %39, i32** %9, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %4
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %49, 48
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  br label %191

52:                                               ; preds = %4
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %54 = load i64, i64* %11, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i64 @CPP_OPTION(%struct.TYPE_19__* %53, i32 %55)
  store i64 %56, i64* %11, align 8
  store i32 10, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @CPP_N_RADIX, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @CPP_N_OCTAL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  store i32 8, i32* %12, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %8, align 8
  br label %85

65:                                               ; preds = %52
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CPP_N_RADIX, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @CPP_N_HEX, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  store i32 16, i32* %12, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32* %73, i32** %8, align 8
  br label %84

74:                                               ; preds = %65
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @CPP_N_RADIX, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @CPP_N_BINARY, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  store i32 2, i32* %12, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32* %82, i32** %8, align 8
  br label %83

83:                                               ; preds = %80, %74
  br label %84

84:                                               ; preds = %83, %71
  br label %85

85:                                               ; preds = %84, %62
  store i64 -1, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @PART_PRECISION, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i64, i64* @PART_PRECISION, align 8
  %91 = load i64, i64* %11, align 8
  %92 = sub i64 %90, %91
  %93 = load i64, i64* %10, align 8
  %94 = lshr i64 %93, %92
  store i64 %94, i64* %10, align 8
  br label %95

95:                                               ; preds = %89, %85
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* %12, align 4
  %98 = zext i32 %97 to i64
  %99 = sub i64 %96, %98
  %100 = add i64 %99, 1
  %101 = load i32, i32* %12, align 4
  %102 = zext i32 %101 to i64
  %103 = udiv i64 %100, %102
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %151, %95
  %106 = load i32*, i32** %8, align 8
  %107 = load i32*, i32** %9, align 8
  %108 = icmp ult i32* %106, %107
  br i1 %108, label %109, label %154

109:                                              ; preds = %105
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i64 @ISDIGIT(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %12, align 4
  %117 = icmp eq i32 %116, 16
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @ISXDIGIT(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118, %109
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @hex_value(i32 %123)
  store i32 %124, i32* %13, align 4
  br label %126

125:                                              ; preds = %118, %115
  br label %154

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = zext i32 %128 to i64
  %130 = load i64, i64* %10, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = mul i32 %134, %135
  %137 = load i32, i32* %13, align 4
  %138 = add i32 %136, %137
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 0
  store i32 %138, i32* %139, align 8
  br label %150

140:                                              ; preds = %126
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i64, i64* %11, align 8
  call void @append_digit(%struct.TYPE_20__* sret %15, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %0, i32 %141, i32 %142, i64 %143)
  %144 = bitcast %struct.TYPE_20__* %0 to i8*
  %145 = bitcast %struct.TYPE_20__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 24, i1 false)
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %14, align 4
  store i64 0, i64* %10, align 8
  br label %150

150:                                              ; preds = %140, %132
  br label %151

151:                                              ; preds = %150
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %8, align 8
  br label %105

154:                                              ; preds = %125, %105
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %159 = load i32, i32* @CPP_DL_PEDWARN, align 4
  %160 = call i32 @cpp_error(%struct.TYPE_19__* %158, i32 %159, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %190

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %189, label %165

165:                                              ; preds = %161
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = load i32, i32* @traditional, align 4
  %168 = call i64 @CPP_OPTION(%struct.TYPE_19__* %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %189, label %176

176:                                              ; preds = %170, %165
  %177 = load i64, i64* %11, align 8
  %178 = call i32 @num_positive(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %0, i64 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %12, align 4
  %182 = icmp eq i32 %181, 10
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = load i32, i32* @CPP_DL_WARNING, align 4
  %186 = call i32 @cpp_error(%struct.TYPE_19__* %184, i32 %185, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %187

187:                                              ; preds = %183, %180
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 1
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %187, %176, %170, %161
  br label %190

190:                                              ; preds = %189, %157
  br label %191

191:                                              ; preds = %190, %46
  ret void
}

declare dso_local i64 @CPP_OPTION(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ISDIGIT(i32) #1

declare dso_local i64 @ISXDIGIT(i32) #1

declare dso_local i32 @hex_value(i32) #1

declare dso_local void @append_digit(%struct.TYPE_20__* sret, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, i32, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpp_error(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @num_positive(%struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
