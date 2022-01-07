; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_dwarf_psymtab_to_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_dwarf_psymtab_to_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"psymtab for %s already read in.  Shouldn't happen.\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Reading in symbols for %s...\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @dwarf_psymtab_to_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf_psymtab_to_symtab(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  %3 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %4 = icmp ne %struct.partial_symtab* %3, null
  br i1 %4, label %5, label %46

5:                                                ; preds = %1
  %6 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %7 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %12 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %45

15:                                               ; preds = %5
  %16 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %17 = call i64 @DBLENGTH(%struct.partial_symtab* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %21 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19, %15
  %25 = load i64, i64* @info_verbose, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %29 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @gdb_stdout, align 4
  %33 = call i32 @gdb_flush(i32 %32)
  br label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %36 = call i32 @psymtab_to_symtab_1(%struct.partial_symtab* %35)
  %37 = load i64, i64* @info_verbose, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @gdb_stdout, align 4
  %42 = call i32 @gdb_flush(i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %19
  br label %45

45:                                               ; preds = %44, %10
  br label %46

46:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i64 @DBLENGTH(%struct.partial_symtab*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @psymtab_to_symtab_1(%struct.partial_symtab*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
