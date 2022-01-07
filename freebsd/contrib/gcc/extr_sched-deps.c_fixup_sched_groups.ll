; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_fixup_sched_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-deps.c_fixup_sched_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_DEP_ANTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fixup_sched_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_sched_groups(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i64 @LOG_LINKS(i64 %6)
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %41, %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load i64, i64* %2, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %22, %11
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @prev_nonnote_insn(i64 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @XEXP(i64 %16, i32 0)
  %18 = load i64, i64* %5, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %40

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @SCHED_GROUP_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %13, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @XEXP(i64 %28, i32 0)
  %30 = call i32 @sched_insns_conditions_mutex_p(i64 %27, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @XEXP(i64 %34, i32 0)
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @REG_NOTE_KIND(i64 %36)
  %38 = call i32 @add_dependence(i64 %33, i64 %35, i32 %37)
  br label %39

39:                                               ; preds = %32, %26
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @XEXP(i64 %42, i32 1)
  store i64 %43, i64* %3, align 8
  br label %8

44:                                               ; preds = %8
  %45 = load i64, i64* %2, align 8
  %46 = call i32 @delete_all_dependences(i64 %45)
  %47 = load i64, i64* %2, align 8
  %48 = call i64 @prev_nonnote_insn(i64 %47)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %2, align 8
  %50 = call i64 @BLOCK_FOR_INSN(i64 %49)
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @BLOCK_FOR_INSN(i64 %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load i64, i64* %2, align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @sched_insns_conditions_mutex_p(i64 %55, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %2, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i32, i32* @REG_DEP_ANTI, align 4
  %63 = call i32 @add_dependence(i64 %60, i64 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %54, %44
  ret void
}

declare dso_local i64 @LOG_LINKS(i64) #1

declare dso_local i64 @prev_nonnote_insn(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SCHED_GROUP_P(i64) #1

declare dso_local i32 @sched_insns_conditions_mutex_p(i64, i64) #1

declare dso_local i32 @add_dependence(i64, i64, i32) #1

declare dso_local i32 @REG_NOTE_KIND(i64) #1

declare dso_local i32 @delete_all_dependences(i64) #1

declare dso_local i64 @BLOCK_FOR_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
