; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_opcode_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_opcode_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thumb_mode = common dso_local global i32 0, align 4
@cpu_variant = common dso_local global i32 0, align 4
@arm_ext_v4t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"selected processor does not support THUMB opcodes\00", align 1
@now_seg = common dso_local global i32 0, align 4
@MAP_THUMB = common dso_local global i32 0, align 4
@arm_ext_v1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"selected processor does not support ARM opcodes\00", align 1
@need_pass_2 = common dso_local global i32 0, align 4
@MAP_ARM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid instruction size selected (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @opcode_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opcode_select(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %43 [
    i32 16, label %4
    i32 32, label %21
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @thumb_mode, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @cpu_variant, align 4
  %9 = load i32, i32* @arm_ext_v4t, align 4
  %10 = call i32 @ARM_CPU_HAS_FEATURE(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 (i32, ...) @as_bad(i32 %13)
  br label %15

15:                                               ; preds = %12, %7
  store i32 1, i32* @thumb_mode, align 4
  %16 = load i32, i32* @now_seg, align 4
  %17 = call i32 @record_alignment(i32 %16, i32 1)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @MAP_THUMB, align 4
  %20 = call i32 @mapping_state(i32 %19)
  br label %47

21:                                               ; preds = %1
  %22 = load i32, i32* @thumb_mode, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* @cpu_variant, align 4
  %26 = load i32, i32* @arm_ext_v1, align 4
  %27 = call i32 @ARM_CPU_HAS_FEATURE(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 (i32, ...) @as_bad(i32 %30)
  br label %32

32:                                               ; preds = %29, %24
  store i32 0, i32* @thumb_mode, align 4
  %33 = load i32, i32* @need_pass_2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = call i32 @frag_align(i32 2, i32 0, i32 0)
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* @now_seg, align 4
  %39 = call i32 @record_alignment(i32 %38, i32 1)
  br label %40

40:                                               ; preds = %37, %21
  %41 = load i32, i32* @MAP_ARM, align 4
  %42 = call i32 @mapping_state(i32 %41)
  br label %47

43:                                               ; preds = %1
  %44 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (i32, ...) @as_bad(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %40, %18
  ret void
}

declare dso_local i32 @ARM_CPU_HAS_FEATURE(i32, i32) #1

declare dso_local i32 @as_bad(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @record_alignment(i32, i32) #1

declare dso_local i32 @mapping_state(i32) #1

declare dso_local i32 @frag_align(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
