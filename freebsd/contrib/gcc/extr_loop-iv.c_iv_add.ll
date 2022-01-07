; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_iv_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_iv = type { i64, i64, i64, i8*, i8*, i8* }

@UNKNOWN = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i8* null, align 8
@ZERO_EXTEND = common dso_local global i32 0, align 4
@MINUS = common dso_local global i32 0, align 4
@PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtx_iv*, %struct.rtx_iv*, i32)* @iv_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_add(%struct.rtx_iv* %0, %struct.rtx_iv* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtx_iv*, align 8
  %6 = alloca %struct.rtx_iv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.rtx_iv* %0, %struct.rtx_iv** %5, align 8
  store %struct.rtx_iv* %1, %struct.rtx_iv** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %11 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %3
  %16 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %17 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %20 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %15
  %24 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %25 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %24, i32 0, i32 5
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** @const0_rtx, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %23
  %30 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %31 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @GET_MODE_SIZE(i64 %32)
  %34 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %35 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @GET_MODE_SIZE(i64 %36)
  %38 = icmp slt i64 %33, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %29
  %40 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %41 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %44 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* @ZERO_EXTEND, align 4
  %46 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %47 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %50 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %53 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i8* @simplify_gen_unary(i32 %45, i64 %48, i8* %51, i64 %54)
  %56 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %57 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  br label %58

58:                                               ; preds = %39, %29, %23, %15, %3
  %59 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %60 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @UNKNOWN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %107

64:                                               ; preds = %58
  %65 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %66 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %69 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %64
  %73 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %74 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %73, i32 0, i32 5
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** @const0_rtx, align 8
  %77 = icmp eq i8* %75, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %72
  %79 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %80 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @GET_MODE_SIZE(i64 %81)
  %83 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %84 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @GET_MODE_SIZE(i64 %85)
  %87 = icmp slt i64 %82, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %78
  %89 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %90 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %93 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @ZERO_EXTEND, align 4
  %95 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %96 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %99 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %98, i32 0, i32 4
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %102 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i8* @simplify_gen_unary(i32 %94, i64 %97, i8* %100, i64 %103)
  %105 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %106 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %88, %78, %72, %64, %58
  %108 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %109 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %115 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %240

119:                                              ; preds = %107
  %120 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %121 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @UNKNOWN, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %163

125:                                              ; preds = %119
  %126 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %127 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @UNKNOWN, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %163

131:                                              ; preds = %125
  %132 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %133 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %136 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  store i32 0, i32* %4, align 4
  br label %240

140:                                              ; preds = %131
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %144 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %147 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @simplify_gen_binary(i32 %141, i32 %142, i8* %145, i8* %148)
  %150 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %151 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %150, i32 0, i32 4
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %155 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %154, i32 0, i32 5
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %158 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %157, i32 0, i32 5
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @simplify_gen_binary(i32 %152, i32 %153, i8* %156, i8* %159)
  %161 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %162 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %161, i32 0, i32 5
  store i8* %160, i8** %162, align 8
  store i32 1, i32* %4, align 4
  br label %240

163:                                              ; preds = %125, %119
  %164 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %165 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @UNKNOWN, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %194

169:                                              ; preds = %163
  %170 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %171 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = zext i32 %173 to i64
  %175 = icmp eq i64 %172, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %169
  %177 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %178 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %177, i32 0, i32 5
  %179 = load i8*, i8** %178, align 8
  %180 = load i8*, i8** @const0_rtx, align 8
  %181 = icmp eq i8* %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %186 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %185, i32 0, i32 3
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %189 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %188, i32 0, i32 4
  %190 = load i8*, i8** %189, align 8
  %191 = call i8* @simplify_gen_binary(i32 %183, i32 %184, i8* %187, i8* %190)
  %192 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %193 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %192, i32 0, i32 3
  store i8* %191, i8** %193, align 8
  store i32 1, i32* %4, align 4
  br label %240

194:                                              ; preds = %176, %169, %163
  %195 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %196 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @UNKNOWN, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %239

200:                                              ; preds = %194
  %201 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %202 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = zext i32 %204 to i64
  %206 = icmp eq i64 %203, %205
  br i1 %206, label %207, label %239

207:                                              ; preds = %200
  %208 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %209 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %208, i32 0, i32 5
  %210 = load i8*, i8** %209, align 8
  %211 = load i8*, i8** @const0_rtx, align 8
  %212 = icmp eq i8* %210, %211
  br i1 %212, label %213, label %239

213:                                              ; preds = %207
  %214 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %215 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %214, i32 0, i32 4
  %216 = load i8*, i8** %215, align 8
  store i8* %216, i8** %9, align 8
  %217 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %218 = load %struct.rtx_iv*, %struct.rtx_iv** %6, align 8
  %219 = bitcast %struct.rtx_iv* %217 to i8*
  %220 = bitcast %struct.rtx_iv* %218 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %219, i8* align 8 %220, i64 48, i1 false)
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @MINUS, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %229

224:                                              ; preds = %213
  %225 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %226 = call i32 @iv_neg(%struct.rtx_iv* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %224
  store i32 0, i32* %4, align 4
  br label %240

229:                                              ; preds = %224, %213
  %230 = load i32, i32* @PLUS, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %233 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %232, i32 0, i32 3
  %234 = load i8*, i8** %233, align 8
  %235 = load i8*, i8** %9, align 8
  %236 = call i8* @simplify_gen_binary(i32 %230, i32 %231, i8* %234, i8* %235)
  %237 = load %struct.rtx_iv*, %struct.rtx_iv** %5, align 8
  %238 = getelementptr inbounds %struct.rtx_iv, %struct.rtx_iv* %237, i32 0, i32 3
  store i8* %236, i8** %238, align 8
  store i32 1, i32* %4, align 4
  br label %240

239:                                              ; preds = %207, %200, %194
  store i32 0, i32* %4, align 4
  br label %240

240:                                              ; preds = %239, %229, %228, %182, %140, %139, %118
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i64 @GET_MODE_SIZE(i64) #1

declare dso_local i8* @simplify_gen_unary(i32, i64, i8*, i64) #1

declare dso_local i8* @simplify_gen_binary(i32, i32, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @iv_neg(%struct.rtx_iv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
