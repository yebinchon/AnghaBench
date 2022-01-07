; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_set_code_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-i386.c_set_code_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_code = common dso_local global i32 0, align 4
@Cpu64 = common dso_local global i32 0, align 4
@CpuNo64 = common dso_local global i32 0, align 4
@cpu_arch_flags = common dso_local global i32 0, align 4
@CODE_64BIT = common dso_local global i32 0, align 4
@CpuSledgehammer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"64bit mode not supported on this CPU.\00", align 1
@CODE_32BIT = common dso_local global i32 0, align 4
@Cpu386 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"32bit mode not supported on this CPU.\00", align 1
@stackop_size = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_code_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_code_flag(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @flag_code, align 4
  %4 = load i32, i32* @Cpu64, align 4
  %5 = load i32, i32* @CpuNo64, align 4
  %6 = or i32 %4, %5
  %7 = xor i32 %6, -1
  %8 = load i32, i32* @cpu_arch_flags, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* @cpu_arch_flags, align 4
  %10 = load i32, i32* @flag_code, align 4
  %11 = load i32, i32* @CODE_64BIT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @Cpu64, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @CpuNo64, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load i32, i32* @cpu_arch_flags, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* @cpu_arch_flags, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @CODE_64BIT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i32, i32* @cpu_arch_flags, align 4
  %26 = load i32, i32* @CpuSledgehammer, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @as_bad(i32 %30)
  br label %32

32:                                               ; preds = %29, %24, %17
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @CODE_32BIT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* @cpu_arch_flags, align 4
  %38 = load i32, i32* @Cpu386, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @as_bad(i32 %42)
  br label %44

44:                                               ; preds = %41, %36, %32
  store i8 0, i8* @stackop_size, align 1
  ret void
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
