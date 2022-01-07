; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondF.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_cond.c_CondF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOK_ERROR = common dso_local global i64 0, align 8
@TOK_AND = common dso_local global i64 0, align 8
@TOK_TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @CondF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CondF(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @CondT(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @TOK_ERROR, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @CondToken(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @TOK_AND, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @TOK_TRUE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @CondF(i32 %21)
  store i64 %22, i64* %3, align 8
  br label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i64 @CondF(i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  br label %30

27:                                               ; preds = %10
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @CondPushBack(i64 %28)
  br label %30

30:                                               ; preds = %27, %26
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i64 @CondT(i32) #1

declare dso_local i64 @CondToken(i32) #1

declare dso_local i32 @CondPushBack(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
