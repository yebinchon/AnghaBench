; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_re_set_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_regex.c_re_set_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i32 }
%struct.re_registers = type { i32, i32*, i32* }

@REGS_REALLOCATE = common dso_local global i32 0, align 4
@REGS_UNALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @re_set_registers(%struct.re_pattern_buffer* %0, %struct.re_registers* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.re_pattern_buffer*, align 8
  %7 = alloca %struct.re_registers*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.re_pattern_buffer* %0, %struct.re_pattern_buffer** %6, align 8
  store %struct.re_registers* %1, %struct.re_registers** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %5
  %14 = load i32, i32* @REGS_REALLOCATE, align 4
  %15 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.re_registers*, %struct.re_registers** %7, align 8
  %19 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.re_registers*, %struct.re_registers** %7, align 8
  %22 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load %struct.re_registers*, %struct.re_registers** %7, align 8
  %25 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  br label %36

26:                                               ; preds = %5
  %27 = load i32, i32* @REGS_UNALLOCATED, align 4
  %28 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.re_registers*, %struct.re_registers** %7, align 8
  %31 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.re_registers*, %struct.re_registers** %7, align 8
  %33 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.re_registers*, %struct.re_registers** %7, align 8
  %35 = getelementptr inbounds %struct.re_registers, %struct.re_registers* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %26, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
