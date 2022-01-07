; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_overlap_mentioned_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_overlap_mentioned_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_overlap_mentioned_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @CONSTANT_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %164

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %20, %16
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @GET_CODE(i32 %18)
  switch i32 %19, label %160 [
    i32 130, label %20
    i32 128, label %20
    i32 131, label %20
    i32 129, label %23
    i32 133, label %34
    i32 136, label %60
    i32 132, label %129
    i32 134, label %129
    i32 137, label %129
    i32 135, label %133
  ]

20:                                               ; preds = %17, %17, %17
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  store i32 %22, i32* %4, align 4
  br label %17

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @SUBREG_REG(i32 %24)
  %26 = call i32 @REGNO(i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @subreg_regno(i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %23
  br label %37

34:                                               ; preds = %17
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @REGNO(i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %33
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i32**, i32*** @hard_regno_nregs, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @GET_MODE(i32 %48)
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  br label %53

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %42
  %54 = phi i32 [ %51, %42 ], [ 1, %52 ]
  %55 = add i32 %38, %54
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @refers_to_regno_p(i32 %56, i32 %57, i32 %58, i32* null)
  store i32 %59, i32* %3, align 4
  br label %164

60:                                               ; preds = %17
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @MEM_P(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %164

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @GET_CODE(i32 %66)
  %68 = call i8* @GET_RTX_FORMAT(i32 %67)
  store i8* %68, i8** %8, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @GET_CODE(i32 %69)
  %71 = call i32 @GET_RTX_LENGTH(i32 %70)
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %125, %65
  %74 = load i32, i32* %9, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %128

76:                                               ; preds = %73
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 101
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @XEXP(i32 %86, i32 %87)
  %89 = call i32 @reg_overlap_mentioned_p(i32 %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %164

92:                                               ; preds = %84
  br label %124

93:                                               ; preds = %76
  %94 = load i8*, i8** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 69
  br i1 %100, label %101, label %123

101:                                              ; preds = %93
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @XVECLEN(i32 %102, i32 %103)
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %119, %101
  %107 = load i32, i32* %10, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @XVECEXP(i32 %111, i32 %112, i32 %113)
  %115 = call i32 @reg_overlap_mentioned_p(i32 %110, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %164

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %10, align 4
  br label %106

122:                                              ; preds = %106
  br label %123

123:                                              ; preds = %122, %93
  br label %124

124:                                              ; preds = %123, %92
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %9, align 4
  br label %73

128:                                              ; preds = %73
  store i32 0, i32* %3, align 4
  br label %164

129:                                              ; preds = %17, %17, %17
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @reg_mentioned_p(i32 %130, i32 %131)
  store i32 %132, i32* %3, align 4
  br label %164

133:                                              ; preds = %17
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @XVECLEN(i32 %134, i32 0)
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %156, %133
  %138 = load i32, i32* %11, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @XVECEXP(i32 %141, i32 0, i32 %142)
  %144 = call i32 @XEXP(i32 %143, i32 0)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @XVECEXP(i32 %147, i32 0, i32 %148)
  %150 = call i32 @XEXP(i32 %149, i32 0)
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @reg_overlap_mentioned_p(i32 %150, i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  store i32 1, i32* %3, align 4
  br label %164

155:                                              ; preds = %146, %140
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %11, align 4
  br label %137

159:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %164

160:                                              ; preds = %17
  %161 = load i32, i32* %4, align 4
  %162 = call i64 @CONSTANT_P(i32 %161)
  %163 = call i32 @gcc_assert(i64 %162)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %159, %154, %129, %128, %117, %91, %64, %53, %15
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @subreg_regno(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @refers_to_regno_p(i32, i32, i32, i32*) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @reg_mentioned_p(i32, i32) #1

declare dso_local i32 @gcc_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
