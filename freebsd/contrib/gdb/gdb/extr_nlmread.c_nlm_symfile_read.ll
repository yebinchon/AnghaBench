; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nlmread.c_nlm_symfile_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nlmread.c_nlm_symfile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cleanup = type { i32 }
%struct.symbol = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".stab\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".stabstr\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_BLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, i32)* @nlm_symfile_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_symfile_read(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.symbol*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.objfile*, %struct.objfile** %3, align 8
  %10 = getelementptr inbounds %struct.objfile, %struct.objfile* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = call i32 (...) @init_minimal_symbol_collection()
  %13 = call %struct.cleanup* (...) @make_cleanup_discard_minimal_symbols()
  store %struct.cleanup* %13, %struct.cleanup** %6, align 8
  %14 = load %struct.objfile*, %struct.objfile** %3, align 8
  %15 = getelementptr inbounds %struct.objfile, %struct.objfile* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ANOFFSET(i32 %16, i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.objfile*, %struct.objfile** %3, align 8
  %21 = call i32 @nlm_symtab_read(i32* %18, i32 %19, %struct.objfile* %20)
  %22 = load %struct.objfile*, %struct.objfile** %3, align 8
  %23 = call i32 @install_minimal_symbols(%struct.objfile* %22)
  %24 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %25 = call i32 @do_cleanups(%struct.cleanup* %24)
  %26 = load %struct.objfile*, %struct.objfile** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @stabsect_build_psymtabs(%struct.objfile* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 (...) @main_name()
  %30 = load i32, i32* @VAR_DOMAIN, align 4
  %31 = call %struct.symbol* @lookup_symbol(i32 %29, i32* null, i32 %30, i32* null, i32* null)
  store %struct.symbol* %31, %struct.symbol** %8, align 8
  %32 = load %struct.symbol*, %struct.symbol** %8, align 8
  %33 = icmp ne %struct.symbol* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %2
  %35 = load %struct.symbol*, %struct.symbol** %8, align 8
  %36 = call i64 @SYMBOL_CLASS(%struct.symbol* %35)
  %37 = load i64, i64* @LOC_BLOCK, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %34
  %40 = load %struct.symbol*, %struct.symbol** %8, align 8
  %41 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %40)
  %42 = call i32 @BLOCK_START(i32 %41)
  %43 = load %struct.objfile*, %struct.objfile** %3, align 8
  %44 = getelementptr inbounds %struct.objfile, %struct.objfile* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.symbol*, %struct.symbol** %8, align 8
  %47 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %46)
  %48 = call i32 @BLOCK_END(i32 %47)
  %49 = load %struct.objfile*, %struct.objfile** %3, align 8
  %50 = getelementptr inbounds %struct.objfile, %struct.objfile* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %52

52:                                               ; preds = %39, %34, %2
  ret void
}

declare dso_local i32 @init_minimal_symbol_collection(...) #1

declare dso_local %struct.cleanup* @make_cleanup_discard_minimal_symbols(...) #1

declare dso_local i32 @ANOFFSET(i32, i32) #1

declare dso_local i32 @nlm_symtab_read(i32*, i32, %struct.objfile*) #1

declare dso_local i32 @install_minimal_symbols(%struct.objfile*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @stabsect_build_psymtabs(%struct.objfile*, i32, i8*, i8*, i8*) #1

declare dso_local %struct.symbol* @lookup_symbol(i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @main_name(...) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i32 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i32 @BLOCK_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
