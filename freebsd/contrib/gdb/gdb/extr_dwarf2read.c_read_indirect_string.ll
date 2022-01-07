; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_indirect_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_indirect_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit_head = type { i32 }

@dwarf_str_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [60 x i8] c"DW_FORM_strp used without .debug_str section [in module %s]\00", align 1
@dwarf_str_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"DW_FORM_strp pointing outside of .debug_str section [in module %s]\00", align 1
@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, %struct.comp_unit_head*, i32*)* @read_indirect_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_indirect_string(i32* %0, i8* %1, %struct.comp_unit_head* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.comp_unit_head*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.comp_unit_head* %2, %struct.comp_unit_head** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct.comp_unit_head*, %struct.comp_unit_head** %8, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i64 @read_offset(i32* %11, i8* %12, %struct.comp_unit_head* %13, i32* %14)
  store i64 %15, i64* %10, align 8
  %16 = load i8*, i8** @dwarf_str_buffer, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @bfd_get_filename(i32* %19)
  %21 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i8* null, i8** %5, align 8
  br label %46

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @dwarf_str_size, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @bfd_get_filename(i32* %27)
  %29 = call i32 @error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i8* null, i8** %5, align 8
  br label %46

30:                                               ; preds = %22
  %31 = load i32, i32* @HOST_CHAR_BIT, align 4
  %32 = icmp eq i32 %31, 8
  %33 = zext i1 %32 to i32
  %34 = call i32 @gdb_assert(i32 %33)
  %35 = load i8*, i8** @dwarf_str_buffer, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i8* null, i8** %5, align 8
  br label %46

42:                                               ; preds = %30
  %43 = load i8*, i8** @dwarf_str_buffer, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %42, %41, %26, %18
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i64 @read_offset(i32*, i8*, %struct.comp_unit_head*, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
