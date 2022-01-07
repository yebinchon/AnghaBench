; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_singleton_name_thunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_singleton_name_thunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"nmth%06d.o\00", align 1
@tmp_seq = common dso_local global i32 0, align 4
@pe_details = common dso_local global %struct.TYPE_10__* null, align 8
@bfd_object = common dso_local global i32 0, align 4
@symptr = common dso_local global i64 0, align 8
@symtab = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c".idata$4\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"_nm_thnk_\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BSF_GLOBAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"_nm_\00", align 1
@UNDSEC = common dso_local global %struct.TYPE_9__* null, align 8
@PE_IDATA4_SIZE = common dso_local global i32 0, align 4
@BFD_RELOC_RVA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @make_singleton_name_thunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_singleton_name_thunk(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = call i8* @xmalloc(i32 20)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* @tmp_seq, align 4
  %12 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @tmp_seq, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @tmp_seq, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @bfd_create(i8* %15, i32* %16)
  store i32* %17, i32** %8, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pe_details, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @bfd_find_target(i32 %20, i32* %21)
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @bfd_make_writable(i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @bfd_object, align 4
  %27 = call i32 @bfd_set_format(i32* %25, i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pe_details, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bfd_set_arch_mach(i32* %28, i32 %31, i32 0)
  store i64 0, i64* @symptr, align 8
  %33 = call i8* @xmalloc(i32 24)
  store i8* %33, i8** @symtab, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %36 = call %struct.TYPE_9__* @quick_section(i32* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 2)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %5, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @U(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load i32, i32* @BSF_GLOBAL, align 4
  %42 = call i32 @quick_symbol(i32* %37, i32 %38, i8* %39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %40, i32 %41, i32 0)
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @U(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i8*, i8** %3, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** @UNDSEC, align 8
  %47 = load i32, i32* @BSF_GLOBAL, align 4
  %48 = call i32 @quick_symbol(i32* %43, i32 %44, i8* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %46, i32 %47, i32 0)
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %52 = mul nsw i32 %51, 2
  %53 = call i32 @bfd_set_section_size(i32* %49, %struct.TYPE_9__* %50, i32 %52)
  %54 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %55 = mul nsw i32 %54, 2
  %56 = call i8* @xmalloc(i32 %55)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %62 = mul nsw i32 %61, 2
  %63 = call i32 @memset(i8* %60, i32 0, i32 %62)
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @BFD_RELOC_RVA, align 4
  %66 = call i32 @quick_reloc(i32* %64, i32 0, i32 %65, i32 2)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = call i32 @save_relocs(%struct.TYPE_9__* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = load i8*, i8** @symtab, align 8
  %71 = load i64, i64* @symptr, align 8
  %72 = call i32 @bfd_set_symtab(i32* %69, i8* %70, i64 %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %77 = mul nsw i32 %76, 2
  %78 = call i32 @bfd_set_section_contents(i32* %73, %struct.TYPE_9__* %74, i8* %75, i32 0, i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @bfd_make_readable(i32* %79)
  %81 = load i32*, i32** %8, align 8
  ret i32* %81
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @bfd_create(i8*, i32*) #1

declare dso_local i32 @bfd_find_target(i32, i32*) #1

declare dso_local i32 @bfd_make_writable(i32*) #1

declare dso_local i32 @bfd_set_format(i32*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @quick_section(i32*, i8*, i32, i32) #1

declare dso_local i32 @quick_symbol(i32*, i32, i8*, i8*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @U(i8*) #1

declare dso_local i32 @bfd_set_section_size(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @quick_reloc(i32*, i32, i32, i32) #1

declare dso_local i32 @save_relocs(%struct.TYPE_9__*) #1

declare dso_local i32 @bfd_set_symtab(i32*, i8*, i64) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @bfd_make_readable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
