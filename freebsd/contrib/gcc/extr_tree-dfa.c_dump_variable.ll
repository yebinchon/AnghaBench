; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_dump_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dfa.c_dump_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@SSA_NAME = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"<nil>\00", align 1
@dump_flags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c", UID %u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c", symbol memory tag: \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c", is aliased\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c", is addressable\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c", is global\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c", is volatile\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c", call clobbered\00", align 1
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@ESCAPE_STORED_IN_GLOBAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c", stored in global\00", align 1
@ESCAPE_TO_ASM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c", goes through ASM\00", align 1
@ESCAPE_TO_CALL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c", passed to call\00", align 1
@ESCAPE_BAD_CAST = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [11 x i8] c", bad cast\00", align 1
@ESCAPE_TO_RETURN = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [21 x i8] c", returned from func\00", align 1
@ESCAPE_TO_PURE_CONST = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c", passed to pure/const\00", align 1
@ESCAPE_IS_GLOBAL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c", is global var\00", align 1
@ESCAPE_IS_PARM = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [22 x i8] c", is incoming pointer\00", align 1
@ESCAPE_UNKNOWN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c", unknown escape\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c", default def: \00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c", may aliases: \00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c", sub-vars: \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_variable(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i64 @TREE_CODE(i64 %8)
  %10 = load i64, i64* @SSA_NAME, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @TREE_TYPE(i64 %13)
  %15 = call i64 @POINTER_TYPE_P(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @dump_points_to_info_for(i32* %18, i64 %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @SSA_NAME_VAR(i64 %22)
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @NULL_TREE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %227

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @dump_flags, align 4
  %35 = call i32 @print_generic_expr(i32* %32, i64 %33, i32 %34)
  %36 = load i64, i64* %4, align 8
  %37 = call %struct.TYPE_3__* @var_ann(i64 %36)
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %5, align 8
  %38 = load i32*, i32** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @DECL_UID(i64 %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i64 @TREE_TYPE(i64 %46)
  %48 = load i32, i32* @dump_flags, align 4
  %49 = call i32 @print_generic_expr(i32* %45, i64 %47, i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = icmp ne %struct.TYPE_3__* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %31
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @dump_flags, align 4
  %65 = call i32 @print_generic_expr(i32* %60, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %52, %31
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %69, %66
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @TREE_ADDRESSABLE(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i64, i64* %4, align 8
  %86 = call i64 @is_global_var(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i64, i64* %4, align 8
  %93 = call i64 @TREE_THIS_VOLATILE(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i64, i64* %4, align 8
  %100 = call i64 @is_call_clobbered(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %192

102:                                              ; preds = %98
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %105 = load i32, i32* @dump_flags, align 4
  %106 = load i32, i32* @TDF_DETAILS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %191

109:                                              ; preds = %102
  %110 = load i64, i64* %4, align 8
  %111 = call %struct.TYPE_3__* @var_ann(i64 %110)
  store %struct.TYPE_3__* %111, %struct.TYPE_3__** %6, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  store i32 %114, i32* %7, align 4
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @ESCAPE_STORED_IN_GLOBAL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %109
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %109
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @ESCAPE_TO_ASM, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32*, i32** %3, align 8
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* @ESCAPE_TO_CALL, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 (i32*, i8*, ...) @fprintf(i32* %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %132
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @ESCAPE_BAD_CAST, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 (i32*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @ESCAPE_TO_RETURN, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 (i32*, i8*, ...) @fprintf(i32* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %148
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @ESCAPE_TO_PURE_CONST, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32*, i32** %3, align 8
  %163 = call i32 (i32*, i8*, ...) @fprintf(i32* %162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  br label %164

164:                                              ; preds = %161, %156
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @ESCAPE_IS_GLOBAL, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load i32*, i32** %3, align 8
  %171 = call i32 (i32*, i8*, ...) @fprintf(i32* %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %164
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @ESCAPE_IS_PARM, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 (i32*, i8*, ...) @fprintf(i32* %178, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %172
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @ESCAPE_UNKNOWN, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %180
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 (i32*, i8*, ...) @fprintf(i32* %189, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %102
  br label %192

192:                                              ; preds = %191, %98
  %193 = load i64, i64* %4, align 8
  %194 = call i64 @default_def(i64 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load i32*, i32** %3, align 8
  %198 = call i32 (i32*, i8*, ...) @fprintf(i32* %197, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %199 = load i32*, i32** %3, align 8
  %200 = load i64, i64* %4, align 8
  %201 = call i64 @default_def(i64 %200)
  %202 = load i32, i32* @dump_flags, align 4
  %203 = call i32 @print_generic_expr(i32* %199, i64 %201, i32 %202)
  br label %204

204:                                              ; preds = %196, %192
  %205 = load i64, i64* %4, align 8
  %206 = call i64 @may_aliases(i64 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %211 = load i32*, i32** %3, align 8
  %212 = load i64, i64* %4, align 8
  %213 = call i32 @dump_may_aliases_for(i32* %211, i64 %212)
  br label %214

214:                                              ; preds = %208, %204
  %215 = load i64, i64* %4, align 8
  %216 = call i64 @get_subvars_for_var(i64 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %214
  %219 = load i32*, i32** %3, align 8
  %220 = call i32 (i32*, i8*, ...) @fprintf(i32* %219, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %221 = load i32*, i32** %3, align 8
  %222 = load i64, i64* %4, align 8
  %223 = call i32 @dump_subvars_for(i32* %221, i64 %222)
  br label %224

224:                                              ; preds = %218, %214
  %225 = load i32*, i32** %3, align 8
  %226 = call i32 (i32*, i8*, ...) @fprintf(i32* %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %227

227:                                              ; preds = %224, %28
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @dump_points_to_info_for(i32*, i64) #1

declare dso_local i64 @SSA_NAME_VAR(i64) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @print_generic_expr(i32*, i64, i32) #1

declare dso_local %struct.TYPE_3__* @var_ann(i64) #1

declare dso_local i64 @DECL_UID(i64) #1

declare dso_local i64 @TREE_ADDRESSABLE(i64) #1

declare dso_local i64 @is_global_var(i64) #1

declare dso_local i64 @TREE_THIS_VOLATILE(i64) #1

declare dso_local i64 @is_call_clobbered(i64) #1

declare dso_local i64 @default_def(i64) #1

declare dso_local i64 @may_aliases(i64) #1

declare dso_local i32 @dump_may_aliases_for(i32*, i64) #1

declare dso_local i64 @get_subvars_for_var(i64) #1

declare dso_local i32 @dump_subvars_for(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
