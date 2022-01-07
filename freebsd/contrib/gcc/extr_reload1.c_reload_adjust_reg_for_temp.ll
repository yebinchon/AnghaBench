; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reload_adjust_reg_for_temp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_reload_adjust_reg_for_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_class_contents = common dso_local global i32* null, align 8
@hard_regno_nregs = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32, i32)* @reload_adjust_reg_for_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reload_adjust_reg_for_temp(i64* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i64*, i64** %6, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %69, %4
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %14
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @REGNO(i64 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32*, i32** @reg_class_contents, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @TEST_HARD_REG_BIT(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  br label %69

29:                                               ; preds = %17
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @GET_MODE(i64 %30)
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @HARD_REGNO_MODE_OK(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %69

41:                                               ; preds = %35
  %42 = load i64**, i64*** @hard_regno_nregs, align 8
  %43 = load i32, i32* %11, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64*, i64** %42, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64**, i64*** @hard_regno_nregs, align 8
  %52 = load i32, i32* %11, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64*, i64** %51, i64 %53
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @GET_MODE(i64 %56)
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %50, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  br label %69

62:                                               ; preds = %41
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i64 @reload_adjust_reg_for_mode(i64 %63, i32 %64)
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %62, %29
  %67 = load i64, i64* %10, align 8
  %68 = load i64*, i64** %6, align 8
  store i64 %67, i64* %68, align 8
  store i32 1, i32* %5, align 4
  br label %72

69:                                               ; preds = %61, %40, %28
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %10, align 8
  store i64 0, i64* %7, align 8
  br label %14

71:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @HARD_REGNO_MODE_OK(i32, i32) #1

declare dso_local i64 @reload_adjust_reg_for_mode(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
