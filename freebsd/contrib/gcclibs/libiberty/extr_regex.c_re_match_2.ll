; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_re_match_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_re_match_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i32 }
%struct.re_registers = type { i32 }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @re_match_2(%struct.re_pattern_buffer* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, %struct.re_registers* %6, i32 %7) #0 {
  %9 = alloca %struct.re_pattern_buffer*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.re_registers*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.re_pattern_buffer* %0, %struct.re_pattern_buffer** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.re_registers* %6, %struct.re_registers** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load %struct.re_registers*, %struct.re_registers** %15, align 8
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @byte_re_match_2_internal(%struct.re_pattern_buffer* %18, i8* %19, i32 %20, i8* %21, i32 %22, i32 %23, %struct.re_registers* %24, i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  ret i32 %27
}

declare dso_local i32 @byte_re_match_2_internal(%struct.re_pattern_buffer*, i8*, i32, i8*, i32, i32, %struct.re_registers*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
