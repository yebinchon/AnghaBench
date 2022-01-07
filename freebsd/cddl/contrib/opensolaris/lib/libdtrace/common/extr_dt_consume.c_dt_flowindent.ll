; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_flowindent.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_flowindent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i8*, i64, i64, %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_14__ = type { i8*, i8*, i64 }
%struct.TYPE_18__ = type { i64, i64 }

@DTRACEFLOW_NONE = common dso_local global i64 0, align 8
@dt_flowindent.e_str = internal global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@dt_flowindent.r_str = internal global [2 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c" <- \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" <= \00", align 1
@dt_flowindent.ent = internal global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@dt_flowindent.ret = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@dt_flowindent.entlen = internal global i32 0, align 4
@dt_flowindent.retlen = internal global i32 0, align 4
@DTRACEFLOW_ENTRY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"syscall\00", align 1
@DTRACEFLOW_RETURN = common dso_local global i64 0, align 8
@DTRACE_EPIDNONE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i64, %struct.TYPE_18__*, i64)* @dt_flowindent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_flowindent(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i64 %2, %struct.TYPE_18__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %10, align 8
  store i64 %4, i64* %11, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %12, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %14, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %16, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %17, align 8
  %36 = load i64, i64* @DTRACEFLOW_NONE, align 8
  store i64 %36, i64* %19, align 8
  store i8* null, i8** %20, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %22, align 8
  %40 = load i32, i32* @dt_flowindent.entlen, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %5
  %43 = load i32, i32* @dt_flowindent.retlen, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i8*, i8** @dt_flowindent.ent, align 8
  %48 = call i32 @strlen(i8* %47)
  store i32 %48, i32* @dt_flowindent.entlen, align 4
  %49 = load i8*, i8** @dt_flowindent.ret, align 8
  %50 = call i32 @strlen(i8* %49)
  store i32 %50, i32* @dt_flowindent.retlen, align 4
  br label %51

51:                                               ; preds = %42, %5
  %52 = load i8*, i8** %17, align 8
  %53 = load i8*, i8** @dt_flowindent.ent, align 8
  %54 = call i8* @strstr(i8* %52, i8* %53)
  store i8* %54, i8** %18, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = load i8*, i8** %18, align 8
  %58 = load i32, i32* @dt_flowindent.entlen, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %56
  %65 = load i8*, i8** %18, align 8
  %66 = load i8*, i8** %17, align 8
  %67 = icmp eq i8* %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %18, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 45
  br i1 %73, label %74, label %83

74:                                               ; preds = %68, %64
  %75 = load i64, i64* @DTRACEFLOW_ENTRY, align 8
  store i64 %75, i64* %19, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i8*], [2 x i8*]* @dt_flowindent.e_str, i64 0, i64 %80
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %20, align 8
  br label %116

83:                                               ; preds = %68, %56, %51
  %84 = load i8*, i8** %17, align 8
  %85 = load i8*, i8** @dt_flowindent.ret, align 8
  %86 = call i8* @strstr(i8* %84, i8* %85)
  store i8* %86, i8** %18, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %115

88:                                               ; preds = %83
  %89 = load i8*, i8** %18, align 8
  %90 = load i32, i32* @dt_flowindent.retlen, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %88
  %97 = load i8*, i8** %18, align 8
  %98 = load i8*, i8** %17, align 8
  %99 = icmp eq i8* %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load i8*, i8** %18, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 -1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 45
  br i1 %105, label %106, label %115

106:                                              ; preds = %100, %96
  %107 = load i64, i64* @DTRACEFLOW_RETURN, align 8
  store i64 %107, i64* %19, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [2 x i8*], [2 x i8*]* @dt_flowindent.r_str, i64 0, i64 %112
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %20, align 8
  br label %115

115:                                              ; preds = %106, %100, %88, %83
  br label %116

116:                                              ; preds = %115, %74
  %117 = load i64, i64* %19, align 8
  %118 = load i64, i64* @DTRACEFLOW_ENTRY, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = load i64, i64* %9, align 8
  %122 = load i64, i64* @DTRACE_EPIDNONE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %120
  %125 = load i64, i64* %22, align 8
  %126 = load i64, i64* %9, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %143

128:                                              ; preds = %124
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %134, i64 %135
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %131, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i64, i64* @DTRACEFLOW_NONE, align 8
  store i64 %142, i64* %19, align 8
  br label %143

143:                                              ; preds = %141, %128, %124, %120
  br label %144

144:                                              ; preds = %143, %116
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* @DTRACEFLOW_RETURN, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %202

148:                                              ; preds = %144
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %11, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %11, align 8
  br label %154

154:                                              ; preds = %176, %148
  %155 = load i64, i64* %11, align 8
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp uge i64 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %203

161:                                              ; preds = %154
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %11, align 8
  %166 = add i64 %164, %165
  %167 = inttoptr i64 %166 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %21, align 8
  %169 = load i64, i64* %21, align 8
  %170 = load i64, i64* @DTRACE_EPIDNONE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %161
  %173 = load i64, i64* %11, align 8
  %174 = add i64 %173, 8
  store i64 %174, i64* %11, align 8
  br label %175

175:                                              ; preds = %172, %161
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %21, align 8
  %178 = load i64, i64* @DTRACE_EPIDNONE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %154, label %180

180:                                              ; preds = %176
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %182 = load i64, i64* %21, align 8
  %183 = call i32 @dt_epid_lookup(%struct.TYPE_16__* %181, i64 %182, %struct.TYPE_17__** %15, %struct.TYPE_14__** %13)
  store i32 %183, i32* %23, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* %23, align 4
  store i32 %186, i32* %6, align 4
  br label %236

187:                                              ; preds = %180
  %188 = load i64, i64* %21, align 8
  %189 = load i64, i64* %22, align 8
  %190 = icmp ne i64 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %194, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = load i64, i64* @DTRACEFLOW_NONE, align 8
  store i64 %200, i64* %19, align 8
  br label %201

201:                                              ; preds = %199, %191, %187
  br label %202

202:                                              ; preds = %201, %144
  br label %203

203:                                              ; preds = %202, %160
  %204 = load i64, i64* %19, align 8
  %205 = load i64, i64* @DTRACEFLOW_ENTRY, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %211, label %207

207:                                              ; preds = %203
  %208 = load i64, i64* %19, align 8
  %209 = load i64, i64* @DTRACEFLOW_RETURN, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207, %203
  %212 = load i8*, i8** %20, align 8
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  store i8* %212, i8** %214, align 8
  br label %218

215:                                              ; preds = %207
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %217, align 8
  br label %218

218:                                              ; preds = %215, %211
  %219 = load i64, i64* %19, align 8
  %220 = load i64, i64* @DTRACEFLOW_RETURN, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %218
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp sgt i64 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %222
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = sub nsw i64 %230, 2
  store i64 %231, i64* %229, align 8
  br label %232

232:                                              ; preds = %227, %222, %218
  %233 = load i64, i64* %19, align 8
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 2
  store i64 %233, i64* %235, align 8
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %232, %185
  %237 = load i32, i32* %6, align 4
  ret i32 %237
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dt_epid_lookup(%struct.TYPE_16__*, i64, %struct.TYPE_17__**, %struct.TYPE_14__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
