; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_const_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_const_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_integer_op = type { i32 }

@MIPS_MAX_INTEGER_OPS = common dso_local global i32 0, align 4
@TARGET_MIPS16 = common dso_local global i32 0, align 4
@mips_split_p = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_const_insns(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @MIPS_MAX_INTEGER_OPS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca %struct.mips_integer_op, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @GET_CODE(i32 %14)
  switch i32 %15, label %132 [
    i32 130, label %16
    i32 132, label %33
    i32 133, label %78
    i32 131, label %78
    i32 134, label %91
    i32 128, label %128
    i32 129, label %128
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @TARGET_MIPS16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @XEXP(i32 %20, i32 0)
  %22 = call i32 @mips_symbolic_constant_p(i32 %21, i32* %6)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i32*, i32** @mips_split_p, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %19, %16
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

32:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

33:                                               ; preds = %1
  %34 = load i32, i32* @TARGET_MIPS16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @INTVAL(i32 %37)
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @INTVAL(i32 %41)
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %72

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @INTVAL(i32 %46)
  %48 = call i32 @SMALL_OPERAND_UNSIGNED(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %70

51:                                               ; preds = %45
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @INTVAL(i32 %52)
  %54 = icmp sgt i32 %53, -256
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @INTVAL(i32 %56)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %68

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @INTVAL(i32 %61)
  %63 = sub nsw i32 0, %62
  %64 = call i32 @SMALL_OPERAND_UNSIGNED(i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 3, i32 0
  br label %68

68:                                               ; preds = %60, %59
  %69 = phi i32 [ 2, %59 ], [ %67, %60 ]
  br label %70

70:                                               ; preds = %68, %50
  %71 = phi i32 [ 2, %50 ], [ %69, %68 ]
  br label %72

72:                                               ; preds = %70, %44
  %73 = phi i32 [ 1, %44 ], [ %71, %70 ]
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

74:                                               ; preds = %33
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @INTVAL(i32 %75)
  %77 = call i32 @mips_build_integer(%struct.mips_integer_op* %13, i32 %76)
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

78:                                               ; preds = %1, %1
  %79 = load i32, i32* @TARGET_MIPS16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @GET_MODE(i32 %83)
  %85 = call i32 @CONST0_RTX(i32 %84)
  %86 = icmp eq i32 %82, %85
  br label %87

87:                                               ; preds = %81, %78
  %88 = phi i1 [ false, %78 ], [ %86, %81 ]
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  store i32 %90, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

91:                                               ; preds = %1
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @CONST_GP_P(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

96:                                               ; preds = %91
  %97 = load i32, i32* %3, align 4
  %98 = call i32 @mips_symbolic_constant_p(i32 %97, i32* %6)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @mips_symbol_insns(i32 %101)
  store i32 %102, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

103:                                              ; preds = %96
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @mips_split_const(i32 %104, i32* %3, i32* %7)
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %103
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @mips_const_insns(i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @SMALL_OPERAND(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @mips_build_integer(%struct.mips_integer_op* %13, i32 %123)
  %125 = add nsw i32 %122, %124
  store i32 %125, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126, %103
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

128:                                              ; preds = %1, %1
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @mips_classify_symbol(i32 %129)
  %131 = call i32 @mips_symbol_insns(i32 %130)
  store i32 %131, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

132:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %133

133:                                              ; preds = %132, %128, %127, %120, %117, %100, %95, %87, %74, %72, %32, %31
  %134 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GET_CODE(i32) #2

declare dso_local i32 @mips_symbolic_constant_p(i32, i32*) #2

declare dso_local i32 @XEXP(i32, i32) #2

declare dso_local i32 @INTVAL(i32) #2

declare dso_local i32 @SMALL_OPERAND_UNSIGNED(i32) #2

declare dso_local i32 @mips_build_integer(%struct.mips_integer_op*, i32) #2

declare dso_local i32 @CONST0_RTX(i32) #2

declare dso_local i32 @GET_MODE(i32) #2

declare dso_local i32 @CONST_GP_P(i32) #2

declare dso_local i32 @mips_symbol_insns(i32) #2

declare dso_local i32 @mips_split_const(i32, i32*, i32*) #2

declare dso_local i32 @SMALL_OPERAND(i32) #2

declare dso_local i32 @mips_classify_symbol(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
