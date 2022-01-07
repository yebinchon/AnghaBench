; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @block() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %17
  %3 = call i32 (...) @THIS()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  switch i32 %4, label %17 [
    i32 225, label %5
    i32 229, label %5
    i32 249, label %6
    i32 240, label %7
    i32 241, label %9
    i32 242, label %11
    i32 248, label %13
    i32 226, label %15
  ]

5:                                                ; preds = %2, %2
  br label %18

6:                                                ; preds = %2
  br label %18

7:                                                ; preds = %2
  %8 = call i32 (...) @f0_record()
  br label %17

9:                                                ; preds = %2
  %10 = call i32 (...) @f1_record()
  br label %17

11:                                               ; preds = %2
  %12 = call i32 (...) @f2_record()
  br label %17

13:                                               ; preds = %2
  %14 = call i32 (...) @f8_record()
  br label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @e2_record()
  br label %17

17:                                               ; preds = %2, %15, %13, %11, %9, %7
  br label %2

18:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @THIS(...) #1

declare dso_local i32 @f0_record(...) #1

declare dso_local i32 @f1_record(...) #1

declare dso_local i32 @f2_record(...) #1

declare dso_local i32 @f8_record(...) #1

declare dso_local i32 @e2_record(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
