; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_handle.c_dt_handle_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_handle.c_dt_handle_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 (%struct.TYPE_17__*, i32)*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i8*, i64, i32, %struct.TYPE_14__*, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_18__* }

@DT_ECB_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"dtrace\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@EDT_BADERROR = common dso_local global i32 0, align 4
@uint64_t = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"predicate\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"action #%d\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" at DIF offset %d\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" (0x%llx)\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"error on enabled probe ID %u (ID %u: %s:%s:%s:%s): %s%s in %s%s\0A\00", align 1
@EDT_ERRABORT = common dso_local global i32 0, align 4
@DTRACE_HANDLE_ABORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @dt_handle_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_handle_err(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i32, align 4
  %12 = alloca [30 x i8], align 16
  %13 = alloca [30 x i8], align 16
  %14 = alloca [30 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %6, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %8, align 8
  store i32 80, i32* %15, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DT_ECB_ERROR, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 5
  br i1 %35, label %48, label %36

36:                                               ; preds = %2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %36, %2
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = load i32, i32* @EDT_BADERROR, align 4
  %51 = call i32 @dt_set_errno(%struct.TYPE_16__* %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %210

52:                                               ; preds = %42
  %53 = load i32, i32* @uint64_t, align 4
  %54 = call i64 @DT_REC(i32 %53, i32 0)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %11, align 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i64 @dt_epid_lookup(%struct.TYPE_16__* %56, i32 %57, %struct.TYPE_18__** %7, %struct.TYPE_14__** %9)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = load i32, i32* @EDT_BADERROR, align 4
  %63 = call i32 @dt_set_errno(%struct.TYPE_16__* %61, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %210

64:                                               ; preds = %52
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 7
  store %struct.TYPE_18__* %65, %struct.TYPE_18__** %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 6
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %68, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 5
  store i32 %71, i32* %72, align 8
  %73 = load i32, i32* @uint64_t, align 4
  %74 = call i64 @DT_REC(i32 %73, i32 1)
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* @uint64_t, align 4
  %78 = call i64 @DT_REC(i32 %77, i32 2)
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* @uint64_t, align 4
  %82 = call i64 @DT_REC(i32 %81, i32 3)
  %83 = trunc i64 %82 to i32
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i32 %83, i32* %84, align 8
  %85 = load i32, i32* @uint64_t, align 4
  %86 = call i64 @DT_REC(i32 %85, i32 4)
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  store i64 %86, i64* %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @dtrace_faultstr(%struct.TYPE_16__* %88, i32 %90)
  store i8* %91, i8** %16, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @strlen(i8* %92)
  %94 = sext i32 %93 to i64
  %95 = add i64 60, %94
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = sext i32 %99 to i64
  %101 = add i64 %95, %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = sext i32 %105 to i64
  %107 = add i64 %101, %106
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = sext i32 %111 to i64
  %113 = add i64 %107, %112
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strlen(i8* %116)
  %118 = sext i32 %117 to i64
  %119 = add i64 %113, %118
  %120 = add i64 %119, 80
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %18, align 4
  %122 = load i32, i32* %18, align 4
  %123 = call i64 @alloca(i32 %122)
  %124 = inttoptr i64 %123 to i8*
  store i8* %124, i8** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %64
  %129 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %130 = call i32 (i8*, i8*, ...) @sprintf(i8* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %136

131:                                              ; preds = %64
  %132 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i8*, i8*, ...) @sprintf(i8* %132, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %131, %128
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, i8*, ...) @sprintf(i8* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  br label %147

145:                                              ; preds = %136
  %146 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %146, align 16
  br label %147

147:                                              ; preds = %145, %140
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %156 [
    i32 130, label %150
    i32 129, label %150
    i32 128, label %150
  ]

150:                                              ; preds = %147, %147, %147
  %151 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 (i8*, i8*, ...) @sprintf(i8* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %154)
  br label %158

156:                                              ; preds = %147
  %157 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %157, align 16
  br label %158

158:                                              ; preds = %156, %150
  %159 = load i8*, i8** %17, align 8
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i8* @dtrace_faultstr(%struct.TYPE_16__* %177, i32 %179)
  %181 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %182 = getelementptr inbounds [30 x i8], [30 x i8]* %12, i64 0, i64 0
  %183 = getelementptr inbounds [30 x i8], [30 x i8]* %14, i64 0, i64 0
  %184 = call i32 @snprintf(i8* %159, i32 %160, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i64 0, i64 0), i32 %161, i32 %164, i8* %167, i8* %170, i8* %173, i8* %176, i8* %180, i8* %181, i8* %182, i8* %183)
  %185 = load i8*, i8** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  store i8* %185, i8** %186, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i64 (%struct.TYPE_17__*, i32)*, i64 (%struct.TYPE_17__*, i32)** %188, align 8
  %190 = icmp eq i64 (%struct.TYPE_17__*, i32)* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %158
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %193 = load i32, i32* @EDT_ERRABORT, align 4
  %194 = call i32 @dt_set_errno(%struct.TYPE_16__* %192, i32 %193)
  store i32 %194, i32* %3, align 4
  br label %210

195:                                              ; preds = %158
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 0
  %198 = load i64 (%struct.TYPE_17__*, i32)*, i64 (%struct.TYPE_17__*, i32)** %197, align 8
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = call i64 %198(%struct.TYPE_17__* %10, i32 %201)
  %203 = load i64, i64* @DTRACE_HANDLE_ABORT, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %195
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %207 = load i32, i32* @EDT_ERRABORT, align 4
  %208 = call i32 @dt_set_errno(%struct.TYPE_16__* %206, i32 %207)
  store i32 %208, i32* %3, align 4
  br label %210

209:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %205, %191, %60, %48
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @DT_REC(i32, i32) #1

declare dso_local i64 @dt_epid_lookup(%struct.TYPE_16__*, i32, %struct.TYPE_18__**, %struct.TYPE_14__**) #1

declare dso_local i8* @dtrace_faultstr(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
