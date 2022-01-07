; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_set_initial_label_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_set_initial_label_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@offsets_known_at = common dso_local global i32 0, align 4
@num_labels = common dso_local global i32 0, align 4
@forced_labels = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@set_initial_eh_label_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_initial_label_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_initial_label_offsets() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @offsets_known_at, align 4
  %3 = load i32, i32* @num_labels, align 4
  %4 = call i32 @memset(i32 %2, i32 0, i32 %3)
  %5 = load i64, i64* @forced_labels, align 8
  store i64 %5, i64* %1, align 8
  br label %6

6:                                                ; preds = %19, %0
  %7 = load i64, i64* %1, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load i64, i64* %1, align 8
  %11 = call i64 @XEXP(i64 %10, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i64, i64* %1, align 8
  %15 = call i64 @XEXP(i64 %14, i32 0)
  %16 = load i32, i32* @NULL_RTX, align 4
  %17 = call i32 @set_label_offsets(i64 %15, i32 %16, i32 1)
  br label %18

18:                                               ; preds = %13, %9
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %1, align 8
  %21 = call i64 @XEXP(i64 %20, i32 1)
  store i64 %21, i64* %1, align 8
  br label %6

22:                                               ; preds = %6
  %23 = load i32, i32* @set_initial_eh_label_offset, align 4
  %24 = call i32 @for_each_eh_label(i32 %23)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @set_label_offsets(i64, i32, i32) #1

declare dso_local i32 @for_each_eh_label(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
