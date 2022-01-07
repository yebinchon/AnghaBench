; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_size_inc_line_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_size_inc_line_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@MAX_SPECIAL_ADDR_DELTA = common dso_local global i32 0, align 4
@DWARF2_LINE_BASE = common dso_local global i32 0, align 4
@DWARF2_LINE_RANGE = common dso_local global i32 0, align 4
@DWARF2_LINE_OPCODE_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @size_inc_line_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @size_inc_line_addr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 @scale_addr_delta(i32* %5)
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @INT_MAX, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_SPECIAL_ADDR_DELTA, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  br label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @sizeof_leb128(i32 %19, i32 0)
  %21 = add nsw i32 1, %20
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 3
  store i32 %24, i32* %3, align 4
  br label %82

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DWARF2_LINE_BASE, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @DWARF2_LINE_RANGE, align 4
  %31 = icmp uge i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sizeof_leb128(i32 %33, i32 1)
  %35 = add nsw i32 1, %34
  store i32 %35, i32* %8, align 4
  store i32 0, i32* %4, align 4
  %36 = load i32, i32* @DWARF2_LINE_BASE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load i64, i64* @DWARF2_LINE_OPCODE_BASE, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MAX_SPECIAL_ADDR_DELTA, align 4
  %46 = add nsw i32 256, %45
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @DWARF2_LINE_RANGE, align 4
  %52 = mul i32 %50, %51
  %53 = add i32 %49, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ule i32 %54, 255
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %82

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @MAX_SPECIAL_ADDR_DELTA, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* @DWARF2_LINE_RANGE, align 4
  %65 = mul i32 %63, %64
  %66 = add i32 %60, %65
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ule i32 %67, 255
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %3, align 4
  br label %82

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %38
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @sizeof_leb128(i32 %74, i32 0)
  %76 = add nsw i32 1, %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %73, %69, %56, %22
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @scale_addr_delta(i32*) #1

declare dso_local i32 @sizeof_leb128(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
