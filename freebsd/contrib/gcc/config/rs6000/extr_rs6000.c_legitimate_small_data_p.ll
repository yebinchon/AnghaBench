; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_legitimate_small_data_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_legitimate_small_data_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_ABI = common dso_local global i64 0, align 8
@ABI_V4 = common dso_local global i64 0, align 8
@flag_pic = common dso_local global i32 0, align 4
@TARGET_TOC = common dso_local global i32 0, align 4
@SYMBOL_REF = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @legitimate_small_data_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legitimate_small_data_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @DEFAULT_ABI, align 8
  %6 = load i64, i64* @ABI_V4, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = load i32, i32* @flag_pic, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @TARGET_TOC, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @SYMBOL_REF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @CONST, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @small_data_operand(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %19, %11, %8, %2
  %30 = phi i1 [ false, %19 ], [ false, %11 ], [ false, %8 ], [ false, %2 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @small_data_operand(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
