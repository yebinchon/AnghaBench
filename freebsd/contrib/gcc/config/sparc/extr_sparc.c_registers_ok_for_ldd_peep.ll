; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_registers_ok_for_ldd_peep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_registers_ok_for_ldd_peep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8
@TARGET_V9 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registers_ok_for_ldd_peep(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @GET_CODE(i32 %6)
  %8 = load i64, i64* @REG, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @REG, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %38

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @REGNO(i32 %17)
  %19 = srem i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %38

22:                                               ; preds = %16
  %23 = load i64, i64* @TARGET_V9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @REGNO(i32 %26)
  %28 = icmp slt i32 %27, 32
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %38

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @REGNO(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @REGNO(i32 %33)
  %35 = sub nsw i32 %34, 1
  %36 = icmp eq i32 %32, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %29, %21, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
