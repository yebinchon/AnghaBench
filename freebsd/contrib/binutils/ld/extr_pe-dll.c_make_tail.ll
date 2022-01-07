; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_make_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"d%06d.o\00", align 1
@tmp_seq = common dso_local global i32 0, align 4
@pe_details = common dso_local global %struct.TYPE_8__* null, align 8
@bfd_object = common dso_local global i32 0, align 4
@symptr = common dso_local global i64 0, align 8
@symtab = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c".idata$4\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c".idata$5\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".idata$7\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@dll_symname = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"_iname\00", align 1
@BSF_GLOBAL = common dso_local global i32 0, align 4
@PE_IDATA4_SIZE = common dso_local global i32 0, align 4
@PE_IDATA5_SIZE = common dso_local global i32 0, align 4
@dll_filename = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @make_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_tail(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %12 = call i8* @xmalloc(i32 20)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i32, i32* @tmp_seq, align 4
  %15 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @tmp_seq, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @tmp_seq, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32* @bfd_create(i8* %18, i32* %19)
  store i32* %20, i32** %11, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pe_details, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @bfd_find_target(i32 %23, i32* %24)
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @bfd_make_writable(i32* %26)
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* @bfd_object, align 4
  %30 = call i32 @bfd_set_format(i32* %28, i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pe_details, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bfd_set_arch_mach(i32* %31, i32 %34, i32 0)
  store i64 0, i64* @symptr, align 8
  %36 = call i8* @xmalloc(i32 40)
  store i8* %36, i8** @symtab, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %39 = call %struct.TYPE_7__* @quick_section(i32* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 2)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %3, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %42 = call %struct.TYPE_7__* @quick_section(i32* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 2)
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %4, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %45 = call %struct.TYPE_7__* @quick_section(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 2)
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %5, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @U(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %48 = load i32, i32* @dll_symname, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = load i32, i32* @BSF_GLOBAL, align 4
  %51 = call i32 @quick_symbol(i32* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* %49, i32 %50, i32 0)
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %55 = call i32 @bfd_set_section_size(i32* %52, %struct.TYPE_7__* %53, i32 %54)
  %56 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %57 = call i8* @xmalloc(i32 %56)
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %63 = call i32 @memset(i8* %61, i32 0, i32 %62)
  %64 = load i32*, i32** %11, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = load i32, i32* @PE_IDATA5_SIZE, align 4
  %67 = call i32 @bfd_set_section_size(i32* %64, %struct.TYPE_7__* %65, i32 %66)
  %68 = load i32, i32* @PE_IDATA5_SIZE, align 4
  %69 = call i8* @xmalloc(i32 %68)
  store i8* %69, i8** %7, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* @PE_IDATA5_SIZE, align 4
  %75 = call i32 @memset(i8* %73, i32 0, i32 %74)
  %76 = load i32, i32* @dll_filename, align 4
  %77 = call i32 @strlen(i32 %76)
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %1
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %1
  %86 = load i32*, i32** %11, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @bfd_set_section_size(i32* %86, %struct.TYPE_7__* %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = call i8* @xmalloc(i32 %90)
  store i8* %91, i8** %8, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @dll_filename, align 4
  %97 = call i32 @strcpy(i8* %95, i32 %96)
  %98 = load i8*, i8** %8, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load i32*, i32** %11, align 8
  %104 = load i8*, i8** @symtab, align 8
  %105 = load i64, i64* @symptr, align 8
  %106 = call i32 @bfd_set_symtab(i32* %103, i8* %104, i64 %105)
  %107 = load i32*, i32** %11, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* @PE_IDATA4_SIZE, align 4
  %111 = call i32 @bfd_set_section_contents(i32* %107, %struct.TYPE_7__* %108, i8* %109, i32 0, i32 %110)
  %112 = load i32*, i32** %11, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* @PE_IDATA5_SIZE, align 4
  %116 = call i32 @bfd_set_section_contents(i32* %112, %struct.TYPE_7__* %113, i8* %114, i32 0, i32 %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @bfd_set_section_contents(i32* %117, %struct.TYPE_7__* %118, i8* %119, i32 0, i32 %120)
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @bfd_make_readable(i32* %122)
  %124 = load i32*, i32** %11, align 8
  ret i32* %124
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @bfd_create(i8*, i32*) #1

declare dso_local i32 @bfd_find_target(i32, i32*) #1

declare dso_local i32 @bfd_make_writable(i32*) #1

declare dso_local i32 @bfd_set_format(i32*, i32) #1

declare dso_local i32 @bfd_set_arch_mach(i32*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @quick_section(i32*, i8*, i32, i32) #1

declare dso_local i32 @quick_symbol(i32*, i32, i32, i8*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @U(i8*) #1

declare dso_local i32 @bfd_set_section_size(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @bfd_set_symtab(i32*, i8*, i64) #1

declare dso_local i32 @bfd_set_section_contents(i32*, %struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @bfd_make_readable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
