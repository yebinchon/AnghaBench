; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_print_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_print_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"symbol table\00", align 1
@sy_hash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"mini local symbol table\00", align 1
@local_hash = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%lu mini local symbols created, %lu converted\0A\00", align 1
@local_symbol_count = common dso_local global i32 0, align 4
@local_symbol_conversion_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @symbol_print_statistics(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @sy_hash, align 4
  %5 = call i32 @hash_print_statistics(i32* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @local_hash, align 4
  %8 = call i32 @hash_print_statistics(i32* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @local_symbol_count, align 4
  %11 = load i32, i32* @local_symbol_conversion_count, align 4
  %12 = call i32 @fprintf(i32* %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @hash_print_statistics(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
