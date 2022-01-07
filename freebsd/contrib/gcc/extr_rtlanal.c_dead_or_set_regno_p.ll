; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_dead_or_set_regno_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_dead_or_set_regno_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_DEAD = common dso_local global i32 0, align 4
@CLOBBER = common dso_local global i64 0, align 8
@COND_EXEC = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dead_or_set_regno_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @REG_DEAD, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @find_regno_note(i32 %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %93

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @CALL_P(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* @CLOBBER, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @find_regno_fusage(i32 %20, i64 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %93

26:                                               ; preds = %19, %15
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @PATTERN(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @GET_CODE(i32 %29)
  %31 = load i64, i64* @COND_EXEC, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @COND_EXEC_CODE(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @SET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @SET_DEST(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @covers_regno_p(i32 %43, i32 %44)
  store i32 %45, i32* %3, align 4
  br label %93

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @GET_CODE(i32 %47)
  %49 = load i64, i64* @PARALLEL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @XVECLEN(i32 %52, i32 0)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %87, %51
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @XVECEXP(i32 %59, i32 0, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i64 @GET_CODE(i32 %62)
  %64 = load i64, i64* @COND_EXEC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @COND_EXEC_CODE(i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @GET_CODE(i32 %70)
  %72 = load i64, i64* @SET, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = call i64 @GET_CODE(i32 %75)
  %77 = load i64, i64* @CLOBBER, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @SET_DEST(i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @covers_regno_p(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %93

86:                                               ; preds = %79, %74
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %7, align 4
  br label %55

90:                                               ; preds = %55
  br label %91

91:                                               ; preds = %90, %46
  br label %92

92:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %85, %41, %25, %14
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @find_regno_note(i32, i32, i32) #1

declare dso_local i64 @CALL_P(i32) #1

declare dso_local i64 @find_regno_fusage(i32, i64, i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @COND_EXEC_CODE(i32) #1

declare dso_local i32 @covers_regno_p(i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
