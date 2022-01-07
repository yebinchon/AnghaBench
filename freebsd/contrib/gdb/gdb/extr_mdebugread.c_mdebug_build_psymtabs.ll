; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_mdebug_build_psymtabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_mdebug_build_psymtabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecoff_debug_swap = type { i32, i32 (i32, i8*, i32*)* }
%struct.ecoff_debug_info = type { i8*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.objfile = type { i32, i32, i32 }

@cur_bfd = common dso_local global i32 0, align 4
@debug_swap = common dso_local global %struct.ecoff_debug_swap* null, align 8
@debug_info = common dso_local global %struct.ecoff_debug_info* null, align 8
@GLEVEL_2 = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@max_gdbinfo = common dso_local global i64 0, align 8
@max_glevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdebug_build_psymtabs(%struct.objfile* %0, %struct.ecoff_debug_swap* %1, %struct.ecoff_debug_info* %2) #0 {
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.ecoff_debug_swap*, align 8
  %6 = alloca %struct.ecoff_debug_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store %struct.ecoff_debug_swap* %1, %struct.ecoff_debug_swap** %5, align 8
  store %struct.ecoff_debug_info* %2, %struct.ecoff_debug_info** %6, align 8
  %10 = load %struct.objfile*, %struct.objfile** %4, align 8
  %11 = getelementptr inbounds %struct.objfile, %struct.objfile* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @cur_bfd, align 4
  %13 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %5, align 8
  store %struct.ecoff_debug_swap* %13, %struct.ecoff_debug_swap** @debug_swap, align 8
  %14 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  store %struct.ecoff_debug_info* %14, %struct.ecoff_debug_info** @debug_info, align 8
  %15 = call i32 (...) @stabsread_new_init()
  %16 = call i32 (...) @buildsym_new_init()
  %17 = call i32 (...) @free_header_files()
  %18 = call i32 (...) @init_header_files()
  %19 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %20 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %78

23:                                               ; preds = %3
  %24 = load %struct.objfile*, %struct.objfile** %4, align 8
  %25 = getelementptr inbounds %struct.objfile, %struct.objfile* %24, i32 0, i32 2
  %26 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %27 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i64 @obstack_alloc(i32* %25, i32 %32)
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %36 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %38 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %42 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %5, align 8
  %46 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %40, i64 %49
  store i8* %50, i8** %8, align 8
  %51 = load %struct.ecoff_debug_info*, %struct.ecoff_debug_info** %6, align 8
  %52 = getelementptr inbounds %struct.ecoff_debug_info, %struct.ecoff_debug_info* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %9, align 8
  br label %54

54:                                               ; preds = %68, %23
  %55 = load i8*, i8** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %5, align 8
  %60 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %59, i32 0, i32 1
  %61 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %60, align 8
  %62 = load %struct.objfile*, %struct.objfile** %4, align 8
  %63 = getelementptr inbounds %struct.objfile, %struct.objfile* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 %61(i32 %64, i8* %65, i32* %66)
  br label %68

68:                                               ; preds = %58
  %69 = load %struct.ecoff_debug_swap*, %struct.ecoff_debug_swap** %5, align 8
  %70 = getelementptr inbounds %struct.ecoff_debug_swap, %struct.ecoff_debug_swap* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %7, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %9, align 8
  br label %54

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77, %3
  %79 = load %struct.objfile*, %struct.objfile** %4, align 8
  %80 = call i32 @parse_partial_symbols(%struct.objfile* %79)
  ret void
}

declare dso_local i32 @stabsread_new_init(...) #1

declare dso_local i32 @buildsym_new_init(...) #1

declare dso_local i32 @free_header_files(...) #1

declare dso_local i32 @init_header_files(...) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @parse_partial_symbols(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
