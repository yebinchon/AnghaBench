; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_registers_ok_for_quad_peep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_registers_ok_for_quad_peep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @registers_ok_for_quad_peep(i32 %0, i32 %1) #0 {
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
  br label %35

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @REGNO(i32 %17)
  %19 = call i32 @FP_REGNO_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @REGNO(i32 %22)
  %24 = call i32 @FP_REGNO_P(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %16
  store i32 0, i32* %3, align 4
  br label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @REGNO(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @REGNO(i32 %30)
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %29, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %26, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @FP_REGNO_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
