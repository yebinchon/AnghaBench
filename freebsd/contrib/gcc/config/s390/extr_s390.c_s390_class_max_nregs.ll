; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_class_max_nregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_class_max_nregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODE_COMPLEX_FLOAT = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_class_max_nregs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %32 [
    i32 128, label %7
    i32 129, label %26
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @GET_MODE_CLASS(i32 %8)
  %10 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GET_MODE_SIZE(i32 %13)
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 8
  %17 = sub nsw i32 %16, 1
  %18 = sdiv i32 %17, 8
  %19 = mul nsw i32 2, %18
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %7
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @GET_MODE_SIZE(i32 %21)
  %23 = add nsw i32 %22, 8
  %24 = sub nsw i32 %23, 1
  %25 = sdiv i32 %24, 8
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @GET_MODE_SIZE(i32 %27)
  %29 = add nsw i32 %28, 4
  %30 = sub nsw i32 %29, 1
  %31 = sdiv i32 %30, 4
  store i32 %31, i32* %3, align 4
  br label %41

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @GET_MODE_SIZE(i32 %34)
  %36 = load i32, i32* @UNITS_PER_WORD, align 4
  %37 = add nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @UNITS_PER_WORD, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %33, %26, %20, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
