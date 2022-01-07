; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_debug_print_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_debug_print_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i8*, i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Symtab %p\0A    File: %s; Dir: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"    Blockvector: %p, Primary: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"    Line table: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symtab*)* @debug_print_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_print_symtab(%struct.symtab* %0) #0 {
  %2 = alloca %struct.symtab*, align 8
  store %struct.symtab* %0, %struct.symtab** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load %struct.symtab*, %struct.symtab** %2, align 8
  %5 = load %struct.symtab*, %struct.symtab** %2, align 8
  %6 = getelementptr inbounds %struct.symtab, %struct.symtab* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load %struct.symtab*, %struct.symtab** %2, align 8
  %9 = getelementptr inbounds %struct.symtab, %struct.symtab* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (i32, i8*, %struct.symtab*, ...) @fprintf(i32 %3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.symtab* %4, i8* %7, i8* %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = load %struct.symtab*, %struct.symtab** %2, align 8
  %14 = call i32 @BLOCKVECTOR(%struct.symtab* %13)
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.symtab*
  %17 = load %struct.symtab*, %struct.symtab** %2, align 8
  %18 = getelementptr inbounds %struct.symtab, %struct.symtab* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, %struct.symtab*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.symtab* %16, i32 %19)
  %21 = load %struct.symtab*, %struct.symtab** %2, align 8
  %22 = call i32 @BLOCKVECTOR(%struct.symtab* %21)
  %23 = call i32 @debug_print_blocks(i32 %22)
  %24 = load i32, i32* @stderr, align 4
  %25 = load %struct.symtab*, %struct.symtab** %2, align 8
  %26 = call i32 @LINETABLE(%struct.symtab* %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.symtab*
  %29 = call i32 (i32, i8*, %struct.symtab*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.symtab* %28)
  %30 = load %struct.symtab*, %struct.symtab** %2, align 8
  %31 = call i32 @LINETABLE(%struct.symtab* %30)
  %32 = call i32 @debug_print_lines(i32 %31)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, %struct.symtab*, ...) #1

declare dso_local i32 @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local i32 @debug_print_blocks(i32) #1

declare dso_local i32 @LINETABLE(%struct.symtab*) #1

declare dso_local i32 @debug_print_lines(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
