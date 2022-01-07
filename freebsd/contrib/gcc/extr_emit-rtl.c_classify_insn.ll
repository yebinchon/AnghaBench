; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_classify_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_classify_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CODE_LABEL = common dso_local global i32 0, align 4
@CALL = common dso_local global i64 0, align 8
@CALL_INSN = common dso_local global i32 0, align 4
@RETURN = common dso_local global i64 0, align 8
@JUMP_INSN = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@pc_rtx = common dso_local global i64 0, align 8
@INSN = common dso_local global i32 0, align 4
@PARALLEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @classify_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @classify_insn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @LABEL_P(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @CODE_LABEL, align 4
  store i32 %9, i32* %2, align 4
  br label %109

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @CALL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @CALL_INSN, align 4
  store i32 %16, i32* %2, align 4
  br label %109

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @GET_CODE(i32 %18)
  %20 = load i64, i64* @RETURN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @JUMP_INSN, align 4
  store i32 %23, i32* %2, align 4
  br label %109

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @GET_CODE(i32 %25)
  %27 = load i64, i64* @SET, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @SET_DEST(i32 %30)
  %32 = load i64, i64* @pc_rtx, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @JUMP_INSN, align 4
  store i32 %35, i32* %2, align 4
  br label %109

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @SET_SRC(i32 %37)
  %39 = call i64 @GET_CODE(i32 %38)
  %40 = load i64, i64* @CALL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @CALL_INSN, align 4
  store i32 %43, i32* %2, align 4
  br label %109

44:                                               ; preds = %36
  %45 = load i32, i32* @INSN, align 4
  store i32 %45, i32* %2, align 4
  br label %109

46:                                               ; preds = %24
  %47 = load i32, i32* %3, align 4
  %48 = call i64 @GET_CODE(i32 %47)
  %49 = load i64, i64* @PARALLEL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %107

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @XVECLEN(i32 %52, i32 0)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %103, %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @XVECEXP(i32 %59, i32 0, i32 %60)
  %62 = call i64 @GET_CODE(i32 %61)
  %63 = load i64, i64* @CALL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @CALL_INSN, align 4
  store i32 %66, i32* %2, align 4
  br label %109

67:                                               ; preds = %58
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @XVECEXP(i32 %68, i32 0, i32 %69)
  %71 = call i64 @GET_CODE(i32 %70)
  %72 = load i64, i64* @SET, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @XVECEXP(i32 %75, i32 0, i32 %76)
  %78 = call i64 @SET_DEST(i32 %77)
  %79 = load i64, i64* @pc_rtx, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @JUMP_INSN, align 4
  store i32 %82, i32* %2, align 4
  br label %109

83:                                               ; preds = %74, %67
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @XVECEXP(i32 %84, i32 0, i32 %85)
  %87 = call i64 @GET_CODE(i32 %86)
  %88 = load i64, i64* @SET, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @XVECEXP(i32 %91, i32 0, i32 %92)
  %94 = call i32 @SET_SRC(i32 %93)
  %95 = call i64 @GET_CODE(i32 %94)
  %96 = load i64, i64* @CALL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* @CALL_INSN, align 4
  store i32 %99, i32* %2, align 4
  br label %109

100:                                              ; preds = %90, %83
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %4, align 4
  br label %55

106:                                              ; preds = %55
  br label %107

107:                                              ; preds = %106, %46
  %108 = load i32, i32* @INSN, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %98, %81, %65, %44, %42, %34, %22, %15, %8
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @LABEL_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
