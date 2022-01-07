; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_parse_external.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_parse_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, %union.aux_ext* }
%struct.TYPE_9__ = type { i32 }
%union.aux_ext = type { i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i64 }
%struct.section_offsets = type { i32 }
%struct.objfile = type { i32 }

@ifdNil = common dso_local global i64 0, align 8
@cur_fd = common dso_local global i32 0, align 4
@debug_info = common dso_local global %struct.TYPE_10__* null, align 8
@cur_fdr = common dso_local global %struct.TYPE_9__* null, align 8
@scNil = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"procedure\00", align 1
@n_undef_procs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@n_undef_vars = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@n_undef_labels = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"symbol\00", align 1
@n_undef_symbols = common dso_local global i32 0, align 4
@info_verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"Warning: %s `%s' is undefined (in %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, %struct.section_offsets*, %struct.objfile*)* @parse_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_external(%struct.TYPE_7__* %0, i32 %1, %struct.section_offsets* %2, %struct.objfile* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.section_offsets*, align 8
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca %union.aux_ext*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.section_offsets* %2, %struct.section_offsets** %7, align 8
  store %struct.objfile* %3, %struct.objfile** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ifdNil, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @cur_fd, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @debug_info, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i32, i32* @cur_fd, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %25
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** @cur_fdr, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** @debug_info, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load %union.aux_ext*, %union.aux_ext** %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cur_fdr, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %union.aux_ext, %union.aux_ext* %29, i64 %33
  store %union.aux_ext* %34, %union.aux_ext** %9, align 8
  br label %39

35:                                               ; preds = %4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** @debug_info, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** @cur_fdr, align 8
  store %union.aux_ext* null, %union.aux_ext** %9, align 8
  br label %39

39:                                               ; preds = %35, %16
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @SC_IS_UNDEF(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @scNil, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %46, %39
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %68 [
    i32 130, label %58
    i32 128, label %59
    i32 129, label %59
    i32 132, label %62
    i32 131, label %65
  ]

58:                                               ; preds = %53
  br label %111

59:                                               ; preds = %53, %53
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %60 = load i32, i32* @n_undef_procs, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @n_undef_procs, align 4
  br label %69

62:                                               ; preds = %53
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %63 = load i32, i32* @n_undef_vars, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @n_undef_vars, align 4
  br label %69

65:                                               ; preds = %53
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  %66 = load i32, i32* @n_undef_labels, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @n_undef_labels, align 4
  br label %69

68:                                               ; preds = %53
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %69

69:                                               ; preds = %68, %65, %62, %59
  %70 = load i32, i32* @n_undef_symbols, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* @n_undef_symbols, align 4
  %72 = load i64, i64* @info_verbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @debug_info, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %78, %82
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** @cur_fdr, align 8
  %85 = call i32 @fdr_name(%struct.TYPE_9__* %84)
  %86 = call i32 @printf_filtered(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %75, i64 %83, i32 %85)
  br label %87

87:                                               ; preds = %74, %69
  br label %111

88:                                               ; preds = %46
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %110 [
    i32 129, label %93
    i32 128, label %93
    i32 132, label %94
    i32 131, label %94
  ]

93:                                               ; preds = %88, %88
  br label %111

94:                                               ; preds = %88, %88
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @SC_IS_COMMON(i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %111

102:                                              ; preds = %94
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load %union.aux_ext*, %union.aux_ext** %9, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.section_offsets*, %struct.section_offsets** %7, align 8
  %108 = load %struct.objfile*, %struct.objfile** %8, align 8
  %109 = call i32 @parse_symbol(%struct.TYPE_8__* %104, %union.aux_ext* %105, i8* null, i32 %106, %struct.section_offsets* %107, %struct.objfile* %108)
  br label %111

110:                                              ; preds = %88
  br label %111

111:                                              ; preds = %58, %87, %110, %102, %101, %93
  ret void
}

declare dso_local i64 @SC_IS_UNDEF(i64) #1

declare dso_local i32 @printf_filtered(i8*, i8*, i64, i32) #1

declare dso_local i32 @fdr_name(%struct.TYPE_9__*) #1

declare dso_local i32 @SC_IS_COMMON(i64) #1

declare dso_local i32 @parse_symbol(%struct.TYPE_8__*, %union.aux_ext*, i8*, i32, %struct.section_offsets*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
