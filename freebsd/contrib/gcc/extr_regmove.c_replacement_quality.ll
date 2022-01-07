; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_replacement_quality.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_replacement_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@regno_src_regno = common dso_local global i32* null, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @replacement_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replacement_quality(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @REG_P(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @REGNO(i32 %10)
  %12 = call i64 @REG_LIVE_LENGTH(i64 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %30

15:                                               ; preds = %9
  %16 = load i32*, i32** @regno_src_regno, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @REGNO(i32 %17)
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 3, i32* %2, align 4
  br label %30

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %30

29:                                               ; preds = %24
  store i32 2, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %23, %14, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @REG_P(i32) #1

declare dso_local i64 @REG_LIVE_LENGTH(i64) #1

declare dso_local i64 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
