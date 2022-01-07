; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_dwarf_build_psymtabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_dwarf_build_psymtabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.cleanup = type { i32 }

@current_objfile = common dso_local global %struct.objfile* null, align 8
@dbsize = common dso_local global i32 0, align 4
@dbbase = common dso_local global i64 0, align 8
@dbroff = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"can't read DWARF data from '%s'\00", align 1
@base_section_offsets = common dso_local global i32 0, align 4
@baseaddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwarf_build_psymtabs(%struct.objfile* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.objfile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.cleanup*, align 8
  store %struct.objfile* %0, %struct.objfile** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.objfile*, %struct.objfile** %7, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %13, align 8
  %18 = load %struct.objfile*, %struct.objfile** %7, align 8
  store %struct.objfile* %18, %struct.objfile** @current_objfile, align 8
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* @dbsize, align 4
  %20 = load i32, i32* @dbsize, align 4
  %21 = call i64 @xmalloc(i32 %20)
  store i64 %21, i64* @dbbase, align 8
  store i64 0, i64* @dbroff, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i64 @bfd_seek(i32* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %6
  %28 = load i64, i64* @dbbase, align 8
  %29 = load i32, i32* @dbsize, align 4
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @bfd_bread(i64 %28, i32 %29, i32* %30)
  %32 = load i32, i32* @dbsize, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27, %6
  %35 = load i64, i64* @dbbase, align 8
  %36 = call i32 @xfree(i64 %35)
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @bfd_get_filename(i32* %37)
  %39 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i64, i64* @dbbase, align 8
  %42 = call %struct.cleanup* @make_cleanup(i32 (i64)* @xfree, i64 %41)
  store %struct.cleanup* %42, %struct.cleanup** %14, align 8
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %40
  %46 = load %struct.objfile*, %struct.objfile** %7, align 8
  %47 = getelementptr inbounds %struct.objfile, %struct.objfile* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.objfile*, %struct.objfile** %7, align 8
  %53 = getelementptr inbounds %struct.objfile, %struct.objfile* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %40
  %58 = load %struct.objfile*, %struct.objfile** %7, align 8
  %59 = call i32 @init_psymbol_list(%struct.objfile* %58, i32 1024)
  br label %60

60:                                               ; preds = %57, %51, %45
  %61 = load %struct.objfile*, %struct.objfile** %7, align 8
  %62 = getelementptr inbounds %struct.objfile, %struct.objfile* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* @base_section_offsets, align 4
  %64 = load %struct.objfile*, %struct.objfile** %7, align 8
  %65 = getelementptr inbounds %struct.objfile, %struct.objfile* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ANOFFSET(i32 %66, i32 0)
  store i32 %67, i32* @baseaddr, align 4
  %68 = load i64, i64* @dbbase, align 8
  %69 = load i64, i64* @dbbase, align 8
  %70 = load i32, i32* @dbsize, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.objfile*, %struct.objfile** %7, align 8
  %76 = call i32 @scan_compilation_units(i64 %68, i64 %72, i32 %73, i32 %74, %struct.objfile* %75)
  %77 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %78 = call i32 @do_cleanups(%struct.cleanup* %77)
  store %struct.objfile* null, %struct.objfile** @current_objfile, align 8
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @bfd_bread(i64, i32, i32*) #1

declare dso_local i32 @xfree(i64) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32 (i64)*, i64) #1

declare dso_local i32 @init_psymbol_list(%struct.objfile*, i32) #1

declare dso_local i32 @ANOFFSET(i32, i32) #1

declare dso_local i32 @scan_compilation_units(i64, i64, i32, i32, %struct.objfile*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
