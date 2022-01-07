; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"d%06d.o\00", align 1
@tmp_seq = common dso_local global i32 0, align 4
@pe_details = common dso_local global %struct.TYPE_10__* null, align 8
@bfd_object = common dso_local global i32 0, align 4
@symptr = common dso_local global i64 0, align 8
@symtab = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c".idata$2\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c".idata$5\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".idata$4\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"_head_\00", align 1
@dll_symname = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BSF_GLOBAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"_iname\00", align 1
@UNDSEC = common dso_local global %struct.TYPE_9__* null, align 8
@BFD_RELOC_RVA = common dso_local global i32 0, align 4
@PE_IDATA5_SIZE = common dso_local global i32 0, align 4
@PE_IDATA4_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @make_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_head(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %11 = call i8* @xmalloc(i32 20)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = load i32, i32* @tmp_seq, align 4
  %14 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @tmp_seq, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @tmp_seq, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32* @bfd_create(i8* %17, i32* %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pe_details, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @bfd_find_target(i32 %22, i32* %23)
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @bfd_make_writable(i32* %25)
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* @bfd_object, align 4
  %29 = call i32 @bfd_set_format(i32* %27, i32 %28)
  %30 = load i32*, i32** %10, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pe_details, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bfd_set_arch_mach(i32* %30, i32 %33, i32 0)
  store i64 0, i64* @symptr, align 8
  %35 = call i8* @xmalloc(i32 48)
  store i8* %35, i8** @symtab, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %38 = call %struct.TYPE_9__* @quick_section(i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 2)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %3, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %41 = call %struct.TYPE_9__* @quick_section(i32* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 2)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %4, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %44 = call %struct.TYPE_9__* @quick_section(i32* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 2)
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %5, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @U(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32, i32* @dll_symname, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = load i32, i32* @BSF_GLOBAL, align 4
  %50 = call i32 @quick_symbol(i32* %45, i32 %46, i32 %47, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_9__* %48, i32 %49, i32 0)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @U(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* @dll_symname, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** @UNDSEC, align 8
  %55 = load i32, i32* @BSF_GLOBAL, align 4
  %56 = call i32 @quick_symbol(i32* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_9__* %54, i32 %55, i32 0)
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = call i32 @bfd_set_section_size(i32* %57, %struct.TYPE_9__* %58, i32 20)
  %60 = call i8* @xmalloc(i32 20)
  store i8* %60, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @memset(i8* %64, i32 0, i32 20)
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 16
  store i8 4, i8* %67, align 1
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  store i8 4, i8* %69, align 1
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* @BFD_RELOC_RVA, align 4
  %72 = call i32 @quick_reloc(i32* %70, i32 0, i32 %71, i32 2)
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* @BFD_RELOC_RVA, align 4
  %75 = call i32 @quick_reloc(i32* %73, i32 12, i32 %74, i32 4)
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* @BFD_RELOC_RVA, align 4
  %78 = call i32 @quick_reloc(i32* %76, i32 16, i32 %77, i32 1)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = call i32 @save_relocs(%struct.TYPE_9__* %79)
  %81 = load i32*, i32** %10, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = load i32, i32* @PE_IDATA5_SIZE, align 4
  %84 = call i32 @bfd_set_section_size(i32* %81, %struct.TYPE_9__* %82, i32 %83)
  %85 = load i32, i32* @PE_IDATA5_SIZE, align 4
  %86 = call i8* @xmalloc(i32 %85)
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* @PE_IDATA5_SIZE, align 4
  %92 = call i32 @memset(i8* %90, i32 0, i32 %91)
  %93 = load i32*, i32** %10, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %95 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %96 = call i32 @bfd_set_section_size(i32* %93, %struct.TYPE_9__* %94, i32 %95)
  %97 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %98 = call i8* @xmalloc(i32 %97)
  store i8* %98, i8** %8, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %104 = call i32 @memset(i8* %102, i32 0, i32 %103)
  %105 = load i32*, i32** %10, align 8
  %106 = load i8*, i8** @symtab, align 8
  %107 = load i64, i64* @symptr, align 8
  %108 = call i32 @bfd_set_symtab(i32* %105, i8* %106, i64 %107)
  %109 = load i32*, i32** %10, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @bfd_set_section_contents(i32* %109, %struct.TYPE_9__* %110, i8* %111, i32 0, i32 20)
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = load i32, i32* @PE_IDATA5_SIZE, align 4
  %117 = call i32 @bfd_set_section_contents(i32* %113, %struct.TYPE_9__* %114, i8* %115, i32 0, i32 %116)
  %118 = load i32*, i32** %10, align 8
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %122 = call i32 @bfd_set_section_contents(i32* %118, %struct.TYPE_9__* %119, i8* %120, i32 0, i32 %121)
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @bfd_make_readable(i32* %123)
  %125 = load i32*, i32** %10, align 8
  ret i32* %125
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @bfd_create(i8*, i32*) #1

declare dso_local i32 @bfd_find_target(i32, i32*) #1

declare dso_local i32 @bfd_make_writable(i32*) #1

declare dso_local i32 @bfd_set_format(i32*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @quick_section(i32*, i8*, i32, i32) #1

declare dso_local i32 @quick_symbol(i32*, i32, i32, i8*, %struct.TYPE_9__*, i32, i32) #1

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
