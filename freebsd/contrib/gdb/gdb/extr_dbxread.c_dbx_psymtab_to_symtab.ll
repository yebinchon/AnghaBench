; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_dbx_psymtab_to_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_dbx_psymtab_to_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { %struct.TYPE_3__*, i32, i64, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.cleanup = type { i32 }

@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Psymtab for %s already read in.  Shouldn't happen.\0A\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Reading in symbols for %s...\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@dbx_next_symbol_text = common dso_local global i32 0, align 4
@next_symbol_text_func = common dso_local global i32 0, align 4
@stabs_data = common dso_local global i64 0, align 8
@free_current_contents = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @dbx_psymtab_to_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbx_psymtab_to_symtab(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.cleanup*, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  store %struct.cleanup* null, %struct.cleanup** %4, align 8
  %5 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %6 = icmp ne %struct.partial_symtab* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %85

8:                                                ; preds = %1
  %9 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %10 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i32, i32* @gdb_stderr, align 4
  %15 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %16 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @fprintf_unfiltered(i32 %14, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %85

19:                                               ; preds = %8
  %20 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %21 = call i64 @LDSYMLEN(%struct.partial_symtab* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %25 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %85

28:                                               ; preds = %23, %19
  %29 = load i64, i64* @info_verbose, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %33 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @gdb_stdout, align 4
  %37 = call i32 @gdb_flush(i32 %36)
  br label %38

38:                                               ; preds = %31, %28
  %39 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %40 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %3, align 8
  %44 = load i32, i32* @dbx_next_symbol_text, align 4
  store i32 %44, i32* @next_symbol_text_func, align 4
  %45 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %46 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i64 @DBX_STAB_SECTION(%struct.TYPE_3__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %38
  %51 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %52 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %57 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = call i64 @DBX_STAB_SECTION(%struct.TYPE_3__* %58)
  %60 = call i64 @symfile_relocate_debug_section(i32* %55, i64 %59, i32* null)
  store i64 %60, i64* @stabs_data, align 8
  %61 = load i64, i64* @stabs_data, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @free_current_contents, align 4
  %65 = call %struct.cleanup* @make_cleanup(i32 %64, i8* bitcast (i64* @stabs_data to i8*))
  store %struct.cleanup* %65, %struct.cleanup** %4, align 8
  br label %66

66:                                               ; preds = %63, %50
  br label %67

67:                                               ; preds = %66, %38
  %68 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %69 = call i32 @dbx_psymtab_to_symtab_1(%struct.partial_symtab* %68)
  %70 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %71 = icmp ne %struct.cleanup* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.cleanup*, %struct.cleanup** %4, align 8
  %74 = call i32 @do_cleanups(%struct.cleanup* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %77 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = call i32 @scan_file_globals(%struct.TYPE_3__* %78)
  %80 = load i64, i64* @info_verbose, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %75
  br label %85

85:                                               ; preds = %7, %13, %84, %23
  ret void
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i64 @LDSYMLEN(%struct.partial_symtab*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i64 @DBX_STAB_SECTION(%struct.TYPE_3__*) #1

declare dso_local i64 @symfile_relocate_debug_section(i32*, i64, i32*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @dbx_psymtab_to_symtab_1(%struct.partial_symtab*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @scan_file_globals(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
