; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-s390.c_init_default_arch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-s390.c_init_default_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_arch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"s390\00", align 1
@s390_arch_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"s390x\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Invalid default architecture, broken assembler.\00", align 1
@current_mode_mask = common dso_local global i32 0, align 4
@S390_OPCODE_ESA = common dso_local global i32 0, align 4
@S390_OPCODE_ZARCH = common dso_local global i32 0, align 4
@current_cpu = common dso_local global i32 0, align 4
@S390_OPCODE_G5 = common dso_local global i32 0, align 4
@S390_OPCODE_Z900 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_default_arch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_default_arch() #0 {
  %1 = load i32, i32* @default_arch, align 4
  %2 = call i64 @strcmp(i32 %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @s390_arch_size, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 32, i32* @s390_arch_size, align 4
  br label %8

8:                                                ; preds = %7, %4
  br label %21

9:                                                ; preds = %0
  %10 = load i32, i32* @default_arch, align 4
  %11 = call i64 @strcmp(i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, i32* @s390_arch_size, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 64, i32* @s390_arch_size, align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %20

18:                                               ; preds = %9
  %19 = call i32 @as_fatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %17
  br label %21

21:                                               ; preds = %20, %8
  %22 = load i32, i32* @current_mode_mask, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* @s390_arch_size, align 4
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @S390_OPCODE_ESA, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* @current_mode_mask, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @S390_OPCODE_ZARCH, align 4
  %32 = shl i32 1, %31
  store i32 %32, i32* @current_mode_mask, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* @current_cpu, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* @current_mode_mask, align 4
  %39 = load i32, i32* @S390_OPCODE_ESA, align 4
  %40 = shl i32 1, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @S390_OPCODE_G5, align 4
  store i32 %43, i32* @current_cpu, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @S390_OPCODE_Z900, align 4
  store i32 %45, i32* @current_cpu, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %34
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @as_fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
