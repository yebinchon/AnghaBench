; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_function_arg_padding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_function_arg_padding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@INTEGER_CST = common dso_local global i64 0, align 8
@downward = common dso_local global i32 0, align 4
@upward = common dso_local global i32 0, align 4
@AGGREGATES_PAD_UPWARD_ALWAYS = common dso_local global i64 0, align 8
@AGGREGATE_PADDING_FIXED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @function_arg_padding(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BLKmode, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @TYPE_SIZE(i64 %17)
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @INTEGER_CST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @int_size_in_bytes(i64 %23)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %22, %16, %13
  br label %29

26:                                               ; preds = %9
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @GET_MODE_SIZE(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %32, %29
  %39 = load i32, i32* @downward, align 4
  store i32 %39, i32* %3, align 4
  br label %43

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* @upward, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_SIZE(i64) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
