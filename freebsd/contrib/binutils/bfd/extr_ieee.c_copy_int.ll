; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_copy_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_copy_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @copy_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_int() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @THIS()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp sle i32 %4, 132
  br i1 %5, label %6, label %33

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @OUT(i32 %7)
  %9 = call i32 (...) @NEXT()
  %10 = load i32, i32* %1, align 4
  switch i32 %10, label %32 [
    i32 132, label %11
    i32 131, label %16
    i32 130, label %21
    i32 129, label %26
    i32 128, label %31
  ]

11:                                               ; preds = %6
  %12 = call i32 (...) @THIS()
  store i32 %12, i32* %2, align 4
  %13 = call i32 (...) @NEXT()
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @OUT(i32 %14)
  br label %16

16:                                               ; preds = %6, %11
  %17 = call i32 (...) @THIS()
  store i32 %17, i32* %2, align 4
  %18 = call i32 (...) @NEXT()
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @OUT(i32 %19)
  br label %21

21:                                               ; preds = %6, %16
  %22 = call i32 (...) @THIS()
  store i32 %22, i32* %2, align 4
  %23 = call i32 (...) @NEXT()
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @OUT(i32 %24)
  br label %26

26:                                               ; preds = %6, %21
  %27 = call i32 (...) @THIS()
  store i32 %27, i32* %2, align 4
  %28 = call i32 (...) @NEXT()
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @OUT(i32 %29)
  br label %31

31:                                               ; preds = %6, %26
  br label %32

32:                                               ; preds = %6, %31
  br label %33

33:                                               ; preds = %32, %0
  ret void
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
