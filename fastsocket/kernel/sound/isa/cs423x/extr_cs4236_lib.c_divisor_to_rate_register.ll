; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_divisor_to_rate_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/cs423x/extr_cs4236_lib.c_divisor_to_rate_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @divisor_to_rate_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @divisor_to_rate_register(i32 %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %12 [
    i32 353, label %5
    i32 529, label %6
    i32 617, label %7
    i32 1058, label %8
    i32 1764, label %9
    i32 2117, label %10
    i32 2558, label %11
  ]

5:                                                ; preds = %1
  store i8 1, i8* %2, align 1
  br label %23

6:                                                ; preds = %1
  store i8 2, i8* %2, align 1
  br label %23

7:                                                ; preds = %1
  store i8 3, i8* %2, align 1
  br label %23

8:                                                ; preds = %1
  store i8 4, i8* %2, align 1
  br label %23

9:                                                ; preds = %1
  store i8 5, i8* %2, align 1
  br label %23

10:                                               ; preds = %1
  store i8 6, i8* %2, align 1
  br label %23

11:                                               ; preds = %1
  store i8 7, i8* %2, align 1
  br label %23

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp ult i32 %13, 21
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp ugt i32 %16, 192
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12
  %19 = call i32 (...) @snd_BUG()
  store i8 -64, i8* %2, align 1
  br label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %2, align 1
  br label %23

23:                                               ; preds = %20, %18, %11, %10, %9, %8, %7, %6, %5
  %24 = load i8, i8* %2, align 1
  ret i8 %24
}

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
