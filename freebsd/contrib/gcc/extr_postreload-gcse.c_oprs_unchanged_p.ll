; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_oprs_unchanged_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_postreload-gcse.c_oprs_unchanged_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @oprs_unchanged_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oprs_unchanged_p(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %127

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @GET_CODE(i64 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %63 [
    i32 129, label %19
    i32 137, label %43
    i32 136, label %57
    i32 143, label %57
    i32 142, label %57
    i32 140, label %57
    i32 141, label %57
    i32 139, label %57
    i32 128, label %57
    i32 138, label %57
    i32 144, label %57
    i32 145, label %57
    i32 132, label %58
    i32 131, label %58
    i32 135, label %58
    i32 134, label %58
    i32 130, label %58
    i32 133, label %58
  ]

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @REGNO(i64 %20)
  %22 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %23 = icmp slt i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @gcc_assert(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @INSN_CUID(i64 %30)
  %32 = sub nsw i32 %31, 1
  %33 = call i32 @reg_changed_after_insn_p(i64 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  br label %127

37:                                               ; preds = %19
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @reg_changed_after_insn_p(i64 %38, i32 0)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %127

43:                                               ; preds = %15
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @INSN_CUID(i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @load_killed_in_block_p(i32 %45, i64 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %127

51:                                               ; preds = %43
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @XEXP(i64 %52, i32 0)
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @oprs_unchanged_p(i64 %53, i64 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %127

57:                                               ; preds = %15, %15, %15, %15, %15, %15, %15, %15, %15, %15
  store i32 1, i32* %4, align 4
  br label %127

58:                                               ; preds = %15, %15, %15, %15, %15, %15
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %127

62:                                               ; preds = %58
  br label %64

63:                                               ; preds = %15
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @GET_RTX_LENGTH(i32 %65)
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @GET_RTX_FORMAT(i32 %68)
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %123, %64
  %71 = load i32, i32* %8, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %70
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 101
  br i1 %80, label %81, label %91

81:                                               ; preds = %73
  %82 = load i64, i64* %5, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @XEXP(i64 %82, i32 %83)
  %85 = load i64, i64* %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @oprs_unchanged_p(i64 %84, i64 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %127

90:                                               ; preds = %81
  br label %122

91:                                               ; preds = %73
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 69
  br i1 %98, label %99, label %121

99:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %117, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i64, i64* %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @XVECLEN(i64 %102, i32 %103)
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %100
  %107 = load i64, i64* %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @XVECEXP(i64 %107, i32 %108, i32 %109)
  %111 = load i64, i64* %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @oprs_unchanged_p(i64 %110, i64 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %127

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %100

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120, %91
  br label %122

122:                                              ; preds = %121, %90
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %8, align 4
  br label %70

126:                                              ; preds = %70
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %115, %89, %61, %57, %51, %50, %37, %28, %14
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @reg_changed_after_insn_p(i64, i32) #1

declare dso_local i32 @INSN_CUID(i64) #1

declare dso_local i32 @load_killed_in_block_p(i32, i64, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

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
