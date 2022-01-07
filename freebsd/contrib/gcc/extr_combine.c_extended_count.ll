; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_extended_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_extended_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nonzero_sign_valid = common dso_local global i64 0, align 8
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extended_count(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @nonzero_sign_valid, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @GET_MODE_BITSIZE(i32 %15)
  %17 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @GET_MODE_BITSIZE(i32 %20)
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @nonzero_bits(i32 %23, i32 %24)
  %26 = call i32 @floor_log2(i32 %25)
  %27 = sub nsw i32 %22, %26
  br label %29

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %19
  %30 = phi i32 [ %27, %19 ], [ 0, %28 ]
  br label %36

31:                                               ; preds = %11
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @num_sign_bit_copies(i32 %32, i32 %33)
  %35 = sub nsw i32 %34, 1
  br label %36

36:                                               ; preds = %31, %29
  %37 = phi i32 [ %30, %29 ], [ %35, %31 ]
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %10
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @floor_log2(i32) #1

declare dso_local i32 @nonzero_bits(i32, i32) #1

declare dso_local i32 @num_sign_bit_copies(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
