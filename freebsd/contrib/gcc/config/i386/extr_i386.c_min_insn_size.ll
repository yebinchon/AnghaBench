; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_min_insn_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_min_insn_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNSPEC_VOLATILE = common dso_local global i64 0, align 8
@UNSPECV_ALIGN = common dso_local global i64 0, align 8
@JUMP_INSN = common dso_local global i64 0, align 8
@ADDR_VEC = common dso_local global i64 0, align 8
@ADDR_DIFF_VEC = common dso_local global i64 0, align 8
@CALL_INSN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @min_insn_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @min_insn_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @INSN_P(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @active_insn_p(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %88

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @PATTERN(i32 %14)
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @UNSPEC_VOLATILE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @PATTERN(i32 %20)
  %22 = call i64 @XINT(i32 %21, i32 1)
  %23 = load i64, i64* @UNSPECV_ALIGN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %88

26:                                               ; preds = %19, %13
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @JUMP_INSN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %26
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @PATTERN(i32 %32)
  %34 = call i64 @GET_CODE(i32 %33)
  %35 = load i64, i64* @ADDR_VEC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @PATTERN(i32 %38)
  %40 = call i64 @GET_CODE(i32 %39)
  %41 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %31
  store i32 0, i32* %2, align 4
  br label %88

44:                                               ; preds = %37, %26
  %45 = load i32, i32* %3, align 4
  %46 = call i64 @GET_CODE(i32 %45)
  %47 = load i64, i64* @CALL_INSN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @PATTERN(i32 %50)
  %52 = call i64 @symbolic_reference_mentioned_p(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @SIBLING_CALL_P(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i32 5, i32* %2, align 4
  br label %88

59:                                               ; preds = %54, %49, %44
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @get_attr_length(i32 %60)
  %62 = icmp sle i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %88

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = call i64 @GET_CODE(i32 %65)
  %67 = load i64, i64* @JUMP_INSN, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @get_attr_length_address(i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 4
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @PATTERN(i32 %75)
  %77 = call i64 @symbolic_reference_mentioned_p(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 4, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %74, %69
  br label %81

81:                                               ; preds = %80, %64
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 1, %85
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %81
  store i32 2, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %84, %63, %58, %43, %25, %12
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @INSN_P(i32) #1

declare dso_local i32 @active_insn_p(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @XINT(i32, i32) #1

declare dso_local i64 @symbolic_reference_mentioned_p(i32) #1

declare dso_local i32 @SIBLING_CALL_P(i32) #1

declare dso_local i32 @get_attr_length(i32) #1

declare dso_local i32 @get_attr_length_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
