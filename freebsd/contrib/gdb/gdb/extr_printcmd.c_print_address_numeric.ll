; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_address_numeric.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_print_address_numeric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@TARGET_ADDR_BIT = common dso_local global i32 0, align 4
@HOST_CHAR_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_address_numeric(i32 %0, i32 %1, %struct.ui_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.ui_file* %2, %struct.ui_file** %6, align 8
  %8 = load i32, i32* @TARGET_ADDR_BIT, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = load i32, i32* @HOST_CHAR_BIT, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @print_longest(%struct.ui_file* %22, i8 signext 120, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @print_longest(%struct.ui_file*, i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
