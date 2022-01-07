; ModuleID = '/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_postfix_to_mult.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/dd/extr_args.c_postfix_to_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @postfix_to_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @postfix_to_mult(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  store i32 0, i32* %3, align 4
  %4 = load i8, i8* %2, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %13 [
    i32 66, label %6
    i32 98, label %6
    i32 75, label %7
    i32 107, label %7
    i32 77, label %8
    i32 109, label %8
    i32 71, label %9
    i32 103, label %9
    i32 84, label %10
    i32 116, label %10
    i32 80, label %11
    i32 112, label %11
    i32 87, label %12
    i32 119, label %12
  ]

6:                                                ; preds = %1, %1
  store i32 512, i32* %3, align 4
  br label %13

7:                                                ; preds = %1, %1
  store i32 1024, i32* %3, align 4
  br label %13

8:                                                ; preds = %1, %1
  store i32 1048576, i32* %3, align 4
  br label %13

9:                                                ; preds = %1, %1
  store i32 1073741824, i32* %3, align 4
  br label %13

10:                                               ; preds = %1, %1
  store i32 undef, i32* %3, align 4
  br label %13

11:                                               ; preds = %1, %1
  store i32 undef, i32* %3, align 4
  br label %13

12:                                               ; preds = %1, %1
  store i32 4, i32* %3, align 4
  br label %13

13:                                               ; preds = %1, %12, %11, %10, %9, %8, %7, %6
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
