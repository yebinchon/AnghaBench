; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_oprs_not_set_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_oprs_not_set_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reg_set_bitmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @oprs_not_set_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oprs_not_set_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %111

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @GET_CODE(i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %40 [
    i32 130, label %17
    i32 137, label %17
    i32 136, label %17
    i32 134, label %17
    i32 135, label %17
    i32 133, label %17
    i32 128, label %17
    i32 132, label %17
    i32 138, label %17
    i32 139, label %17
    i32 131, label %18
    i32 129, label %32
  ]

17:                                               ; preds = %13, %13, %13, %13, %13, %13, %13, %13, %13, %13
  store i32 1, i32* %3, align 4
  br label %111

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @BLOCK_FOR_INSN(i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @INSN_CUID(i64 %21)
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @load_killed_in_block_p(i32 %20, i32 %22, i64 %23, i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %111

27:                                               ; preds = %18
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @XEXP(i64 %28, i32 0)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @oprs_not_set_p(i64 %29, i64 %30)
  store i32 %31, i32* %3, align 4
  br label %111

32:                                               ; preds = %13
  %33 = load i32, i32* @reg_set_bitmap, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @REGNO(i64 %34)
  %36 = call i32 @REGNO_REG_SET_P(i32 %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  br label %111

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @GET_RTX_LENGTH(i32 %42)
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i8* @GET_RTX_FORMAT(i32 %45)
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %107, %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %110

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 101
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i64, i64* %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @XEXP(i64 %62, i32 %63)
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @oprs_not_set_p(i64 %64, i64 %65)
  store i32 %66, i32* %3, align 4
  br label %111

67:                                               ; preds = %58
  %68 = load i64, i64* %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @XEXP(i64 %68, i32 %69)
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @oprs_not_set_p(i64 %70, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  store i32 0, i32* %3, align 4
  br label %111

75:                                               ; preds = %67
  br label %106

76:                                               ; preds = %50
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 69
  br i1 %83, label %84, label %105

84:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %101, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i64, i64* %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @XVECLEN(i64 %87, i32 %88)
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load i64, i64* %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i64 @XVECEXP(i64 %92, i32 %93, i32 %94)
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @oprs_not_set_p(i64 %95, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %111

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %85

104:                                              ; preds = %85
  br label %105

105:                                              ; preds = %104, %76
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %6, align 4
  br label %47

110:                                              ; preds = %47
  store i32 1, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %99, %74, %61, %32, %27, %26, %17, %12
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @load_killed_in_block_p(i32, i32, i64, i32) #1

declare dso_local i32 @BLOCK_FOR_INSN(i64) #1

declare dso_local i32 @INSN_CUID(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @REGNO_REG_SET_P(i32, i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
