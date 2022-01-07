; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_dbx_symfile_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_dbx_symfile_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.cleanup = type { i32 }

@HAS_RELOC = common dso_local global i32 0, align 4
@symfile_relocatable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"elf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"som\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"coff\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"pe\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"epoc-pe\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"nlm\00", align 1
@block_address_function_relative = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@symbol_size = common dso_local global i32 0, align 4
@symbol_table_offset = common dso_local global i32 0, align 4
@really_free_pendings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*, i32)* @dbx_symfile_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbx_symfile_read(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.objfile*, %struct.objfile** %3, align 8
  %9 = getelementptr inbounds %struct.objfile, %struct.objfile* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @bfd_get_file_flags(i32* %11)
  %13 = load i32, i32* @HAS_RELOC, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* @symfile_relocatable, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @bfd_get_target(i32* %15)
  %17 = call i64 @strncmp(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %18 = icmp eq i64 0, %17
  br i1 %18, label %44, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @bfd_get_target(i32* %20)
  %22 = call i64 @strncmp(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %23 = icmp eq i64 0, %22
  br i1 %23, label %44, label %24

24:                                               ; preds = %19
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @bfd_get_target(i32* %25)
  %27 = call i64 @strncmp(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %28 = icmp eq i64 0, %27
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @bfd_get_target(i32* %30)
  %32 = call i64 @strncmp(i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %33 = icmp eq i64 0, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @bfd_get_target(i32* %35)
  %37 = call i64 @strncmp(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %38 = icmp eq i64 0, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @bfd_get_target(i32* %40)
  %42 = call i64 @strncmp(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %43 = icmp eq i64 0, %42
  br label %44

44:                                               ; preds = %39, %34, %29, %24, %19, %2
  %45 = phi i1 [ true, %34 ], [ true, %29 ], [ true, %24 ], [ true, %19 ], [ true, %2 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* @block_address_function_relative, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.objfile*, %struct.objfile** %3, align 8
  %49 = call i32 @DBX_SYMTAB_OFFSET(%struct.objfile* %48)
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i32 @bfd_seek(i32* %47, i32 %49, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.objfile*, %struct.objfile** %3, align 8
  %56 = getelementptr inbounds %struct.objfile, %struct.objfile* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @perror_with_name(i32 %57)
  br label %59

59:                                               ; preds = %54, %44
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load %struct.objfile*, %struct.objfile** %3, align 8
  %64 = getelementptr inbounds %struct.objfile, %struct.objfile* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = load %struct.objfile*, %struct.objfile** %3, align 8
  %70 = getelementptr inbounds %struct.objfile, %struct.objfile* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %68, %59
  %75 = load %struct.objfile*, %struct.objfile** %3, align 8
  %76 = load %struct.objfile*, %struct.objfile** %3, align 8
  %77 = call i32 @DBX_SYMCOUNT(%struct.objfile* %76)
  %78 = call i32 @init_psymbol_list(%struct.objfile* %75, i32 %77)
  br label %79

79:                                               ; preds = %74, %68, %62
  %80 = load %struct.objfile*, %struct.objfile** %3, align 8
  %81 = call i32 @DBX_SYMBOL_SIZE(%struct.objfile* %80)
  store i32 %81, i32* @symbol_size, align 4
  %82 = load %struct.objfile*, %struct.objfile** %3, align 8
  %83 = call i32 @DBX_SYMTAB_OFFSET(%struct.objfile* %82)
  store i32 %83, i32* @symbol_table_offset, align 4
  %84 = call i32 (...) @free_pending_blocks()
  %85 = load i32, i32* @really_free_pendings, align 4
  %86 = call %struct.cleanup* @make_cleanup(i32 %85, i32 0)
  store %struct.cleanup* %86, %struct.cleanup** %7, align 8
  %87 = call i32 (...) @init_minimal_symbol_collection()
  %88 = call i32 (...) @make_cleanup_discard_minimal_symbols()
  %89 = load %struct.objfile*, %struct.objfile** %3, align 8
  %90 = call i32 @read_dbx_symtab(%struct.objfile* %89)
  %91 = load %struct.objfile*, %struct.objfile** %3, align 8
  %92 = call i32 @read_dbx_dynamic_symtab(%struct.objfile* %91)
  %93 = load %struct.objfile*, %struct.objfile** %3, align 8
  %94 = call i32 @install_minimal_symbols(%struct.objfile* %93)
  %95 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %96 = call i32 @do_cleanups(%struct.cleanup* %95)
  ret void
}

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @bfd_get_target(i32*) #1

declare dso_local i32 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @DBX_SYMTAB_OFFSET(%struct.objfile*) #1

declare dso_local i32 @perror_with_name(i32) #1

declare dso_local i32 @init_psymbol_list(%struct.objfile*, i32) #1

declare dso_local i32 @DBX_SYMCOUNT(%struct.objfile*) #1

declare dso_local i32 @DBX_SYMBOL_SIZE(%struct.objfile*) #1

declare dso_local i32 @free_pending_blocks(...) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i32) #1

declare dso_local i32 @init_minimal_symbol_collection(...) #1

declare dso_local i32 @make_cleanup_discard_minimal_symbols(...) #1

declare dso_local i32 @read_dbx_symtab(%struct.objfile*) #1

declare dso_local i32 @read_dbx_dynamic_symtab(%struct.objfile*) #1

declare dso_local i32 @install_minimal_symbols(%struct.objfile*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
