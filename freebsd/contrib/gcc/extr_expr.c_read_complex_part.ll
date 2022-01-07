; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_read_complex_part.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_expr.c_read_complex_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONCAT = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@COMPLEX_CST = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @read_complex_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_complex_part(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @GET_CODE(i64 %12)
  %14 = load i64, i64* @CONCAT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @XEXP(i64 %17, i32 %18)
  store i64 %19, i64* %3, align 8
  br label %154

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @GET_MODE(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @GET_MODE_INNER(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @GET_MODE_BITSIZE(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @MEM_P(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %20
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @XEXP(i64 %31, i32 0)
  %33 = call i64 @GET_CODE(i64 %32)
  %34 = load i64, i64* @SYMBOL_REF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load i64, i64* %4, align 8
  %38 = call i64 @XEXP(i64 %37, i32 0)
  %39 = call i64 @SYMBOL_REF_DECL(i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @TREE_CODE(i64 %43)
  %45 = load i64, i64* @COMPLEX_CST, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %9, align 8
  %52 = call i64 @TREE_IMAGPART(i64 %51)
  br label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @TREE_REALPART(i64 %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i64 [ %52, %50 ], [ %55, %53 ]
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @CONSTANT_CLASS_P(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* @NULL_RTX, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @EXPAND_NORMAL, align 4
  %66 = call i64 @expand_expr(i64 %62, i32 %63, i32 %64, i32 %65)
  store i64 %66, i64* %3, align 8
  br label %154

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %42, %36
  br label %69

69:                                               ; preds = %68, %30, %20
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @MEM_P(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @GET_MODE_SIZE(i32 %79)
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  %84 = call i64 @adjust_address_nv(i64 %74, i32 %75, i32 %83)
  store i64 %84, i64* %3, align 8
  br label %154

85:                                               ; preds = %69
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @BITS_PER_WORD, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %110, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %4, align 8
  %91 = call i64 @REG_P(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %140

93:                                               ; preds = %89
  %94 = load i64, i64* %4, align 8
  %95 = call i64 @REGNO(i64 %94)
  %96 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %140

98:                                               ; preds = %93
  %99 = load i32**, i32*** @hard_regno_nregs, align 8
  %100 = load i64, i64* %4, align 8
  %101 = call i64 @REGNO(i64 %100)
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = srem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %98, %85
  %111 = load i32, i32* %7, align 4
  %112 = load i64, i64* %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @GET_MODE_SIZE(i32 %117)
  br label %120

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 0, %119 ]
  %122 = call i64 @simplify_gen_subreg(i32 %111, i64 %112, i32 %113, i32 %121)
  store i64 %122, i64* %11, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i64, i64* %11, align 8
  store i64 %126, i64* %3, align 8
  br label %154

127:                                              ; preds = %120
  %128 = load i64, i64* %4, align 8
  %129 = call i64 @MEM_P(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @BITS_PER_WORD, align 4
  %134 = icmp ult i32 %132, %133
  br label %135

135:                                              ; preds = %131, %127
  %136 = phi i1 [ false, %127 ], [ %134, %131 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @gcc_assert(i32 %137)
  br label %139

139:                                              ; preds = %135
  br label %140

140:                                              ; preds = %139, %98, %93, %89
  %141 = load i64, i64* %4, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* %8, align 4
  br label %148

147:                                              ; preds = %140
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i32 [ %146, %145 ], [ 0, %147 ]
  %150 = load i32, i32* @NULL_RTX, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i64 @extract_bit_field(i64 %141, i32 %142, i32 %149, i32 1, i32 %150, i32 %151, i32 %152)
  store i64 %153, i64* %3, align 8
  br label %154

154:                                              ; preds = %148, %125, %82, %61, %16
  %155 = load i64, i64* %3, align 8
  ret i64 %155
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @SYMBOL_REF_DECL(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_IMAGPART(i64) #1

declare dso_local i64 @TREE_REALPART(i64) #1

declare dso_local i64 @CONSTANT_CLASS_P(i64) #1

declare dso_local i64 @expand_expr(i64, i32, i32, i32) #1

declare dso_local i64 @adjust_address_nv(i64, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @simplify_gen_subreg(i32, i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @extract_bit_field(i64, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
