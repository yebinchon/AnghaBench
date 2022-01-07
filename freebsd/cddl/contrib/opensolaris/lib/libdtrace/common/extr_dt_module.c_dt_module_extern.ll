; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_extern.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_module.c_dt_module_extern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@EDT_NOMEM = common dso_local global i32 0, align 4
@EDT_SYMOFLOW = common dso_local global i32 0, align 4
@DT_IDENT_SYMBOL = common dso_local global i32 0, align 4
@_dtrace_symattr = common dso_local global i32 0, align 4
@dt_idops_thaw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @dt_module_extern(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i8* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @UINT_MAX, align 4
  %22 = call i32* @dt_idhash_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 %20, i32 %21)
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = icmp eq i32* %22, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %17
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = load i32, i32* @EDT_NOMEM, align 4
  %29 = call i32 @dt_set_errno(%struct.TYPE_16__* %27, i32 %28)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %97

30:                                               ; preds = %17, %4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @dt_idhash_nextid(i32* %33, i32* %12)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = load i32, i32* @EDT_SYMOFLOW, align 4
  %39 = call i32 @dt_set_errno(%struct.TYPE_16__* %37, i32 %38)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %97

40:                                               ; preds = %30
  %41 = call %struct.TYPE_15__* @malloc(i32 12)
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %10, align 8
  %42 = icmp eq %struct.TYPE_15__* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = load i32, i32* @EDT_NOMEM, align 4
  %46 = call i32 @dt_set_errno(%struct.TYPE_16__* %44, i32 %45)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %97

47:                                               ; preds = %40
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @DT_IDENT_SYMBOL, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @_dtrace_symattr, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_18__* @dt_idhash_insert(i32* %50, i8* %51, i32 %52, i32 0, i32 %53, i32 %54, i32 0, i32* @dt_idops_thaw, i32* null, i32 %57)
  store %struct.TYPE_18__* %58, %struct.TYPE_18__** %11, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %60 = icmp eq %struct.TYPE_18__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = load i32, i32* @EDT_NOMEM, align 4
  %64 = call i32 @dt_set_errno(%struct.TYPE_16__* %62, i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %66 = call i32 @free(%struct.TYPE_15__* %65)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %97

67:                                               ; preds = %47
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 2
  store %struct.TYPE_15__* %83, %struct.TYPE_15__** %85, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %96, %struct.TYPE_18__** %5, align 8
  br label %97

97:                                               ; preds = %67, %61, %43, %36, %26
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  ret %struct.TYPE_18__* %98
}

declare dso_local i32* @dt_idhash_create(i8*, i32*, i32, i32) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @dt_idhash_nextid(i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @malloc(i32) #1

declare dso_local %struct.TYPE_18__* @dt_idhash_insert(i32*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
