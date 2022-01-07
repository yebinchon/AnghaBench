; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_as.c_dump_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_as.c_dump_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@start_time = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: total time in assembly: %ld.%06ld\0A\00", align 1
@myname = common dso_local global i8* null, align 8
@environ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_statistics() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @get_run_time()
  %3 = load i64, i64* @start_time, align 8
  %4 = sub nsw i64 %2, %3
  store i64 %4, i64* %1, align 8
  %5 = load i32, i32* @stderr, align 4
  %6 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %7 = load i8*, i8** @myname, align 8
  %8 = load i64, i64* %1, align 8
  %9 = sdiv i64 %8, 1000000
  %10 = load i64, i64* %1, align 8
  %11 = srem i64 %10, 1000000
  %12 = call i32 (i32, i8*, i8*, i64, ...) @fprintf(i32 %5, i8* %6, i8* %7, i64 %9, i64 %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @subsegs_print_statistics(i32 %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @write_print_statistics(i32 %15)
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @symbol_print_statistics(i32 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @read_print_statistics(i32 %19)
  ret void
}

declare dso_local i64 @get_run_time(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i64, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @subsegs_print_statistics(i32) #1

declare dso_local i32 @write_print_statistics(i32) #1

declare dso_local i32 @symbol_print_statistics(i32) #1

declare dso_local i32 @read_print_statistics(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
