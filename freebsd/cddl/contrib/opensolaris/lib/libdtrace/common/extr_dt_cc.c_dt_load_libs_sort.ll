; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_load_libs_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_load_libs_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"skipping library %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@DTRACE_C_EMPTY = common dso_local global i32 0, align 4
@EDT_COMPILER = common dso_local global i64 0, align 8
@D_PRAGMA_DEPEND = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @dt_load_libs_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_load_libs_sort(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = call i32 @dt_lib_depend_sort(%struct.TYPE_12__* %7)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %87

11:                                               ; preds = %1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 3
  %14 = call %struct.TYPE_13__* @dt_list_next(%struct.TYPE_13__* %13)
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %6, align 8
  br label %15

15:                                               ; preds = %81, %11
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %84

18:                                               ; preds = %15
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32* @fopen(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @errno, align 4
  %29 = call i32 @strerror(i32 %28)
  %30 = call i32 @dt_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %27, i32 %29)
  br label %81

31:                                               ; preds = %18
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @DTRACE_C_EMPTY, align 4
  %40 = call i32* @dtrace_program_fcompile(%struct.TYPE_12__* %37, i32* %38, i32 %39, i32 0, i32* null)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @fclose(i32* %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %31
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EDT_COMPILER, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @D_PRAGMA_DEPEND, align 4
  %58 = call i64 @dt_errtag(i32 %57)
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %47
  br label %87

61:                                               ; preds = %53, %31
  %62 = load i32*, i32** %4, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = call i32 @dtrace_errno(%struct.TYPE_12__* %69)
  %71 = call i32 @dtrace_errmsg(%struct.TYPE_12__* %68, i32 %70)
  %72 = call i32 @dt_dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %67, i32 %71)
  br label %80

73:                                               ; preds = %61
  %74 = load i32, i32* @B_TRUE, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @dt_program_destroy(%struct.TYPE_12__* %77, i32* %78)
  br label %80

80:                                               ; preds = %73, %64
  br label %81

81:                                               ; preds = %80, %24
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = call %struct.TYPE_13__* @dt_list_next(%struct.TYPE_13__* %82)
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %6, align 8
  br label %15

84:                                               ; preds = %15
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = call i32 @dt_lib_depend_free(%struct.TYPE_12__* %85)
  store i32 0, i32* %2, align 4
  br label %90

87:                                               ; preds = %60, %10
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = call i32 @dt_lib_depend_free(%struct.TYPE_12__* %88)
  store i32 -1, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @dt_lib_depend_sort(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @dt_list_next(%struct.TYPE_13__*) #1

declare dso_local i32* @fopen(i32*, i8*) #1

declare dso_local i32 @dt_dprintf(i8*, i32*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32* @dtrace_program_fcompile(%struct.TYPE_12__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @dt_errtag(i32) #1

declare dso_local i32 @dtrace_errmsg(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dtrace_errno(%struct.TYPE_12__*) #1

declare dso_local i32 @dt_program_destroy(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @dt_lib_depend_free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
