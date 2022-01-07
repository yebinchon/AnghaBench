; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_psymtab_to_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_psymtab_to_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i32, i32, i64, i64 }

@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Psymtab for %s already read in.  Shouldn't happen.\0A\00", align 1
@processing_gcc_compilation = common dso_local global i64 0, align 8
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Reading in symbols for %s...\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @hpread_psymtab_to_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpread_psymtab_to_symtab(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  %3 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %4 = icmp ne %struct.partial_symtab* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %48

6:                                                ; preds = %1
  %7 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %8 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load i32, i32* @gdb_stderr, align 4
  %13 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %14 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fprintf_unfiltered(i32 %12, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %48

17:                                               ; preds = %6
  store i64 0, i64* @processing_gcc_compilation, align 8
  %18 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %19 = call i64 @LDSYMLEN(%struct.partial_symtab* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %23 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21, %17
  %27 = load i64, i64* @info_verbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %31 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @gdb_stdout, align 4
  %35 = call i32 @gdb_flush(i32 %34)
  br label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %38 = call i32 @hpread_psymtab_to_symtab_1(%struct.partial_symtab* %37)
  %39 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %40 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @scan_file_globals(i32 %41)
  %43 = load i64, i64* @info_verbose, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %36
  br label %48

48:                                               ; preds = %5, %11, %47, %21
  ret void
}

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i64 @LDSYMLEN(%struct.partial_symtab*) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @hpread_psymtab_to_symtab_1(%struct.partial_symtab*) #1

declare dso_local i32 @scan_file_globals(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
