; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_interpret_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_interpret_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @native_interpret_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_interpret_expr(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @TREE_CODE(i32 %8)
  switch i32 %9, label %30 [
    i32 130, label %10
    i32 131, label %10
    i32 133, label %10
    i32 129, label %15
    i32 132, label %20
    i32 128, label %25
  ]

10:                                               ; preds = %3, %3, %3
  %11 = load i32, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @native_interpret_int(i32 %11, i8* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  br label %32

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @native_interpret_real(i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  br label %32

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @native_interpret_complex(i32 %21, i8* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @native_interpret_vector(i32 %26, i8* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  br label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @NULL_TREE, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %25, %20, %15, %10
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @native_interpret_int(i32, i8*, i32) #1

declare dso_local i32 @native_interpret_real(i32, i8*, i32) #1

declare dso_local i32 @native_interpret_complex(i32, i8*, i32) #1

declare dso_local i32 @native_interpret_vector(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
