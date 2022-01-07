; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_cmode_for_logic_imm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_cmode_for_logic_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"immediate value out of range\00", align 1
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @neon_cmode_for_logic_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neon_cmode_for_logic_imm(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 8
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  store i32 16, i32* %7, align 4
  br label %15

15:                                               ; preds = %10, %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sge i32 %16, 32
  br i1 %17, label %18, label %66

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 %24, i32* %25, align 4
  store i32 1, i32* %4, align 4
  br label %89

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 65280
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = lshr i32 %32, 8
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  store i32 3, i32* %4, align 4
  br label %89

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 16711680
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = lshr i32 %41, 16
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  store i32 5, i32* %4, align 4
  br label %89

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, -16777216
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = lshr i32 %50, 24
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  store i32 7, i32* %4, align 4
  br label %89

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 65535
  %59 = load i32, i32* %5, align 4
  %60 = lshr i32 %59, 16
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %85

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, 65535
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %15
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load i32*, i32** %6, align 8
  store i32 %72, i32* %73, align 4
  store i32 9, i32* %4, align 4
  br label %89

74:                                               ; preds = %66
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 65280
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = lshr i32 %80, 8
  %82 = load i32*, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  store i32 11, i32* %4, align 4
  br label %89

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %62
  %86 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %87 = call i32 @first_error(i32 %86)
  %88 = load i32, i32* @FAIL, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %85, %79, %71, %49, %40, %31, %23
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @first_error(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
