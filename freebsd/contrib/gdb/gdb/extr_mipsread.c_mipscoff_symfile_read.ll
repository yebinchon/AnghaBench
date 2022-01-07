; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsread.c_mipscoff_symfile_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mipsread.c_mipscoff_symfile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i64, i64, i8* }
%struct.cleanup = type { i32 }
%struct.minimal_symbol = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32*, i32*, i32*)* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Error reading symbol table: %s\00", align 1
@INVALID_ENTRY_POINT = common dso_local global i64 0, align 8
@INVALID_ENTRY_LOWPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, i32)* @mipscoff_symfile_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipscoff_symfile_read(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca %struct.minimal_symbol*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.objfile*, %struct.objfile** %3, align 8
  %9 = getelementptr inbounds %struct.objfile, %struct.objfile* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = call i32 (...) @init_minimal_symbol_collection()
  %12 = call %struct.cleanup* (...) @make_cleanup_discard_minimal_symbols()
  store %struct.cleanup* %12, %struct.cleanup** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_8__* @ecoff_backend(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32 (i32*, i32*, i32*)*, i32 (i32*, i32*, i32*)** %16, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call %struct.TYPE_7__* @ecoff_data(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32 %17(i32* %18, i32* null, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = call i32 (...) @bfd_get_error()
  %26 = call i32 @bfd_errmsg(i32 %25)
  %27 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.objfile*, %struct.objfile** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call %struct.TYPE_8__* @ecoff_backend(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.TYPE_7__* @ecoff_data(i32* %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = call i32 @mdebug_build_psymtabs(%struct.objfile* %29, %struct.TYPE_6__* %32, i32* %35)
  %37 = load %struct.objfile*, %struct.objfile** %3, align 8
  %38 = getelementptr inbounds %struct.objfile, %struct.objfile* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.objfile*, %struct.objfile** %3, align 8
  %41 = call i32 @read_alphacoff_dynamic_symtab(i32 %39, %struct.objfile* %40)
  %42 = load %struct.objfile*, %struct.objfile** %3, align 8
  %43 = call i32 @install_minimal_symbols(%struct.objfile* %42)
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %28
  %47 = load %struct.objfile*, %struct.objfile** %3, align 8
  %48 = getelementptr inbounds %struct.objfile, %struct.objfile* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @INVALID_ENTRY_POINT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %46
  %54 = load %struct.objfile*, %struct.objfile** %3, align 8
  %55 = getelementptr inbounds %struct.objfile, %struct.objfile* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @INVALID_ENTRY_LOWPC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %53
  %61 = load %struct.objfile*, %struct.objfile** %3, align 8
  %62 = getelementptr inbounds %struct.objfile, %struct.objfile* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64 %64)
  store %struct.minimal_symbol* %65, %struct.minimal_symbol** %7, align 8
  %66 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %67 = icmp ne %struct.minimal_symbol* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %60
  %69 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %70 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %69, i64 1
  %71 = call i64 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %75 = call i8* @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.objfile*, %struct.objfile** %3, align 8
  %78 = getelementptr inbounds %struct.objfile, %struct.objfile* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  %80 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %81 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %80, i64 1
  %82 = call i8* @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %81)
  %83 = load %struct.objfile*, %struct.objfile** %3, align 8
  %84 = getelementptr inbounds %struct.objfile, %struct.objfile* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i8* %82, i8** %85, align 8
  br label %86

86:                                               ; preds = %73, %68, %60
  br label %87

87:                                               ; preds = %86, %53, %46, %28
  %88 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %89 = call i32 @do_cleanups(%struct.cleanup* %88)
  ret void
}

declare dso_local i32 @init_minimal_symbol_collection(...) #1

declare dso_local %struct.cleanup* @make_cleanup_discard_minimal_symbols(...) #1

declare dso_local %struct.TYPE_8__* @ecoff_backend(i32*) #1

declare dso_local %struct.TYPE_7__* @ecoff_data(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i32 @mdebug_build_psymtabs(%struct.objfile*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @read_alphacoff_dynamic_symtab(i32, %struct.objfile*) #1

declare dso_local i32 @install_minimal_symbols(%struct.objfile*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i64) #1

declare dso_local i64 @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local i8* @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
