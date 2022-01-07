; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_pad_groups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_pad_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@TImode = common dso_local global i64 0, align 8
@rs6000_sched_insert_nops = common dso_local global i64 0, align 8
@sched_finish_pad_groups = common dso_local global i64 0, align 8
@current_group = common dso_local global i32 0, align 4
@previous_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i64)* @pad_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pad_groups(i32* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %15, align 4
  %16 = call i32 (...) @rs6000_issue_rate()
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @get_next_active_insn(i64 %18, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @get_next_active_insn(i64 %21, i64 %22)
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %92, %4
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @NULL_RTX, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %97

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @rs6000_variable_issue(i32* %29, i32 %30, i64 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @NULL_RTX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @GET_MODE(i64 %38)
  %40 = load i64, i64* @TImode, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %37, %28
  %43 = phi i1 [ true, %28 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %14, align 4
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @NULL_RTX, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %97

49:                                               ; preds = %42
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %88

55:                                               ; preds = %52
  %56 = load i64, i64* @rs6000_sched_insert_nops, align 8
  %57 = load i64, i64* @sched_finish_pad_groups, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* @current_group, align 4
  %62 = call i32 @insn_terminates_group_p(i64 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %59
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* @previous_group, align 4
  %67 = call i32 @insn_terminates_group_p(i64 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %88, label %69

69:                                               ; preds = %64
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @is_branch_slot_insn(i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %73, %69
  br label %77

77:                                               ; preds = %80, %76
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = call i64 (...) @gen_nop()
  store i64 %81, i64* %11, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @emit_insn_before(i64 %82, i64 %83)
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %13, align 4
  br label %77

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %64, %59, %55, %52
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %88, %49
  %93 = load i64, i64* %10, align 8
  store i64 %93, i64* %9, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @get_next_active_insn(i64 %94, i64 %95)
  store i64 %96, i64* %10, align 8
  br label %24

97:                                               ; preds = %48, %24
  %98 = load i32, i32* %15, align 4
  ret i32 %98
}

declare dso_local i32 @rs6000_issue_rate(...) #1

declare dso_local i64 @get_next_active_insn(i64, i64) #1

declare dso_local i32 @rs6000_variable_issue(i32*, i32, i64, i32) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @insn_terminates_group_p(i64, i32) #1

declare dso_local i32 @is_branch_slot_insn(i64) #1

declare dso_local i64 @gen_nop(...) #1

declare dso_local i32 @emit_insn_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
