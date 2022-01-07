; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_xstr2desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_subr.c_dtrace_xstr2desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8**, i32* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@DTRACE_PROBESPEC_NONE = common dso_local global i64 0, align 8
@DTRACE_PROBESPEC_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EDT_BADSPCV = common dso_local global i32 0, align 4
@yypcb = common dso_local global %struct.TYPE_14__* null, align 8
@DT_IDFLG_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EDT_BADSPEC = common dso_local global i32 0, align 4
@dtrace_probespecs = common dso_local global %struct.TYPE_15__* null, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@DTRACE_IDNONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_xstr2desc(%struct.TYPE_12__* %0, i64 %1, i8* %2, i32 %3, i8** %4, %struct.TYPE_11__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca [32 x i8], align 16
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %13, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @DTRACE_PROBESPEC_NONE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %6
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @DTRACE_PROBESPEC_NAME, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %6
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @dt_set_errno(%struct.TYPE_12__* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  br label %262

37:                                               ; preds = %29
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %39 = call i32 @bzero(%struct.TYPE_11__* %38, i32 4)
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  store i8* %44, i8** %18, align 8
  br label %45

45:                                               ; preds = %253, %37
  store i64 0, i64* %15, align 8
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i8*, i8** %18, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = icmp uge i8* %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %18, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 58
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i1 [ false, %46 ], [ %54, %50 ]
  br i1 %56, label %57, label %63

57:                                               ; preds = %55
  %58 = load i8*, i8** %18, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 -1
  store i8* %59, i8** %18, align 8
  br label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %15, align 8
  br label %46

63:                                               ; preds = %55
  %64 = load i8*, i8** %18, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %19, align 8
  store i64 0, i64* %16, align 8
  store i8* null, i8** %21, align 8
  store i64 0, i64* %17, align 8
  %66 = load i8*, i8** %19, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 36)
  store i8* %67, i8** %20, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %197

69:                                               ; preds = %63
  %70 = load i8*, i8** %20, align 8
  %71 = load i8*, i8** %19, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = icmp ult i8* %70, %73
  br i1 %74, label %75, label %197

75:                                               ; preds = %69
  %76 = load i8*, i8** %19, align 8
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8*, i8** %20, align 8
  %80 = ptrtoint i8* %78 to i64
  %81 = ptrtoint i8* %79 to i64
  %82 = sub i64 %80, %81
  store i64 %82, i64* %16, align 8
  %83 = load i8*, i8** %20, align 8
  %84 = load i8*, i8** %19, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  store i64 %87, i64* %15, align 8
  %88 = load i64, i64* %16, align 8
  %89 = icmp ugt i64 %88, 2
  br i1 %89, label %90, label %101

90:                                               ; preds = %75
  %91 = load i8*, i8** %20, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 36
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  %97 = load i64, i64* %16, align 8
  %98 = add i64 %97, -1
  store i64 %98, i64* %16, align 8
  %99 = load i8*, i8** %20, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %20, align 8
  br label %101

101:                                              ; preds = %96, %90, %75
  %102 = load i8*, i8** %20, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = call i64 @isdigit(i8 signext %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %157

107:                                              ; preds = %101
  store i64 0, i64* @errno, align 8
  %108 = load i8*, i8** %20, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = call i64 @strtol(i8* %109, i8** %21, i32 10)
  store i64 %110, i64* %23, align 8
  %111 = load i64, i64* %16, align 8
  %112 = load i8*, i8** %21, align 8
  %113 = load i8*, i8** %20, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sub i64 %111, %116
  store i64 %117, i64* %17, align 8
  %118 = load i64, i64* %23, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %107
  %121 = load i64, i64* %23, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp sge i64 %121, %123
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i64, i64* @errno, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125, %120, %107
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %130 = load i32, i32* @EDT_BADSPCV, align 4
  %131 = call i32 @dt_set_errno(%struct.TYPE_12__* %129, i32 %130)
  store i32 %131, i32* %7, align 4
  br label %262

132:                                              ; preds = %125
  %133 = load i8**, i8*** %12, align 8
  %134 = load i64, i64* %23, align 8
  %135 = getelementptr inbounds i8*, i8** %133, i64 %134
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %20, align 8
  %137 = load i8*, i8** %20, align 8
  %138 = call i64 @strlen(i8* %137)
  store i64 %138, i64* %16, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %140 = icmp ne %struct.TYPE_14__* %139, null
  br i1 %140, label %141, label %156

141:                                              ; preds = %132
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i8**, i8*** %143, align 8
  %145 = load i8**, i8*** %12, align 8
  %146 = icmp eq i8** %144, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %141
  %148 = load i32, i32* @DT_IDFLG_REF, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** @yypcb, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load i64, i64* %23, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %148
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %147, %141, %132
  br label %196

157:                                              ; preds = %101
  %158 = load i64, i64* %16, align 8
  %159 = icmp ugt i64 %158, 1
  br i1 %159, label %160, label %191

160:                                              ; preds = %157
  %161 = load i64, i64* %16, align 8
  %162 = call i8* @alloca(i64 %161)
  store i8* %162, i8** %24, align 8
  %163 = load i8*, i8** %24, align 8
  %164 = load i8*, i8** %20, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i64, i64* %16, align 8
  %167 = sub i64 %166, 1
  %168 = call i32 @strncpy(i8* %163, i8* %165, i64 %167)
  %169 = load i8*, i8** %24, align 8
  %170 = load i64, i64* %16, align 8
  %171 = sub i64 %170, 1
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  store i8 0, i8* %172, align 1
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i8*, i8** %24, align 8
  %177 = call %struct.TYPE_13__* @dt_idhash_lookup(i32 %175, i8* %176)
  store %struct.TYPE_13__* %177, %struct.TYPE_13__** %25, align 8
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %179 = icmp eq %struct.TYPE_13__* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %160
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %182 = load i32, i32* @EDT_BADSPCV, align 4
  %183 = call i32 @dt_set_errno(%struct.TYPE_12__* %181, i32 %182)
  store i32 %183, i32* %7, align 4
  br label %262

184:                                              ; preds = %160
  %185 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  store i8* %185, i8** %20, align 8
  %186 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @snprintf(i8* %186, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %189)
  store i64 %190, i64* %16, align 8
  br label %195

191:                                              ; preds = %157
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %193 = load i32, i32* @EDT_BADSPCV, align 4
  %194 = call i32 @dt_set_errno(%struct.TYPE_12__* %192, i32 %193)
  store i32 %194, i32* %7, align 4
  br label %262

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %195, %156
  br label %197

197:                                              ; preds = %196, %69, %63
  %198 = load i64, i64* %9, align 8
  %199 = load i64, i64* @DTRACE_PROBESPEC_NONE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %197
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %203 = load i32, i32* @EDT_BADSPEC, align 4
  %204 = call i32 @dt_set_errno(%struct.TYPE_12__* %202, i32 %203)
  store i32 %204, i32* %7, align 4
  br label %262

205:                                              ; preds = %197
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* %16, align 8
  %208 = add i64 %206, %207
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dtrace_probespecs, align 8
  %210 = load i64, i64* %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp uge i64 %208, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %205
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %217 = load i32, i32* @ENAMETOOLONG, align 4
  %218 = call i32 @dt_set_errno(%struct.TYPE_12__* %216, i32 %217)
  store i32 %218, i32* %7, align 4
  br label %262

219:                                              ; preds = %205
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** @dtrace_probespecs, align 8
  %221 = load i64, i64* %9, align 8
  %222 = add i64 %221, -1
  store i64 %222, i64* %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i64 %221
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %14, align 8
  %226 = load i8*, i8** %19, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %228 = bitcast %struct.TYPE_11__* %227 to i8*
  %229 = load i64, i64* %14, align 8
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  %231 = load i64, i64* %15, align 8
  %232 = call i32 @bcopy(i8* %226, i8* %230, i64 %231)
  %233 = load i8*, i8** %20, align 8
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %235 = bitcast %struct.TYPE_11__* %234 to i8*
  %236 = load i64, i64* %14, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  %238 = load i64, i64* %15, align 8
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  %240 = load i64, i64* %16, align 8
  %241 = call i32 @bcopy(i8* %233, i8* %239, i64 %240)
  %242 = load i8*, i8** %21, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %244 = bitcast %struct.TYPE_11__* %243 to i8*
  %245 = load i64, i64* %14, align 8
  %246 = getelementptr inbounds i8, i8* %244, i64 %245
  %247 = load i64, i64* %15, align 8
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  %249 = load i64, i64* %16, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  %251 = load i64, i64* %17, align 8
  %252 = call i32 @bcopy(i8* %242, i8* %250, i64 %251)
  br label %253

253:                                              ; preds = %219
  %254 = load i8*, i8** %18, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 -1
  store i8* %255, i8** %18, align 8
  %256 = load i8*, i8** %10, align 8
  %257 = icmp uge i8* %255, %256
  br i1 %257, label %45, label %258

258:                                              ; preds = %253
  %259 = load i32, i32* @DTRACE_IDNONE, align 4
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 4
  store i32 0, i32* %7, align 4
  br label %262

262:                                              ; preds = %258, %215, %201, %191, %180, %128, %33
  %263 = load i32, i32* %7, align 4
  ret i32 %263
}

declare dso_local i32 @dt_set_errno(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local %struct.TYPE_13__* @dt_idhash_lookup(i32, i8*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
