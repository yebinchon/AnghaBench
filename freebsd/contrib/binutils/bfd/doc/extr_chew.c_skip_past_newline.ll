; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_skip_past_newline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_skip_past_newline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ptr = common dso_local global i32 0, align 4
@idx = common dso_local global i32 0, align 4
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @skip_past_newline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_past_newline() #0 {
  br label %1

1:                                                ; preds = %15, %0
  %2 = load i32, i32* @ptr, align 4
  %3 = load i32, i32* @idx, align 4
  %4 = call signext i8 @at(i32 %2, i32 %3)
  %5 = sext i8 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @ptr, align 4
  %9 = load i32, i32* @idx, align 4
  %10 = call signext i8 @at(i32 %8, i32 %9)
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 10
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = load i32, i32* @idx, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @idx, align 4
  br label %1

18:                                               ; preds = %13
  %19 = load i32, i32* @idx, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @idx, align 4
  %21 = load i32, i32* @pc, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @pc, align 4
  ret void
}

declare dso_local signext i8 @at(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
