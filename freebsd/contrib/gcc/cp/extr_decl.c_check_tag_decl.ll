; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_tag_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_check_tag_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i64, i64, i64, i64 }

@ds_friend = common dso_local global i64 0, align 8
@ds_typedef = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"multiple types in one declaration\00", align 1
@in_system_header = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"redeclaration of C++ built-in type %qT\00", align 1
@TYPENAME_TYPE = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"declaration does not declare anything\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"missing type-name in typedef-declaration\00", align 1
@UNION_TYPE = common dso_local global i64 0, align 8
@pedantic = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"ISO C++ prohibits anonymous structs\00", align 1
@ds_inline = common dso_local global i64 0, align 8
@ds_virtual = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"%qs can only be specified for functions\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@current_class_type = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"%<friend%> can only be specified inside a class\00", align 1
@ds_explicit = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [52 x i8] c"%<explicit%> can only be specified for constructors\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"a storage class can only be specified for objects and functions\00", align 1
@ds_const = common dso_local global i64 0, align 8
@ds_volatile = common dso_local global i64 0, align 8
@ds_restrict = common dso_local global i64 0, align 8
@ds_thread = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [59 x i8] c"qualifiers can only be specified for objects and functions\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @check_tag_decl(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load i64, i64* @ds_friend, align 8
  %12 = trunc i64 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @ds_typedef, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i64, i64* @NULL_TREE, align 8
  store i64 %28, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %51

35:                                               ; preds = %1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* @in_system_header, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i64, i64* @NULL_TREE, align 8
  store i64 %49, i64* %2, align 8
  br label %254

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %33
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %51
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @TYPE_P(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @TREE_CODE(i64 %65)
  %67 = load i64, i64* @TYPENAME_TYPE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @IS_AGGR_TYPE(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %69, %62
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @TREE_CODE(i64 %78)
  %80 = load i64, i64* @ENUMERAL_TYPE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %75, %69
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %6, align 8
  br label %94

86:                                               ; preds = %75, %56, %51
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @error_mark_node, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 1, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %86
  br label %94

94:                                               ; preds = %93, %82
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @NULL_TREE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %252

106:                                              ; preds = %101, %98, %94
  %107 = load i64, i64* %6, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %106
  %110 = load i64, i64* %6, align 8
  %111 = call i64 @TREE_CODE(i64 %110)
  %112 = call i64 @IS_AGGR_TYPE_CODE(i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %109
  %115 = load i64, i64* %6, align 8
  %116 = call i64 @TYPE_ANONYMOUS_P(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i64, i64* @NULL_TREE, align 8
  store i64 %123, i64* %2, align 8
  br label %254

124:                                              ; preds = %118
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @SET_ANON_AGGR_TYPE_P(i64 %125)
  %127 = load i64, i64* %6, align 8
  %128 = call i64 @TREE_CODE(i64 %127)
  %129 = load i64, i64* @UNION_TYPE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load i64, i64* @pedantic, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, i32* @in_system_header, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = call i32 (i8*, ...) @pedwarn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %134, %131, %124
  br label %251

140:                                              ; preds = %114, %109, %106
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* @ds_inline, align 8
  %145 = trunc i64 %144 to i32
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %140
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @ds_virtual, align 8
  %155 = trunc i64 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %153, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %150, %140
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i64, i64* @ds_inline, align 8
  %165 = trunc i64 %164 to i32
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %163, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %172 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %171)
  br label %250

173:                                              ; preds = %150
  %174 = load i32, i32* %4, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %173
  %177 = load i64, i64* @current_class_type, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = call i64 (...) @current_scope()
  %181 = load i64, i64* @current_class_type, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %179, %176
  %184 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  br label %249

185:                                              ; preds = %179, %173
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* @ds_explicit, align 8
  %190 = trunc i64 %189 to i32
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %188, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %185
  %196 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  br label %248

197:                                              ; preds = %185
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i64 0, i64 0))
  br label %247

204:                                              ; preds = %197
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* @ds_const, align 8
  %209 = trunc i64 %208 to i32
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %207, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %244, label %214

214:                                              ; preds = %204
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = load i64, i64* @ds_volatile, align 8
  %219 = trunc i64 %218 to i32
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %217, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %244, label %224

224:                                              ; preds = %214
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i64*, i64** %226, align 8
  %228 = load i64, i64* @ds_restrict, align 8
  %229 = trunc i64 %228 to i32
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %227, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %224
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i64*, i64** %236, align 8
  %238 = load i64, i64* @ds_thread, align 8
  %239 = trunc i64 %238 to i32
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %237, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %234, %224, %214, %204
  %245 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %234
  br label %247

247:                                              ; preds = %246, %202
  br label %248

248:                                              ; preds = %247, %195
  br label %249

249:                                              ; preds = %248, %183
  br label %250

250:                                              ; preds = %249, %160
  br label %251

251:                                              ; preds = %250, %139
  br label %252

252:                                              ; preds = %251, %104
  %253 = load i64, i64* %6, align 8
  store i64 %253, i64* %2, align 8
  br label %254

254:                                              ; preds = %252, %121, %48
  %255 = load i64, i64* %2, align 8
  ret i64 %255
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @pedwarn(i8*, ...) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @IS_AGGR_TYPE(i64) #1

declare dso_local i64 @IS_AGGR_TYPE_CODE(i64) #1

declare dso_local i64 @TYPE_ANONYMOUS_P(i64) #1

declare dso_local i32 @SET_ANON_AGGR_TYPE_P(i64) #1

declare dso_local i64 @current_scope(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
