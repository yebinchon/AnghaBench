; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_nextc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_nextc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nextc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nextc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %13, %0
  %4 = call i32 (...) @next_inline()
  store i32 %4, i32* %1, align 4
  switch i32 %4, label %11 [
    i32 10, label %5
    i32 32, label %7
    i32 9, label %7
    i32 12, label %7
    i32 13, label %7
    i32 11, label %7
    i32 44, label %7
    i32 59, label %7
    i32 92, label %10
  ]

5:                                                ; preds = %3
  %6 = call i32 (...) @get_line()
  br label %12

7:                                                ; preds = %3, %3, %3, %3, %3, %3, %3
  %8 = load i32, i32* @cptr, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @cptr, align 4
  br label %12

10:                                               ; preds = %3
  store i32 37, i32* %1, align 4
  br label %11

11:                                               ; preds = %3, %10
  store i32 1, i32* %2, align 4
  br label %12

12:                                               ; preds = %11, %7, %5
  br label %13

13:                                               ; preds = %12
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %3, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @next_inline(...) #1

declare dso_local i32 @get_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
