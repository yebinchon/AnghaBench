; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_expand_block_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_expand_block_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_INT = common dso_local global i64 0, align 8
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@TARGET_ALTIVEC = common dso_local global i64 0, align 8
@TARGET_POWERPC64 = common dso_local global i64 0, align 8
@optimize_size = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@V4SImode = common dso_local global i32 0, align 4
@STRICT_ALIGNMENT = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expand_block_clear(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @CONST_INT, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %159

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @GET_CODE(i32 %33)
  %35 = load i64, i64* @CONST_INT, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @gcc_assert(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @INTVAL(i32 %39)
  %41 = load i32, i32* @BITS_PER_UNIT, align 4
  %42 = mul nsw i32 %40, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @INTVAL(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %159

48:                                               ; preds = %32
  %49 = load i64, i64* @TARGET_ALTIVEC, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 128
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 16, i32* %12, align 4
  br label %64

55:                                               ; preds = %51, %48
  %56 = load i64, i64* @TARGET_POWERPC64, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 32
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 8, i32* %12, align 4
  br label %63

62:                                               ; preds = %58, %55
  store i32 4, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i64, i64* @optimize_size, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %12, align 4
  %70 = mul nsw i32 3, %69
  %71 = icmp sgt i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %159

73:                                               ; preds = %67, %64
  %74 = load i64, i64* @optimize_size, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = mul nsw i32 8, %78
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %159

82:                                               ; preds = %76, %73
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %151, %82
  %84 = load i32, i32* %9, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %158

86:                                               ; preds = %83
  %87 = load i32, i32* @BLKmode, align 4
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp sge i32 %88, 16
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i64, i64* @TARGET_ALTIVEC, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* %8, align 4
  %95 = icmp sge i32 %94, 128
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  store i32 16, i32* %11, align 4
  %97 = load i32, i32* @V4SImode, align 4
  store i32 %97, i32* %13, align 4
  br label %142

98:                                               ; preds = %93, %90, %86
  %99 = load i32, i32* %9, align 4
  %100 = icmp sge i32 %99, 8
  br i1 %100, label %101, label %115

101:                                              ; preds = %98
  %102 = load i64, i64* @TARGET_POWERPC64, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i32, i32* %8, align 4
  %106 = icmp sge i32 %105, 64
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp sge i32 %111, 32
  br i1 %112, label %113, label %115

113:                                              ; preds = %110, %104
  store i32 8, i32* %11, align 4
  %114 = load i32, i32* @DImode, align 4
  store i32 %114, i32* %13, align 4
  br label %141

115:                                              ; preds = %110, %107, %101, %98
  %116 = load i32, i32* %9, align 4
  %117 = icmp sge i32 %116, 4
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = icmp sge i32 %119, 32
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121, %118
  store i32 4, i32* %11, align 4
  %125 = load i32, i32* @SImode, align 4
  store i32 %125, i32* %13, align 4
  br label %140

126:                                              ; preds = %121, %115
  %127 = load i32, i32* %9, align 4
  %128 = icmp sge i32 %127, 2
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i32, i32* %8, align 4
  %131 = icmp sge i32 %130, 16
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* @STRICT_ALIGNMENT, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %132, %129
  store i32 2, i32* %11, align 4
  %136 = load i32, i32* @HImode, align 4
  store i32 %136, i32* %13, align 4
  br label %139

137:                                              ; preds = %132, %126
  store i32 1, i32* %11, align 4
  %138 = load i32, i32* @QImode, align 4
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %137, %135
  br label %140

140:                                              ; preds = %139, %124
  br label %141

141:                                              ; preds = %140, %113
  br label %142

142:                                              ; preds = %141, %96
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @adjust_address(i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @CONST0_RTX(i32 %148)
  %150 = call i32 @emit_move_insn(i32 %147, i32 %149)
  br label %151

151:                                              ; preds = %142
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %9, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %9, align 4
  br label %83

158:                                              ; preds = %83
  store i32 1, i32* %2, align 4
  br label %159

159:                                              ; preds = %158, %81, %72, %47, %31
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
