; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_array(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %11 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %12 = icmp eq %struct.cpp_demangle_data* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %15 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %15, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %226

22:                                               ; preds = %13
  %23 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %24 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 95
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %31 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %226

38:                                               ; preds = %29
  %39 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %40 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %39, i32* null)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %226

43:                                               ; preds = %38
  %44 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %45 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %226

48:                                               ; preds = %43
  br label %225

49:                                               ; preds = %22
  %50 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %51 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @ELFTC_ISDIGIT(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %123

56:                                               ; preds = %49
  %57 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %58 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %67, %56
  %61 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %62 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @ELFTC_ISDIGIT(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %69 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  br label %60

72:                                               ; preds = %60
  %73 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %74 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 95
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %226

80:                                               ; preds = %72
  %81 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %82 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp ugt i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %93 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %93, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %226

100:                                              ; preds = %80
  %101 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %102 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %101, i32* null)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %226

105:                                              ; preds = %100
  %106 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %107 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %226

110:                                              ; preds = %105
  %111 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %111, i8* %112, i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %226

117:                                              ; preds = %110
  %118 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %119 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  store i32 0, i32* %2, align 4
  br label %226

122:                                              ; preds = %117
  br label %224

123:                                              ; preds = %49
  %124 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %125 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %7, align 8
  %128 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %129 = call i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  store i32 0, i32* %2, align 4
  br label %226

132:                                              ; preds = %123
  %133 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %134 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %133, i32 0, i32 1
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %137 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = sub i64 %139, 1
  %141 = trunc i64 %140 to i32
  %142 = call i8* @vector_str_substr(%struct.TYPE_3__* %134, i64 %135, i32 %141, i64* %6)
  store i8* %142, i8** %10, align 8
  %143 = icmp eq i8* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %132
  store i32 0, i32* %2, align 4
  br label %226

145:                                              ; preds = %132
  %146 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %147 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %8, align 8
  %150 = load i64, i64* %7, align 8
  store i64 %150, i64* %4, align 8
  br label %151

151:                                              ; preds = %164, %145
  %152 = load i64, i64* %4, align 8
  %153 = load i64, i64* %8, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %157 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %156, i32 0, i32 1
  %158 = call i32 @vector_str_pop(%struct.TYPE_3__* %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = load i8*, i8** %10, align 8
  %162 = call i32 @free(i8* %161)
  store i32 0, i32* %2, align 4
  br label %226

163:                                              ; preds = %155
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %4, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %4, align 8
  br label %151

167:                                              ; preds = %151
  %168 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %169 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 95
  br i1 %173, label %174, label %177

174:                                              ; preds = %167
  %175 = load i8*, i8** %10, align 8
  %176 = call i32 @free(i8* %175)
  store i32 0, i32* %2, align 4
  br label %226

177:                                              ; preds = %167
  %178 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %179 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %179, align 8
  %182 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %183 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %177
  %189 = load i8*, i8** %10, align 8
  %190 = call i32 @free(i8* %189)
  store i32 0, i32* %2, align 4
  br label %226

191:                                              ; preds = %177
  %192 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %193 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %192, i32* null)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = load i8*, i8** %10, align 8
  %197 = call i32 @free(i8* %196)
  store i32 0, i32* %2, align 4
  br label %226

198:                                              ; preds = %191
  %199 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %200 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = load i8*, i8** %10, align 8
  %204 = call i32 @free(i8* %203)
  store i32 0, i32* %2, align 4
  br label %226

205:                                              ; preds = %198
  %206 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %207 = load i8*, i8** %10, align 8
  %208 = load i64, i64* %6, align 8
  %209 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %206, i8* %207, i64 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %205
  %212 = load i8*, i8** %10, align 8
  %213 = call i32 @free(i8* %212)
  store i32 0, i32* %2, align 4
  br label %226

214:                                              ; preds = %205
  %215 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %216 = call i32 @DEM_PUSH_STR(%struct.cpp_demangle_data* %215, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = load i8*, i8** %10, align 8
  %220 = call i32 @free(i8* %219)
  store i32 0, i32* %2, align 4
  br label %226

221:                                              ; preds = %214
  %222 = load i8*, i8** %10, align 8
  %223 = call i32 @free(i8* %222)
  br label %224

224:                                              ; preds = %221, %122
  br label %225

225:                                              ; preds = %224, %48
  store i32 1, i32* %2, align 4
  br label %226

226:                                              ; preds = %225, %218, %211, %202, %195, %188, %174, %160, %144, %131, %121, %116, %109, %104, %99, %79, %47, %42, %37, %21
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, i32*) #1

declare dso_local i32 @DEM_PUSH_STR(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i64) #1

declare dso_local i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.TYPE_3__*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_pop(%struct.TYPE_3__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
