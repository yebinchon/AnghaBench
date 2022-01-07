; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_hash_scan_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_hash_scan_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_float_store = common dso_local global i64 0, align 8
@FIRST_STACK_REG = common dso_local global i64 0, align 8
@LAST_STACK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @hash_scan_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_scan_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @PATTERN(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @SET_SRC(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @SET_DEST(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MEM_P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @MEM_P(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %96

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @JUMP_P(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @set_noop_p(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20
  br label %96

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @REG_P(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @GET_MODE(i32 %34)
  %36 = call i64 @can_copy_p(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @GET_MODE(i32 %40)
  %42 = call i64 @general_operand(i32 %39, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i64 @oprs_unchanged_p(i32 %45, i32 %46, i32 1)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @insert_expr_in_table(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %44, %38, %33
  br label %96

54:                                               ; preds = %29
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @REG_P(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @GET_MODE(i32 %59)
  %61 = call i64 @can_copy_p(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @GET_MODE(i32 %65)
  %67 = call i64 @general_operand(i32 %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %63
  %70 = load i64, i64* @flag_float_store, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @GET_MODE(i32 %73)
  %75 = call i64 @FLOAT_MODE_P(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %72, %69
  %78 = load i32, i32* %2, align 4
  %79 = call i64 @INSN_CUID(i32 %78)
  %80 = add nsw i64 %79, 1
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @load_killed_in_block_p(i64 %80, i32 %81, i32 1)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @XEXP(i32 %85, i32 0)
  %87 = load i32, i32* %2, align 4
  %88 = call i64 @oprs_unchanged_p(i32 %86, i32 %87, i32 1)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %2, align 4
  %93 = call i32 @insert_expr_in_table(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %84, %77, %72, %63, %58
  br label %95

95:                                               ; preds = %94, %54
  br label %96

96:                                               ; preds = %19, %28, %95, %53
  ret void
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i64 @JUMP_P(i32) #1

declare dso_local i64 @set_noop_p(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @can_copy_p(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @general_operand(i32, i32) #1

declare dso_local i64 @oprs_unchanged_p(i32, i32, i32) #1

declare dso_local i32 @insert_expr_in_table(i32, i32) #1

declare dso_local i64 @FLOAT_MODE_P(i32) #1

declare dso_local i32 @load_killed_in_block_p(i64, i32, i32) #1

declare dso_local i64 @INSN_CUID(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
