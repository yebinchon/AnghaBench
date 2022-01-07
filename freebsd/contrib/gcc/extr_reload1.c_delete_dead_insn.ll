; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_dead_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_dead_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@REG_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @delete_dead_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_dead_insn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @prev_real_insn(i64 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @PATTERN(i64 %10)
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @SET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @PATTERN(i64 %16)
  %18 = call i64 @SET_DEST(i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @REG_P(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %15
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @PATTERN(i64 %24)
  %26 = call i64 @reg_mentioned_p(i64 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i64, i64* %2, align 8
  %30 = load i32, i32* @REG_DEAD, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @REGNO(i64 %31)
  %33 = call i64 @find_regno_note(i64 %29, i32 %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @PATTERN(i64 %36)
  %38 = call i32 @SET_SRC(i32 %37)
  %39 = call i32 @side_effects_p(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i64, i64* %3, align 8
  call void @delete_dead_insn(i64 %42)
  br label %43

43:                                               ; preds = %41, %35, %28, %22, %15, %9, %1
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @SET_INSN_DELETED(i64 %44)
  ret void
}

declare dso_local i64 @prev_real_insn(i64) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @SET_DEST(i32) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @reg_mentioned_p(i64, i32) #1

declare dso_local i64 @find_regno_note(i64, i32, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @side_effects_p(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @SET_INSN_DELETED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
