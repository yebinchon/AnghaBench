; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_reload_adjust_reg_for_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_reload_adjust_reg_for_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reload_adjust_reg_for_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @GET_MODE(i32 %7)
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp eq i64 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %3, align 4
  br label %47

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @REGNO(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load i64**, i64*** @hard_regno_nregs, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64*, i64** %20, i64 %22
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @GET_MODE(i32 %25)
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i64**, i64*** @hard_regno_nregs, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64*, i64** %30, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = sub nsw i32 %29, %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %19, %14
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @gen_rtx_REG(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
