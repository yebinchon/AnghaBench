; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_get_stuff_in_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_get_stuff_in_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tos = common dso_local global i32 0, align 4
@ptr = common dso_local global i32 0, align 4
@idx = common dso_local global i32 0, align 4
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @get_stuff_in_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_stuff_in_command() #0 {
  %1 = load i32, i32* @tos, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @tos, align 4
  %3 = call i32 (...) @check_range()
  %4 = load i32, i32* @tos, align 4
  %5 = call i32 @init_string(i32 %4)
  br label %6

6:                                                ; preds = %17, %0
  %7 = load i32, i32* @ptr, align 4
  %8 = load i32, i32* @idx, align 4
  %9 = call i64 @at(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %6
  %12 = load i32, i32* @ptr, align 4
  %13 = load i32, i32* @idx, align 4
  %14 = call i64 @iscommand(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %22

17:                                               ; preds = %11
  %18 = load i32, i32* @ptr, align 4
  %19 = load i32, i32* @idx, align 4
  %20 = load i32, i32* @tos, align 4
  %21 = call i32 @copy_past_newline(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* @idx, align 4
  br label %6

22:                                               ; preds = %16, %6
  %23 = load i32, i32* @pc, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @pc, align 4
  ret void
}

declare dso_local i32 @check_range(...) #1

declare dso_local i32 @init_string(i32) #1

declare dso_local i64 @at(i32, i32) #1

declare dso_local i64 @iscommand(i32, i32) #1

declare dso_local i32 @copy_past_newline(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
