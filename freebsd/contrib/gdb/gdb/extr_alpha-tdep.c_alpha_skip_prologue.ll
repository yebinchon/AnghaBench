; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_skip_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_alpha-tdep.c_alpha_skip_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @alpha_skip_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alpha_skip_prologue(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [4 x i8], align 1
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %10 = call i64 @target_read_memory(i64 %8, i8* %9, i32 4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  store i64 %13, i64* %2, align 8
  br label %82

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @alpha_after_prologue(i64 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @max(i64 %20, i64 %21)
  store i64 %22, i64* %2, align 8
  br label %82

23:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %74, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 100
  br i1 %26, label %27, label %77

27:                                               ; preds = %24
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = call i64 @alpha_read_insn(i64 %31)
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = and i64 %33, 4294901760
  %35 = icmp eq i64 %34, 666566656
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %74

37:                                               ; preds = %27
  %38 = load i64, i64* %4, align 8
  %39 = and i64 %38, 4294901760
  %40 = icmp eq i64 %39, 599588864
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %74

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  %44 = and i64 %43, 4294901760
  %45 = icmp eq i64 %44, 601751552
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %74

47:                                               ; preds = %42
  %48 = load i64, i64* %4, align 8
  %49 = and i64 %48, 4292878335
  %50 = icmp eq i64 %49, 1136661822
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %74

52:                                               ; preds = %47
  %53 = load i64, i64* %4, align 8
  %54 = and i64 %53, 4229890048
  %55 = icmp eq i64 %54, 3021864960
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %4, align 8
  %58 = and i64 %57, 4229890048
  %59 = icmp eq i64 %58, 2619211776
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %52
  %61 = load i64, i64* %4, align 8
  %62 = and i64 %61, 65011712
  %63 = icmp ne i64 %62, 65011712
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %74

65:                                               ; preds = %60, %56
  %66 = load i64, i64* %4, align 8
  %67 = icmp eq i64 %66, 1205732367
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %74

69:                                               ; preds = %65
  %70 = load i64, i64* %4, align 8
  %71 = icmp eq i64 %70, 1207829519
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %74

73:                                               ; preds = %69
  br label %77

74:                                               ; preds = %72, %68, %64, %51, %46, %41, %36
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 4
  store i32 %76, i32* %5, align 4
  br label %24

77:                                               ; preds = %73, %24
  %78 = load i64, i64* %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  store i64 %81, i64* %2, align 8
  br label %82

82:                                               ; preds = %77, %19, %12
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

declare dso_local i64 @target_read_memory(i64, i8*, i32) #1

declare dso_local i64 @alpha_after_prologue(i64) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @alpha_read_insn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
