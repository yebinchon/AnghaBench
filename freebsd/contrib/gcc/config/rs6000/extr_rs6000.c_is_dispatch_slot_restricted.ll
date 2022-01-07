; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_dispatch_slot_restricted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_dispatch_slot_restricted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rs6000_sched_groups = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i64 0, align 8
@NOTE = common dso_local global i64 0, align 8
@USE = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@rs6000_cpu = common dso_local global i32 0, align 4
@PROCESSOR_POWER5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_dispatch_slot_restricted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dispatch_slot_restricted(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @rs6000_sched_groups, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @NULL_RTX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %32, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @GET_CODE(i64 %16)
  %18 = load i64, i64* @NOTE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @PATTERN(i64 %21)
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = load i64, i64* @USE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @PATTERN(i64 %27)
  %29 = call i64 @GET_CODE(i64 %28)
  %30 = load i64, i64* @CLOBBER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20, %15, %11, %8
  store i32 0, i32* %2, align 4
  br label %50

33:                                               ; preds = %26
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @get_attr_type(i64 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %40 [
    i32 134, label %37
    i32 133, label %37
    i32 131, label %37
    i32 139, label %37
    i32 140, label %37
    i32 130, label %37
    i32 132, label %37
    i32 138, label %38
    i32 136, label %38
    i32 135, label %39
    i32 129, label %39
    i32 137, label %39
    i32 128, label %39
  ]

37:                                               ; preds = %33, %33, %33, %33, %33, %33, %33
  store i32 1, i32* %2, align 4
  br label %50

38:                                               ; preds = %33, %33
  store i32 2, i32* %2, align 4
  br label %50

39:                                               ; preds = %33, %33, %33, %33
  store i32 4, i32* %2, align 4
  br label %50

40:                                               ; preds = %33
  %41 = load i32, i32* @rs6000_cpu, align 4
  %42 = load i32, i32* @PROCESSOR_POWER5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @is_cracked_insn(i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 2, i32* %2, align 4
  br label %50

49:                                               ; preds = %44, %40
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %48, %39, %38, %37, %32, %7
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @get_attr_type(i64) #1

declare dso_local i32 @is_cracked_insn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
