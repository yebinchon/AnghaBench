; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_write_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_write_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ieee_number_repeat_start_enum = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_int(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sle i32 %7, 127
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @OUT(i32 %10)
  br label %53

12:                                               ; preds = %6, %1
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, -16777216
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 4, i32* %3, align 4
  br label %30

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 16711680
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 3, i32* %3, align 4
  br label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 65280
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 2, i32* %3, align 4
  br label %28

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %21
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i64, i64* @ieee_number_repeat_start_enum, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %32, %33
  %35 = call i32 @OUT(i32 %34)
  %36 = load i32, i32* %3, align 4
  switch i32 %36, label %52 [
    i32 4, label %37
    i32 3, label %41
    i32 2, label %45
    i32 1, label %49
  ]

37:                                               ; preds = %30
  %38 = load i32, i32* %2, align 4
  %39 = ashr i32 %38, 24
  %40 = call i32 @OUT(i32 %39)
  br label %41

41:                                               ; preds = %30, %37
  %42 = load i32, i32* %2, align 4
  %43 = ashr i32 %42, 16
  %44 = call i32 @OUT(i32 %43)
  br label %45

45:                                               ; preds = %30, %41
  %46 = load i32, i32* %2, align 4
  %47 = ashr i32 %46, 8
  %48 = call i32 @OUT(i32 %47)
  br label %49

49:                                               ; preds = %30, %45
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @OUT(i32 %50)
  br label %52

52:                                               ; preds = %49, %30
  br label %53

53:                                               ; preds = %52, %9
  ret void
}

declare dso_local i32 @OUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
