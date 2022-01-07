; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_address_reloads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_delete_address_reloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @delete_address_reloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_address_reloads(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @single_set(i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @SET_DEST(i64 %16)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i64 @MEM_P(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call i64 @XEXP(i64 %23, i32 0)
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @delete_address_reloads_1(i64 %22, i64 %24, i64 %25)
  br label %27

27:                                               ; preds = %21, %15
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @PREV_INSN(i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @NEXT_INSN(i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %28
  br label %115

39:                                               ; preds = %35
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @single_set(i64 %40)
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @single_set(i64 %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @SET_SRC(i64 %50)
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @PLUS, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %75, label %55

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @SET_SRC(i64 %56)
  %58 = call i64 @GET_CODE(i64 %57)
  %59 = load i64, i64* @PLUS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %75, label %61

61:                                               ; preds = %55
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @SET_SRC(i64 %62)
  %64 = call i64 @XEXP(i64 %63, i32 1)
  %65 = call i64 @GET_CODE(i64 %64)
  %66 = load i64, i64* @CONST_INT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load i64, i64* %6, align 8
  %70 = call i64 @SET_SRC(i64 %69)
  %71 = call i64 @XEXP(i64 %70, i32 1)
  %72 = call i64 @GET_CODE(i64 %71)
  %73 = load i64, i64* @CONST_INT, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %61, %55, %49, %46, %39
  br label %115

76:                                               ; preds = %68
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @SET_DEST(i64 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @SET_DEST(i64 %80)
  %82 = call i32 @rtx_equal_p(i64 %79, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %76
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %5, align 8
  %87 = call i64 @SET_SRC(i64 %86)
  %88 = call i64 @XEXP(i64 %87, i32 0)
  %89 = call i32 @rtx_equal_p(i64 %85, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %6, align 8
  %94 = call i64 @SET_SRC(i64 %93)
  %95 = call i64 @XEXP(i64 %94, i32 0)
  %96 = call i32 @rtx_equal_p(i64 %92, i64 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load i64, i64* %5, align 8
  %100 = call i64 @SET_SRC(i64 %99)
  %101 = call i64 @XEXP(i64 %100, i32 1)
  %102 = call i32 @INTVAL(i64 %101)
  %103 = load i64, i64* %6, align 8
  %104 = call i64 @SET_SRC(i64 %103)
  %105 = call i64 @XEXP(i64 %104, i32 1)
  %106 = call i32 @INTVAL(i64 %105)
  %107 = sub nsw i32 0, %106
  %108 = icmp ne i32 %102, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %98, %91, %84, %76
  br label %115

110:                                              ; preds = %98
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @delete_related_insns(i64 %111)
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @delete_related_insns(i64 %113)
  br label %115

115:                                              ; preds = %110, %109, %75, %38
  ret void
}

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @delete_address_reloads_1(i64, i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @delete_related_insns(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
