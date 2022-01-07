; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_action_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@DT_TYPE_NAMELEN = common dso_local global i32 0, align 4
@D_CLEAR_PROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s( ) prototype mismatch: %d args passed, 1 expected\0A\00", align 1
@DT_NODE_AGG = common dso_local global i64 0, align 8
@D_CLEAR_AGGARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"%s( ) argument #1 is incompatible with prototype:\0A\09prototype: aggregation\0A\09 argument: %s\0A\00", align 1
@DT_IDFLG_MOD = common dso_local global i32 0, align 4
@D_CLEAR_AGGBAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"undefined aggregation: @%s\0A\00", align 1
@DTRACEACT_LIBACT = common dso_local global i32 0, align 4
@DT_ACT_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_14__*, i32*)* @dt_action_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_action_clear(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @DT_TYPE_NAMELEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %9, align 8
  br label %20

20:                                               ; preds = %26, %3
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %22 = icmp ne %struct.TYPE_14__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32, i32* %12, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %12, align 4
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %9, align 8
  br label %20

30:                                               ; preds = %20
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = load i32, i32* @D_CLEAR_PROTO, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 (%struct.TYPE_14__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_14__* %34, i32 %35, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %33, %30
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %9, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = icmp ne %struct.TYPE_14__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DT_NODE_AGG, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %43
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = load i32, i32* @D_CLEAR_AGGARG, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = trunc i64 %14 to i32
  %66 = call i32 @dt_node_type_name(%struct.TYPE_14__* %64, i8* %16, i32 %65)
  %67 = call i32 (%struct.TYPE_14__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_14__* %57, i32 %58, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %56, %43
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %7, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %68
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DT_IDFLG_MOD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = load i32, i32* @D_CLEAR_AGGBAD, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.TYPE_14__*, i32, i8*, i32, ...) @dnerror(%struct.TYPE_14__* %87, i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %86, %79, %68
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call %struct.TYPE_13__* @dt_stmt_action(%struct.TYPE_12__* %94, i32* %95)
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %8, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @DTRACEACT_LIBACT, align 4
  %104 = call i32 @dt_action_difconst(%struct.TYPE_13__* %97, i32 %102, i32 %103)
  %105 = load i32, i32* @DT_ACT_CLEAR, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %108)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dnerror(%struct.TYPE_14__*, i32, i8*, i32, ...) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @dt_node_type_name(%struct.TYPE_14__*, i8*, i32) #2

declare dso_local %struct.TYPE_13__* @dt_stmt_action(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @dt_action_difconst(%struct.TYPE_13__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
