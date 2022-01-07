; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_mdebug_psymtab_to_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mdebugread.c_mdebug_psymtab_to_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partial_symtab = type { i32, i32 }

@info_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Reading in symbols for %s...\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@mdebug_next_symbol_text = common dso_local global i32 0, align 4
@next_symbol_text_func = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.partial_symtab*)* @mdebug_psymtab_to_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdebug_psymtab_to_symtab(%struct.partial_symtab* %0) #0 {
  %2 = alloca %struct.partial_symtab*, align 8
  store %struct.partial_symtab* %0, %struct.partial_symtab** %2, align 8
  %3 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %4 = icmp ne %struct.partial_symtab* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load i64, i64* @info_verbose, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %11 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @gdb_stdout, align 4
  %15 = call i32 @gdb_flush(i32 %14)
  br label %16

16:                                               ; preds = %9, %6
  %17 = load i32, i32* @mdebug_next_symbol_text, align 4
  store i32 %17, i32* @next_symbol_text_func, align 4
  %18 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %19 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %20 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @psymtab_to_symtab_1(%struct.partial_symtab* %18, i32 %21)
  %23 = load %struct.partial_symtab*, %struct.partial_symtab** %2, align 8
  %24 = getelementptr inbounds %struct.partial_symtab, %struct.partial_symtab* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scan_file_globals(i32 %25)
  %27 = load i64, i64* @info_verbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %5, %29, %16
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @psymtab_to_symtab_1(%struct.partial_symtab*, i32) #1

declare dso_local i32 @scan_file_globals(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
