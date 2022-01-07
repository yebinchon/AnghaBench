; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coff-pe-read.c_add_pe_exported_sym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coff-pe-read.c_add_pe_exported_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.read_pe_section_data = type { i32, i64 }
%struct.objfile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.read_pe_section_data*, i8*, %struct.objfile*)* @add_pe_exported_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_pe_exported_sym(i8* %0, i64 %1, %struct.read_pe_section_data* %2, i8* %3, %struct.objfile* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.read_pe_section_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.objfile*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.read_pe_section_data* %2, %struct.read_pe_section_data** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.objfile* %4, %struct.objfile** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.read_pe_section_data*, %struct.read_pe_section_data** %8, align 8
  %17 = getelementptr inbounds %struct.read_pe_section_data, %struct.read_pe_section_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %15, %18
  store i64 %19, i64* %11, align 8
  store i8* null, i8** %12, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %22, %24
  %26 = add nsw i32 %25, 2
  %27 = call i8* @xmalloc(i32 %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @strncpy(i8* %28, i8* %29, i32 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 33, i8* %35, align 1
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @strcpy(i8* %40, i8* %41)
  %43 = load i8*, i8** %12, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.read_pe_section_data*, %struct.read_pe_section_data** %8, align 8
  %46 = getelementptr inbounds %struct.read_pe_section_data, %struct.read_pe_section_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.objfile*, %struct.objfile** %10, align 8
  %49 = call i32 @prim_record_minimal_symbol(i8* %43, i64 %44, i32 %47, %struct.objfile* %48)
  %50 = load i8*, i8** %12, align 8
  %51 = call i32 @xfree(i8* %50)
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.read_pe_section_data*, %struct.read_pe_section_data** %8, align 8
  %55 = getelementptr inbounds %struct.read_pe_section_data, %struct.read_pe_section_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.objfile*, %struct.objfile** %10, align 8
  %58 = call i32 @prim_record_minimal_symbol(i8* %52, i64 %53, i32 %56, %struct.objfile* %57)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @prim_record_minimal_symbol(i8*, i64, i32, %struct.objfile*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
