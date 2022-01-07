; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_handle.c_dtrace_handle_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_handle.c_dtrace_handle_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64*, %struct.TYPE_13__*, i8*, i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@EALREADY = common dso_local global i32 0, align 4
@DTRACEOPT_GRABANON = common dso_local global i64 0, align 8
@DTRACEOPT_UNSET = common dso_local global i64 0, align 8
@_dt_errprog = common dso_local global i32 0, align 4
@DTRACE_PROBESPEC_NAME = common dso_local global i32 0, align 4
@DTRACE_C_ZDEFS = common dso_local global i32 0, align 4
@DT_ECB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_handle_err(%struct.TYPE_14__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = load i32, i32* @EALREADY, align 4
  %18 = call i32 @dt_set_errno(%struct.TYPE_14__* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %71

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @DTRACEOPT_GRABANON, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DTRACEOPT_UNSET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %61

29:                                               ; preds = %19
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = load i32, i32* @_dt_errprog, align 4
  %32 = load i32, i32* @DTRACE_PROBESPEC_NAME, align 4
  %33 = load i32, i32* @DTRACE_C_ZDEFS, align 4
  %34 = call %struct.TYPE_13__* @dtrace_program_strcompile(%struct.TYPE_14__* %30, i32 %31, i32 %32, i32 %33, i32 0, i32* null)
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %8, align 8
  %35 = icmp eq %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = call i32 @dtrace_errno(%struct.TYPE_14__* %38)
  %40 = call i32 @dt_set_errno(%struct.TYPE_14__* %37, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %71

41:                                               ; preds = %29
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = call %struct.TYPE_16__* @dt_list_next(i32* %43)
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %9, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %46 = icmp ne %struct.TYPE_16__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %10, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = icmp ne %struct.TYPE_15__* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* @DT_ECB_ERROR, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %41, %28
  %62 = load i32*, i32** %6, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %70, align 8
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %61, %36, %15
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @dt_set_errno(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_13__* @dtrace_program_strcompile(%struct.TYPE_14__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @dtrace_errno(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_16__* @dt_list_next(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
