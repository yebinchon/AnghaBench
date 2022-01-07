; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_clone_constructors_and_destructors.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_class.c_clone_constructors_and_destructors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @clone_constructors_and_destructors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_constructors_and_destructors(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i32 @CLASSTYPE_METHOD_VEC(i64 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = call i64 @CLASSTYPE_CONSTRUCTORS(i64 %9)
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %18, %8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @OVL_CURRENT(i64 %15)
  %17 = call i32 @clone_function_decl(i32 %16, i32 1)
  br label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @OVL_NEXT(i64 %19)
  store i64 %20, i64* %3, align 8
  br label %11

21:                                               ; preds = %11
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @CLASSTYPE_DESTRUCTORS(i64 %22)
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %31, %21
  %25 = load i64, i64* %3, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @OVL_CURRENT(i64 %28)
  %30 = call i32 @clone_function_decl(i32 %29, i32 1)
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @OVL_NEXT(i64 %32)
  store i64 %33, i64* %3, align 8
  br label %24

34:                                               ; preds = %7, %24
  ret void
}

declare dso_local i32 @CLASSTYPE_METHOD_VEC(i64) #1

declare dso_local i64 @CLASSTYPE_CONSTRUCTORS(i64) #1

declare dso_local i32 @clone_function_decl(i32, i32) #1

declare dso_local i32 @OVL_CURRENT(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

declare dso_local i64 @CLASSTYPE_DESTRUCTORS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
