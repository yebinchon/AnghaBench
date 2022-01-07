; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_output_peephole2_scratches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_output_peephole2_scratches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"  HARD_REG_SET _regs_allocated;\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"  CLEAR_HARD_REG_SET (_regs_allocated);\0A\00", align 1
@MATCH_SCRATCH = common dso_local global i64 0, align 8
@MATCH_DUP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [120 x i8] c"  if ((operands[%d] = peep2_find_free_register (%d, %d, \22%s\22, %smode, &_regs_allocated)) == NULL_RTX)\0A    return NULL;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @output_peephole2_scratches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_peephole2_scratches(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %88, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @XVECLEN(i32 %13, i32 0)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %91

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @XVECEXP(i32 %17, i32 0, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @MATCH_SCRATCH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %64, %24
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @XVECLEN(i32 %31, i32 0)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %29
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @XVECEXP(i32 %35, i32 0, i32 %36)
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @MATCH_DUP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @XVECEXP(i32 %42, i32 0, i32 %43)
  %45 = call i32 @XINT(i32 %44, i32 0)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @XINT(i32 %46, i32 0)
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %41
  br label %63

52:                                               ; preds = %34
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @XVECEXP(i32 %53, i32 0, i32 %54)
  %56 = call i64 @GET_CODE(i32 %55)
  %57 = load i64, i64* @MATCH_SCRATCH, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %52
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %29

67:                                               ; preds = %29
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @XINT(i32 %68, i32 0)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i8* @XSTR(i32 %72, i32 1)
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @GET_MODE(i32 %74)
  %76 = call i8* @GET_MODE_NAME(i32 %75)
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i8* %73, i8* %76)
  br label %87

78:                                               ; preds = %16
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @GET_CODE(i32 %79)
  %81 = load i64, i64* @MATCH_DUP, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %78
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %11

91:                                               ; preds = %11
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
