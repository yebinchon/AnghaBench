; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_cpp_demangle_ARM.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_cpp_demangle_ARM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i64, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i8*, i64 }

@ENCODE_OP_CT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@ENCODE_OP_DT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"::~\00", align 1
@ENCODE_OP_USER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@CPP_DEMANGLE_ARM_TRY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cpp_demangle_ARM(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.demangle_data, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %213

15:                                               ; preds = %1
  %16 = call i32 @init_demangle_data(%struct.demangle_data* %4)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* null, i8** %2, align 8
  br label %213

19:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  %22 = call i32 @read_func_name(%struct.demangle_data* %4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %210

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ENCODE_OP_CT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %32 = call i32 @push_CTDT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2, %struct.TYPE_7__* %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %210

35:                                               ; preds = %30
  br label %207

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ENCODE_OP_DT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %43 = call i32 @push_CTDT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3, %struct.TYPE_7__* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %210

46:                                               ; preds = %41
  br label %207

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ENCODE_OP_USER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %207

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 70
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %210

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %61, align 8
  %64 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %65 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %210

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %200, %102, %85, %68
  %70 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 84
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = call i32 @read_subst(%struct.demangle_data* %4)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %210

80:                                               ; preds = %75
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %201

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84
  br label %69

86:                                               ; preds = %69
  %87 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 78
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = call i32 @read_subst_iter(%struct.demangle_data* %4)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %210

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %201

101:                                              ; preds = %97
  br label %102

102:                                              ; preds = %101
  br label %69

103:                                              ; preds = %86
  %104 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %5, align 8
  %107 = call i32 @read_type(%struct.demangle_data* %4)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %210

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %116 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %210

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 2
  store i32 0, i32* %120, align 8
  br label %121

121:                                              ; preds = %119, %110
  %122 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %127 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %210

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 3
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %130, %121
  %133 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %138 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  br label %210

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 4
  store i32 0, i32* %142, align 8
  br label %143

143:                                              ; preds = %141, %132
  %144 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %149 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @vector_str_push(%struct.TYPE_7__* %148, i8* %151, i64 %154)
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %210

158:                                              ; preds = %147
  %159 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 8
  %160 = call i32 @dest_cstring(%struct.TYPE_8__* %159)
  %161 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 5
  store i32 0, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %143
  %163 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %201

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %171 = load i64, i64* %5, align 8
  %172 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub i64 %174, 1
  %176 = trunc i64 %175 to i32
  %177 = call i8* @vector_str_substr(%struct.TYPE_7__* %170, i64 %171, i32 %176, i64* %6)
  store i8* %177, i8** %9, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %169
  br label %210

180:                                              ; preds = %169
  %181 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 7
  %182 = load i8*, i8** %9, align 8
  %183 = load i64, i64* %6, align 8
  %184 = call i32 @vector_str_push(%struct.TYPE_7__* %181, i8* %182, i64 %183)
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %210

187:                                              ; preds = %180
  %188 = load i8*, i8** %9, align 8
  %189 = call i32 @free(i8* %188)
  %190 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %191 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %210

194:                                              ; preds = %187
  %195 = load i32, i32* %7, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* @CPP_DEMANGLE_ARM_TRY, align 4
  %198 = icmp ugt i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  br label %210

200:                                              ; preds = %194
  br label %69

201:                                              ; preds = %168, %100, %83
  %202 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %203 = call i32 @VEC_PUSH_STR(%struct.TYPE_7__* %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %210

206:                                              ; preds = %201
  br label %207

207:                                              ; preds = %206, %52, %46, %35
  %208 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %4, i32 0, i32 6
  %209 = call i8* @vector_str_get_flat(%struct.TYPE_7__* %208, i32* null)
  store i8* %209, i8** %8, align 8
  br label %210

210:                                              ; preds = %207, %205, %199, %193, %186, %179, %157, %140, %129, %118, %109, %96, %79, %67, %59, %45, %34, %24
  %211 = call i32 @dest_demangle_data(%struct.demangle_data* %4)
  %212 = load i8*, i8** %8, align 8
  store i8* %212, i8** %2, align 8
  br label %213

213:                                              ; preds = %210, %18, %14
  %214 = load i8*, i8** %2, align 8
  ret i8* %214
}

declare dso_local i32 @init_demangle_data(%struct.demangle_data*) #1

declare dso_local i32 @read_func_name(%struct.demangle_data*) #1

declare dso_local i32 @push_CTDT(i8*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @VEC_PUSH_STR(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @read_subst(%struct.demangle_data*) #1

declare dso_local i32 @read_subst_iter(%struct.demangle_data*) #1

declare dso_local i32 @read_type(%struct.demangle_data*) #1

declare dso_local i32 @vector_str_push(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local i32 @dest_cstring(%struct.TYPE_8__*) #1

declare dso_local i8* @vector_str_substr(%struct.TYPE_7__*, i64, i32, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @vector_str_get_flat(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @dest_demangle_data(%struct.demangle_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
