; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_macro_start_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_macro_start_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_source_file = type { i32 }
%struct.line_header = type { i32 }
%struct.objfile = type { i32, i32 }

@pending_macros = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macro_source_file* (i32, i32, %struct.macro_source_file*, i8*, %struct.line_header*, %struct.objfile*)* @macro_start_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macro_source_file* @macro_start_file(i32 %0, i32 %1, %struct.macro_source_file* %2, i8* %3, %struct.line_header* %4, %struct.objfile* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.macro_source_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.line_header*, align 8
  %12 = alloca %struct.objfile*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.macro_source_file* %2, %struct.macro_source_file** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.line_header* %4, %struct.line_header** %11, align 8
  store %struct.objfile* %5, %struct.objfile** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.line_header*, %struct.line_header** %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i8* @file_full_name(i32 %14, %struct.line_header* %15, i8* %16)
  store i8* %17, i8** %13, align 8
  %18 = load i64, i64* @pending_macros, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %6
  %21 = load %struct.objfile*, %struct.objfile** %12, align 8
  %22 = getelementptr inbounds %struct.objfile, %struct.objfile* %21, i32 0, i32 1
  %23 = load %struct.objfile*, %struct.objfile** %12, align 8
  %24 = getelementptr inbounds %struct.objfile, %struct.objfile* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @new_macro_table(i32* %22, i32 %25)
  store i64 %26, i64* @pending_macros, align 8
  br label %27

27:                                               ; preds = %20, %6
  %28 = load %struct.macro_source_file*, %struct.macro_source_file** %9, align 8
  %29 = icmp ne %struct.macro_source_file* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @pending_macros, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call %struct.macro_source_file* @macro_set_main(i64 %31, i8* %32)
  store %struct.macro_source_file* %33, %struct.macro_source_file** %9, align 8
  br label %39

34:                                               ; preds = %27
  %35 = load %struct.macro_source_file*, %struct.macro_source_file** %9, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = call %struct.macro_source_file* @macro_include(%struct.macro_source_file* %35, i32 %36, i8* %37)
  store %struct.macro_source_file* %38, %struct.macro_source_file** %9, align 8
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i8*, i8** %13, align 8
  %41 = call i32 @xfree(i8* %40)
  %42 = load %struct.macro_source_file*, %struct.macro_source_file** %9, align 8
  ret %struct.macro_source_file* %42
}

declare dso_local i8* @file_full_name(i32, %struct.line_header*, i8*) #1

declare dso_local i64 @new_macro_table(i32*, i32) #1

declare dso_local %struct.macro_source_file* @macro_set_main(i64, i8*) #1

declare dso_local %struct.macro_source_file* @macro_include(%struct.macro_source_file*, i32, i8*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
