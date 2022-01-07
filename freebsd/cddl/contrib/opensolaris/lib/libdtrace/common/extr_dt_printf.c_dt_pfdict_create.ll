; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_pfdict_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_dt_pfdict_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_15__ = type { i32, i32* }

@_dtrace_strbuckets = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@_dtrace_conversions = common dso_local global %struct.TYPE_18__* null, align 8
@CTF_ERR = common dso_local global i32 0, align 4
@pfcheck_type = common dso_local global i32 0, align 4
@DTRACE_OBJ_DDEFS = common dso_local global i32 0, align 4
@EDT_NOCONV = common dso_local global i32 0, align 4
@DTRACE_OBJ_CDEFS = common dso_local global i32 0, align 4
@EDT_BADCONV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"loaded printf conversion %%%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_pfdict_create(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %10 = load i32, i32* @_dtrace_strbuckets, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i8* @malloc(i32 16)
  %12 = bitcast i8* %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %6, align 8
  %13 = icmp eq %struct.TYPE_17__* %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = call i8* @malloc(i32 %18)
  %20 = bitcast i8* %19 to %struct.TYPE_18__**
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  store %struct.TYPE_18__** %20, %struct.TYPE_18__*** %22, align 8
  %23 = icmp eq %struct.TYPE_18__** %20, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %14, %1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = call i32 @free(%struct.TYPE_17__* %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = load i32, i32* @EDT_NOMEM, align 4
  %29 = call i32 @dt_set_errno(%struct.TYPE_16__* %27, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %184

30:                                               ; preds = %14
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store %struct.TYPE_17__* %31, %struct.TYPE_17__** %33, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @bzero(%struct.TYPE_18__** %36, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** @_dtrace_conversions, align 8
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %5, align 8
  br label %46

46:                                               ; preds = %180, %30
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %183

51:                                               ; preds = %46
  %52 = call i8* @malloc(i32 72)
  %53 = bitcast i8* %52 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %8, align 8
  %54 = icmp eq %struct.TYPE_18__* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = call i32 @dt_pfdict_destroy(%struct.TYPE_16__* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = load i32, i32* @EDT_NOMEM, align 4
  %60 = call i32 @dt_set_errno(%struct.TYPE_16__* %58, i32 %59)
  store i32 %60, i32* %2, align 4
  br label %184

61:                                               ; preds = %51
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %64 = call i32 @bcopy(%struct.TYPE_18__* %62, %struct.TYPE_18__* %63, i32 72)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @dt_strtab_hash(i32* %67, i32* null)
  %69 = load i32, i32* %4, align 4
  %70 = srem i32 %68, %69
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %73, i64 %75
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 9
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %83, i64 %85
  store %struct.TYPE_18__* %80, %struct.TYPE_18__** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load i32, i32* @CTF_ERR, align 4
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, @pfcheck_type
  br i1 %93, label %94, label %108

94:                                               ; preds = %61
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = load i32, i32* @DTRACE_OBJ_DDEFS, align 4
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @dtrace_lookup_by_type(%struct.TYPE_16__* %95, i32 %96, i32* %99, %struct.TYPE_15__* %7)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = call i32 @dt_pfdict_destroy(%struct.TYPE_16__* %103)
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %106 = load i32, i32* @EDT_NOCONV, align 4
  %107 = call i32 @dt_set_errno(%struct.TYPE_16__* %105, i32 %106)
  store i32 %107, i32* %2, align 4
  br label %184

108:                                              ; preds = %94, %61
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 7
  store i32* %110, i32** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = icmp eq i32* %119, @pfcheck_type
  br i1 %120, label %121, label %138

121:                                              ; preds = %108
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %123 = load i32, i32* @DTRACE_OBJ_CDEFS, align 4
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i64 @dtrace_lookup_by_type(%struct.TYPE_16__* %122, i32 %123, i32* %126, %struct.TYPE_15__* %7)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 8
  store i32* %131, i32** %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 4
  br label %149

138:                                              ; preds = %121, %108
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 7
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 8
  store i32* %141, i32** %143, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %138, %129
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %169, label %154

154:                                              ; preds = %149
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %169, label %159

159:                                              ; preds = %154
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %175

169:                                              ; preds = %164, %159, %154, %149
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %171 = call i32 @dt_pfdict_destroy(%struct.TYPE_16__* %170)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %173 = load i32, i32* @EDT_BADCONV, align 4
  %174 = call i32 @dt_set_errno(%struct.TYPE_16__* %172, i32 %173)
  store i32 %174, i32* %2, align 4
  br label %184

175:                                              ; preds = %164
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @dt_dprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %178)
  br label %180

180:                                              ; preds = %175
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 1
  store %struct.TYPE_18__* %182, %struct.TYPE_18__** %5, align 8
  br label %46

183:                                              ; preds = %46
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %169, %102, %55, %24
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_17__*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_18__**, i32) #1

declare dso_local i32 @dt_pfdict_destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @bcopy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @dt_strtab_hash(i32*, i32*) #1

declare dso_local i64 @dtrace_lookup_by_type(%struct.TYPE_16__*, i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @dt_dprintf(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
