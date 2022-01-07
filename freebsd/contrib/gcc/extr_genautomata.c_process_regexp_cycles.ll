; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_regexp_cycles.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_process_regexp_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_19__ = type { i32, %struct.TYPE_22__** }
%struct.TYPE_18__ = type { i32, %struct.TYPE_22__** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32, i32, i32*, i32*)* @process_regexp_cycles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_regexp_cycles(%struct.TYPE_22__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %234 [
    i32 128, label %19
    i32 130, label %64
    i32 131, label %75
    i32 129, label %102
    i32 134, label %133
    i32 132, label %181
    i32 133, label %229
  ]

19:                                               ; preds = %5
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %21 = call %struct.TYPE_23__* @REGEXP_UNIT(%struct.TYPE_22__* %20)
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = call %struct.TYPE_23__* @REGEXP_UNIT(%struct.TYPE_22__* %30)
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 4
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %37 = call %struct.TYPE_23__* @REGEXP_UNIT(%struct.TYPE_22__* %36)
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = call %struct.TYPE_23__* @REGEXP_UNIT(%struct.TYPE_22__* %45)
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %59

52:                                               ; preds = %44, %35
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = call %struct.TYPE_23__* @REGEXP_UNIT(%struct.TYPE_22__* %54)
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  store i32 %53, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %44
  %60 = load i32, i32* %7, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %10, align 8
  store i32 %62, i32* %63, align 4
  br label %236

64:                                               ; preds = %5
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %66 = call %struct.TYPE_25__* @REGEXP_RESERV(%struct.TYPE_22__* %65)
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32*, i32** %10, align 8
  call void @process_regexp_cycles(%struct.TYPE_22__* %70, i32 %71, i32 %72, i32* %73, i32* %74)
  br label %236

75:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %98, %75
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %79 = call %struct.TYPE_17__* @REGEXP_REPEAT(%struct.TYPE_22__* %78)
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %77, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %76
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = call %struct.TYPE_17__* @REGEXP_REPEAT(%struct.TYPE_22__* %84)
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %10, align 8
  call void @process_regexp_cycles(%struct.TYPE_22__* %87, i32 %88, i32 %89, i32* %90, i32* %91)
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %76

101:                                              ; preds = %76
  br label %236

102:                                              ; preds = %5
  store i32 0, i32* %11, align 4
  br label %103

103:                                              ; preds = %129, %102
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %106 = call %struct.TYPE_24__* @REGEXP_SEQUENCE(%struct.TYPE_22__* %105)
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %132

110:                                              ; preds = %103
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %112 = call %struct.TYPE_24__* @REGEXP_SEQUENCE(%struct.TYPE_22__* %111)
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %114, i64 %116
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %10, align 8
  call void @process_regexp_cycles(%struct.TYPE_22__* %118, i32 %119, i32 %120, i32* %121, i32* %122)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %110
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %103

132:                                              ; preds = %103
  br label %236

133:                                              ; preds = %5
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %134

134:                                              ; preds = %173, %133
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %137 = call %struct.TYPE_19__* @REGEXP_ALLOF(%struct.TYPE_22__* %136)
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %176

141:                                              ; preds = %134
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %143 = call %struct.TYPE_19__* @REGEXP_ALLOF(%struct.TYPE_22__* %142)
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %145, i64 %147
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = load i32*, i32** %10, align 8
  call void @process_regexp_cycles(%struct.TYPE_22__* %149, i32 %150, i32 %151, i32* %152, i32* %153)
  %154 = load i32, i32* %12, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %141
  %159 = load i32*, i32** %9, align 8
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %158, %141
  %162 = load i32, i32* %11, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %13, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = icmp sgt i32 %165, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %164, %161
  %170 = load i32*, i32** %10, align 8
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %169, %164
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %134

176:                                              ; preds = %134
  %177 = load i32, i32* %12, align 4
  %178 = load i32*, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32*, i32** %10, align 8
  store i32 %179, i32* %180, align 4
  br label %236

181:                                              ; preds = %5
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %221, %181
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %185 = call %struct.TYPE_18__* @REGEXP_ONEOF(%struct.TYPE_22__* %184)
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %183, %187
  br i1 %188, label %189, label %224

189:                                              ; preds = %182
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %191 = call %struct.TYPE_18__* @REGEXP_ONEOF(%struct.TYPE_22__* %190)
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %193, i64 %195
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = load i32*, i32** %10, align 8
  call void @process_regexp_cycles(%struct.TYPE_22__* %197, i32 %198, i32 %199, i32* %200, i32* %201)
  %202 = load i32, i32* %14, align 4
  %203 = load i32*, i32** %9, align 8
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %202, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %189
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %206, %189
  %210 = load i32, i32* %11, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %209
  %213 = load i32, i32* %15, align 4
  %214 = load i32*, i32** %10, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %213, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %212, %209
  %218 = load i32*, i32** %10, align 8
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %15, align 4
  br label %220

220:                                              ; preds = %217, %212
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %11, align 4
  br label %182

224:                                              ; preds = %182
  %225 = load i32, i32* %14, align 4
  %226 = load i32*, i32** %9, align 8
  store i32 %225, i32* %226, align 4
  %227 = load i32, i32* %15, align 4
  %228 = load i32*, i32** %10, align 8
  store i32 %227, i32* %228, align 4
  br label %236

229:                                              ; preds = %5
  %230 = load i32, i32* %7, align 4
  %231 = load i32*, i32** %9, align 8
  store i32 %230, i32* %231, align 4
  %232 = load i32, i32* %8, align 4
  %233 = load i32*, i32** %10, align 8
  store i32 %232, i32* %233, align 4
  br label %236

234:                                              ; preds = %5
  %235 = call i32 (...) @gcc_unreachable()
  br label %236

236:                                              ; preds = %234, %229, %224, %176, %132, %101, %64, %59
  ret void
}

declare dso_local %struct.TYPE_23__* @REGEXP_UNIT(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_25__* @REGEXP_RESERV(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_17__* @REGEXP_REPEAT(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_24__* @REGEXP_SEQUENCE(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_19__* @REGEXP_ALLOF(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_18__* @REGEXP_ONEOF(%struct.TYPE_22__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
