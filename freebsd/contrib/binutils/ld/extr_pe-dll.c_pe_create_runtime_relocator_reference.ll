; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_create_runtime_relocator_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_create_runtime_relocator_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"ertr%06d.o\00", align 1
@tmp_seq = common dso_local global i32 0, align 4
@pe_details = common dso_local global %struct.TYPE_8__* null, align 8
@bfd_object = common dso_local global i32 0, align 4
@symptr = common dso_local global i64 0, align 8
@symtab = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c".rdata\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"_pei386_runtime_relocator\00", align 1
@UNDSEC = common dso_local global i32 0, align 4
@BSF_NO_FLAGS = common dso_local global i32 0, align 4
@BFD_RELOC_RVA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @pe_create_runtime_relocator_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pe_create_runtime_relocator_reference(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = call i8* @xmalloc(i32 20)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i32, i32* @tmp_seq, align 4
  %10 = call i32 @sprintf(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @tmp_seq, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @tmp_seq, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32* @bfd_create(i8* %13, i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pe_details, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @bfd_find_target(i32 %18, i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @bfd_make_writable(i32* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @bfd_object, align 4
  %25 = call i32 @bfd_set_format(i32* %23, i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pe_details, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @bfd_set_arch_mach(i32* %26, i32 %29, i32 0)
  store i64 0, i64* @symptr, align 8
  %31 = call i8* @xmalloc(i32 16)
  store i8* %31, i8** @symtab, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %34 = call %struct.TYPE_7__* @quick_section(i32* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 2)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %3, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @U(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* @UNDSEC, align 4
  %38 = load i32, i32* @BSF_NO_FLAGS, align 4
  %39 = call i32 @quick_symbol(i32* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %38, i32 0)
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = call i32 @bfd_set_section_size(i32* %40, %struct.TYPE_7__* %41, i32 4)
  %43 = call i8* @xmalloc(i32 4)
  store i8* %43, i8** %4, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* @BFD_RELOC_RVA, align 4
  %49 = call i32 @quick_reloc(i32* %47, i32 0, i32 %48, i32 1)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = call i32 @save_relocs(%struct.TYPE_7__* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i8*, i8** @symtab, align 8
  %54 = load i64, i64* @symptr, align 8
  %55 = call i32 @bfd_set_symtab(i32* %52, i8* %53, i64 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @bfd_set_section_contents(i32* %56, %struct.TYPE_7__* %57, i8* %58, i32 0, i32 4)
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @bfd_make_readable(i32* %60)
  %62 = load i32*, i32** %6, align 8
  ret i32* %62
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @bfd_create(i8*, i32*) #1

declare dso_local i32 @bfd_find_target(i32, i32*) #1

declare dso_local i32 @bfd_make_writable(i32*) #1

declare dso_local i32 @bfd_set_format(i32*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @quick_section(i32*, i8*, i32, i32) #1

declare dso_local i32 @quick_symbol(i32*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @U(i8*) #1

declare dso_local i32 @bfd_set_section_size(i32*, %struct.TYPE_7__*, i32) #1

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
