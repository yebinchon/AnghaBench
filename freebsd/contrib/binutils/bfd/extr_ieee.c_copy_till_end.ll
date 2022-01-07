; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_copy_till_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_copy_till_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_till_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_till_end() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @THIS()
  store i32 %2, i32* %1, align 4
  br label %3

3:                                                ; preds = %0, %35
  br label %4

4:                                                ; preds = %7, %3
  %5 = load i32, i32* %1, align 4
  %6 = icmp sle i32 %5, 128
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @OUT(i32 %8)
  %10 = call i32 (...) @NEXT()
  %11 = call i32 (...) @THIS()
  store i32 %11, i32* %1, align 4
  br label %4

12:                                               ; preds = %4
  %13 = load i32, i32* %1, align 4
  switch i32 %13, label %34 [
    i32 132, label %14
    i32 131, label %18
    i32 130, label %22
    i32 129, label %26
  ]

14:                                               ; preds = %12
  %15 = call i32 (...) @THIS()
  %16 = call i32 @OUT(i32 %15)
  %17 = call i32 (...) @NEXT()
  br label %18

18:                                               ; preds = %12, %14
  %19 = call i32 (...) @THIS()
  %20 = call i32 @OUT(i32 %19)
  %21 = call i32 (...) @NEXT()
  br label %22

22:                                               ; preds = %12, %18
  %23 = call i32 (...) @THIS()
  %24 = call i32 @OUT(i32 %23)
  %25 = call i32 (...) @NEXT()
  br label %26

26:                                               ; preds = %12, %22
  %27 = call i32 (...) @THIS()
  %28 = call i32 @OUT(i32 %27)
  %29 = call i32 (...) @NEXT()
  %30 = call i32 (...) @THIS()
  %31 = call i32 @OUT(i32 %30)
  %32 = call i32 (...) @NEXT()
  %33 = call i32 (...) @THIS()
  store i32 %33, i32* %1, align 4
  br label %35

34:                                               ; preds = %12
  ret void

35:                                               ; preds = %26
  br label %3
}

declare dso_local i32 @THIS(...) #1

declare dso_local i32 @OUT(i32) #1

declare dso_local i32 @NEXT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
