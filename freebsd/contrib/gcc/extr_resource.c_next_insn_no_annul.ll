; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_resource.c_next_insn_no_annul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_resource.c_next_insn_no_annul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN = common dso_local global i32 0, align 4
@JUMP_INSN = common dso_local global i32 0, align 4
@CALL_INSN = common dso_local global i32 0, align 4
@SEQUENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @next_insn_no_annul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @next_insn_no_annul(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %73

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @INSN_P(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @INSN_ANNULLED_BRANCH_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = call i64 @PREV_INSN(i64 %16)
  %18 = call i64 @NEXT_INSN(i64 %17)
  %19 = load i64, i64* %2, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %15
  %22 = load i64, i64* %2, align 8
  %23 = call i64 @NEXT_INSN(i64 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @GET_CODE(i64 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %45, %21
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @INSN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @JUMP_INSN, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CALL_INSN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31, %27
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @INSN_FROM_TARGET_P(i64 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ false, %35 ], [ %42, %39 ]
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  %46 = load i64, i64* %3, align 8
  store i64 %46, i64* %2, align 8
  %47 = load i64, i64* %2, align 8
  %48 = call i64 @NEXT_INSN(i64 %47)
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @GET_CODE(i64 %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %27

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %15, %11, %7
  %54 = load i64, i64* %2, align 8
  %55 = call i64 @NEXT_INSN(i64 %54)
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load i64, i64* %2, align 8
  %60 = call i64 @NONJUMP_INSN_P(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i64, i64* %2, align 8
  %64 = call i64 @PATTERN(i64 %63)
  %65 = call i64 @GET_CODE(i64 %64)
  %66 = load i64, i64* @SEQUENCE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i64, i64* %2, align 8
  %70 = call i64 @PATTERN(i64 %69)
  %71 = call i64 @XVECEXP(i64 %70, i32 0, i32 0)
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %68, %62, %58, %53
  br label %73

73:                                               ; preds = %72, %1
  %74 = load i64, i64* %2, align 8
  ret i64 %74
}

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @INSN_ANNULLED_BRANCH_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @INSN_FROM_TARGET_P(i64) #1

declare dso_local i64 @NONJUMP_INSN_P(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
