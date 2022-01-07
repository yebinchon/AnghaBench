; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_import_fixup_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_import_fixup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"fu%06d.o\00", align 1
@tmp_seq = common dso_local global i32 0, align 4
@pe_details = common dso_local global %struct.TYPE_8__* null, align 8
@bfd_object = common dso_local global i32 0, align 4
@symptr = common dso_local global i64 0, align 8
@symtab = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c".idata$2\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"_nm_thnk_\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UNDSEC = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"_iname\00", align 1
@BFD_RELOC_RVA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32*)* @make_import_fixup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_import_fixup_entry(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = call i8* @xmalloc(i32 20)
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load i32, i32* @tmp_seq, align 4
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @tmp_seq, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @tmp_seq, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32* @bfd_create(i8* %19, i32* %20)
  store i32* %21, i32** %12, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pe_details, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @bfd_find_target(i32 %24, i32* %25)
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @bfd_make_writable(i32* %27)
  %29 = load i32*, i32** %12, align 8
  %30 = load i32, i32* @bfd_object, align 4
  %31 = call i32 @bfd_set_format(i32* %29, i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pe_details, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bfd_set_arch_mach(i32* %32, i32 %35, i32 0)
  store i64 0, i64* @symptr, align 8
  %37 = call i8* @xmalloc(i32 48)
  store i8* %37, i8** @symtab, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %40 = call %struct.TYPE_7__* @quick_section(i32* %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 2)
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %9, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i8* @U(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @UNDSEC, align 4
  %45 = load i32, i32* @BSF_GLOBAL, align 4
  %46 = call i32 @quick_symbol(i32* %41, i8* %42, i8* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 %45, i32 0)
  %47 = load i32*, i32** %12, align 8
  %48 = call i8* @U(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i8*, i8** %7, align 8
  %50 = load i32, i32* @UNDSEC, align 4
  %51 = load i32, i32* @BSF_GLOBAL, align 4
  %52 = call i32 @quick_symbol(i32* %47, i8* %48, i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %51, i32 0)
  %53 = load i32*, i32** %12, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* @UNDSEC, align 4
  %56 = load i32, i32* @BSF_GLOBAL, align 4
  %57 = call i32 @quick_symbol(i32* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56, i32 0)
  %58 = load i32*, i32** %12, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %60 = call i32 @bfd_set_section_size(i32* %58, %struct.TYPE_7__* %59, i32 20)
  %61 = call i8* @xmalloc(i32 20)
  store i8* %61, i8** %10, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @memset(i8* %65, i32 0, i32 20)
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* @BFD_RELOC_RVA, align 4
  %69 = call i32 @quick_reloc(i32* %67, i32 0, i32 %68, i32 1)
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* @BFD_RELOC_RVA, align 4
  %72 = call i32 @quick_reloc(i32* %70, i32 12, i32 %71, i32 2)
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* @BFD_RELOC_RVA, align 4
  %75 = call i32 @quick_reloc(i32* %73, i32 16, i32 %74, i32 3)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %77 = call i32 @save_relocs(%struct.TYPE_7__* %76)
  %78 = load i32*, i32** %12, align 8
  %79 = load i8*, i8** @symtab, align 8
  %80 = load i64, i64* @symptr, align 8
  %81 = call i32 @bfd_set_symtab(i32* %78, i8* %79, i64 %80)
  %82 = load i32*, i32** %12, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @bfd_set_section_contents(i32* %82, %struct.TYPE_7__* %83, i8* %84, i32 0, i32 20)
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @bfd_make_readable(i32* %86)
  %88 = load i32*, i32** %12, align 8
  ret i32* %88
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @bfd_create(i8*, i32*) #1

declare dso_local i32 @bfd_find_target(i32, i32*) #1

declare dso_local i32 @bfd_make_writable(i32*) #1

declare dso_local i32 @bfd_set_format(i32*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @quick_section(i32*, i8*, i32, i32) #1

declare dso_local i32 @quick_symbol(i32*, i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @U(i8*) #1

declare dso_local i32 @bfd_set_section_size(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @quick_reloc(i32*, i32, i32, i32) #1

declare dso_local i32 @save_relocs(%struct.TYPE_7__*) #1

declare dso_local i32 @bfd_set_symtab(i32*, i8*, i64) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @bfd_make_readable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
