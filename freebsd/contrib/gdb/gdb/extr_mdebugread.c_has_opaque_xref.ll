; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_has_opaque_xref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_has_opaque_xref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %union.aux_ext* }
%union.aux_ext = type { i32 }
%struct.TYPE_16__ = type { i32 (i32, i32*, %struct.TYPE_14__*)*, i32 (i32, i32*, %struct.TYPE_12__*)* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }

@indexNil = common dso_local global i64 0, align 8
@debug_info = common dso_local global %struct.TYPE_11__* null, align 8
@debug_swap = common dso_local global %struct.TYPE_16__* null, align 8
@btStruct = common dso_local global i64 0, align 8
@btUnion = common dso_local global i64 0, align 8
@btEnum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*)* @has_opaque_xref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_opaque_xref(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %union.aux_ext*, align 8
  %8 = alloca [1 x %struct.TYPE_14__], align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @indexNil, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @debug_info, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %union.aux_ext*, %union.aux_ext** %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %19, i64 %23
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %24, i64 %27
  store %union.aux_ext* %28, %union.aux_ext** %7, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** @debug_swap, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32*, %struct.TYPE_12__*)*, i32 (i32, i32*, %struct.TYPE_12__*)** %30, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %union.aux_ext*, %union.aux_ext** %7, align 8
  %36 = bitcast %union.aux_ext* %35 to i32*
  %37 = call i32 %31(i32 %34, i32* %36, %struct.TYPE_12__* %6)
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @btStruct, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %16
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @btUnion, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @btEnum, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %86

53:                                               ; preds = %47, %42, %16
  %54 = load %union.aux_ext*, %union.aux_ext** %7, align 8
  %55 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %54, i32 1
  store %union.aux_ext* %55, %union.aux_ext** %7, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** @debug_swap, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32*, %struct.TYPE_14__*)*, i32 (i32, i32*, %struct.TYPE_14__*)** %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %union.aux_ext*, %union.aux_ext** %7, align 8
  %63 = bitcast %union.aux_ext* %62 to i32*
  %64 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %65 = call i32 %58(i32 %61, i32* %63, %struct.TYPE_14__* %64)
  %66 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 4095
  br i1 %69, label %70, label %77

70:                                               ; preds = %53
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %union.aux_ext*, %union.aux_ext** %7, align 8
  %75 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %74, i64 1
  %76 = call i32 @AUX_GET_ISYM(i32 %73, %union.aux_ext* %75)
  store i32 %76, i32* %9, align 4
  br label %81

77:                                               ; preds = %53
  %78 = getelementptr inbounds [1 x %struct.TYPE_14__], [1 x %struct.TYPE_14__]* %8, i64 0, i64 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %77, %70
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %86

85:                                               ; preds = %81
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %84, %52, %15
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @AUX_GET_ISYM(i32, %union.aux_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
