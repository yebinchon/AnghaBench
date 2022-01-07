; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_thumb_skip_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_thumb_skip_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @thumb_skip_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thumb_skip_prologue(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %69, %2
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 2
  %12 = load i64, i64* %4, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, 40
  %18 = icmp slt i64 %15, %17
  br label %19

19:                                               ; preds = %14, %9
  %20 = phi i1 [ false, %9 ], [ %18, %14 ]
  br i1 %20, label %21, label %72

21:                                               ; preds = %19
  %22 = load i64, i64* %5, align 8
  %23 = call zeroext i16 @read_memory_unsigned_integer(i64 %22, i32 2)
  store i16 %23, i16* %7, align 2
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 65024
  %27 = icmp eq i32 %26, 46080
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %68

31:                                               ; preds = %21
  %32 = load i16, i16* %7, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 65280
  %35 = icmp eq i32 %34, 45056
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %69

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %41
  br label %67

45:                                               ; preds = %31
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 65280
  %49 = icmp eq i32 %48, 44800
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, 2
  store i32 %52, i32* %6, align 4
  br label %66

53:                                               ; preds = %45
  %54 = load i16, i16* %7, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp eq i32 %55, 18031
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, 2
  store i32 %59, i32* %6, align 4
  br label %65

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 7
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %72

64:                                               ; preds = %60
  br label %69

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %50
  br label %67

67:                                               ; preds = %66, %44
  br label %68

68:                                               ; preds = %67, %28
  br label %69

69:                                               ; preds = %68, %64, %40
  %70 = load i64, i64* %5, align 8
  %71 = add nsw i64 %70, 2
  store i64 %71, i64* %5, align 8
  br label %9

72:                                               ; preds = %63, %19
  %73 = load i64, i64* %5, align 8
  ret i64 %73
}

declare dso_local zeroext i16 @read_memory_unsigned_integer(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
