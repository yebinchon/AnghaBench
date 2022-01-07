; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_aggs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_consume.c_dt_print_aggs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32* }

@DTRACE_A_TOTAL = common dso_local global i32 0, align 4
@DTRACE_A_MINMAXBIN = common dso_local global i32 0, align 4
@DTRACE_BUFDATA_AGGKEY = common dso_local global i32 0, align 4
@DTRACE_BUFDATA_AGGVAL = common dso_local global i32 0, align 4
@DTRACE_AGD_PRINTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DTRACE_BUFDATA_AGGFORMAT = common dso_local global i32 0, align 4
@DTRACE_BUFDATA_AGGLAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_print_aggs(%struct.TYPE_13__** %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %10, align 8
  %22 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %22, i64 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %11, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %12, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %14, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DTRACE_A_TOTAL, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DTRACE_A_MINMAXBIN, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %99, %3
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %15, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %16, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  store i64 %70, i64* %17, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %18, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @DTRACEACT_ISAGG(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %54
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %9, align 4
  br label %102

79:                                               ; preds = %54
  %80 = load i32*, i32** %14, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %83 = load i64, i64* %17, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = call i64 @dt_print_datum(i32* %80, i32* %81, %struct.TYPE_11__* %82, i64 %83, i64 %84, %struct.TYPE_13__* %85, i32 1, %struct.TYPE_14__* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 -1, i32* %4, align 4
  br label %210

90:                                               ; preds = %79
  %91 = load i32*, i32** %14, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %94 = load i32, i32* @DTRACE_BUFDATA_AGGKEY, align 4
  %95 = call i64 @dt_buffered_flush(i32* %91, i32* null, %struct.TYPE_11__* %92, %struct.TYPE_13__* %93, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 -1, i32* %4, align 4
  br label %210

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %48

102:                                              ; preds = %77, %48
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = icmp eq i32 %107, 1
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 0, i32 1
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %180, %102
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %183

115:                                              ; preds = %111
  %116 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %116, i64 %118
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  store %struct.TYPE_13__* %120, %struct.TYPE_13__** %11, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %12, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i64 %128
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %15, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %16, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %135, %138
  store i64 %139, i64* %17, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %18, align 8
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @DTRACEACT_ISAGG(i32 %143)
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %19, align 4
  %149 = load i32*, i32** %14, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %152 = load i64, i64* %17, align 8
  %153 = load i64, i64* %18, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %155 = load i32, i32* %19, align 4
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %157 = call i64 @dt_print_datum(i32* %149, i32* %150, %struct.TYPE_11__* %151, i64 %152, i64 %153, %struct.TYPE_13__* %154, i32 %155, %struct.TYPE_14__* %156)
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %115
  store i32 -1, i32* %4, align 4
  br label %210

160:                                              ; preds = %115
  %161 = load i32*, i32** %14, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %164 = load i32, i32* @DTRACE_BUFDATA_AGGVAL, align 4
  %165 = call i64 @dt_buffered_flush(i32* %161, i32* null, %struct.TYPE_11__* %162, %struct.TYPE_13__* %163, i32 %164)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160
  store i32 -1, i32* %4, align 4
  br label %210

168:                                              ; preds = %160
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %168
  %174 = load i32, i32* @DTRACE_AGD_PRINTED, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %173, %168
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %111

183:                                              ; preds = %111
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %200, label %188

188:                                              ; preds = %183
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %200, label %193

193:                                              ; preds = %188
  %194 = load i32*, i32** %14, align 8
  %195 = load i32*, i32** %13, align 8
  %196 = call i64 @dt_printf(i32* %194, i32* %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  store i32 -1, i32* %4, align 4
  br label %210

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199, %188, %183
  %201 = load i32*, i32** %14, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %203 = load i32, i32* @DTRACE_BUFDATA_AGGFORMAT, align 4
  %204 = load i32, i32* @DTRACE_BUFDATA_AGGLAST, align 4
  %205 = or i32 %203, %204
  %206 = call i64 @dt_buffered_flush(i32* %201, i32* null, %struct.TYPE_11__* null, %struct.TYPE_13__* %202, i32 %205)
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  store i32 -1, i32* %4, align 4
  br label %210

209:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %209, %208, %198, %167, %159, %97, %89
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @DTRACEACT_ISAGG(i32) #1

declare dso_local i64 @dt_print_datum(i32*, i32*, %struct.TYPE_11__*, i64, i64, %struct.TYPE_13__*, i32, %struct.TYPE_14__*) #1

declare dso_local i64 @dt_buffered_flush(i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @dt_printf(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
