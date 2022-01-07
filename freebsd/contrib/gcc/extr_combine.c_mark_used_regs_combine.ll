; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_mark_used_regs_combine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_mark_used_regs_combine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@STACK_POINTER_REGNUM = common dso_local global i32 0, align 4
@FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@hard_regno_nregs = common dso_local global i32** null, align 8
@newpat_used_regs = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@ZERO_EXTRACT = common dso_local global i32 0, align 4
@STRICT_LOW_PART = common dso_local global i32 0, align 4
@ARG_POINTER_REGNUM = common dso_local global i32 0, align 4
@HARD_FRAME_POINTER_REGNUM = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mark_used_regs_combine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_used_regs_combine(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @GET_CODE(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %99 [
    i32 132, label %14
    i32 128, label %14
    i32 134, label %14
    i32 136, label %14
    i32 135, label %14
    i32 133, label %14
    i32 131, label %14
    i32 140, label %14
    i32 141, label %14
    i32 139, label %14
    i32 137, label %15
    i32 130, label %25
    i32 129, label %66
  ]

14:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %150

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @XEXP(i32 %16, i32 0)
  %18 = call i32 @MEM_P(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  %23 = call i32 @XEXP(i32 %22, i32 0)
  call void @mark_used_regs_combine(i32 %23)
  br label %24

24:                                               ; preds = %20, %15
  br label %150

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @REGNO(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @STACK_POINTER_REGNUM, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @FRAME_POINTER_REGNUM, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %31
  br label %150

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = load i32**, i32*** @hard_regno_nregs, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %2, align 4
  %48 = call i64 @GET_MODE(i32 %47)
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %41, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %61, %40
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* @newpat_used_regs, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @SET_HARD_REG_BIT(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %53

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %25
  br label %150

66:                                               ; preds = %1
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @SET_DEST(i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %86, %66
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @GET_CODE(i32 %70)
  %72 = load i32, i32* @SUBREG, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @GET_CODE(i32 %75)
  %77 = load i32, i32* @ZERO_EXTRACT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @GET_CODE(i32 %80)
  %82 = load i32, i32* @STRICT_LOW_PART, align 4
  %83 = icmp eq i32 %81, %82
  br label %84

84:                                               ; preds = %79, %74, %69
  %85 = phi i1 [ true, %74 ], [ true, %69 ], [ %83, %79 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @XEXP(i32 %87, i32 0)
  store i32 %88, i32* %8, align 4
  br label %69

89:                                               ; preds = %84
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @MEM_P(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @XEXP(i32 %94, i32 0)
  call void @mark_used_regs_combine(i32 %95)
  br label %96

96:                                               ; preds = %93, %89
  %97 = load i32, i32* %2, align 4
  %98 = call i32 @SET_SRC(i32 %97)
  call void @mark_used_regs_combine(i32 %98)
  br label %150

99:                                               ; preds = %1
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %3, align 4
  %102 = call i8* @GET_RTX_FORMAT(i32 %101)
  store i8* %102, i8** %9, align 8
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @GET_RTX_LENGTH(i32 %103)
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %147, %100
  %107 = load i32, i32* %5, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %106
  %110 = load i8*, i8** %9, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 101
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* %2, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @XEXP(i32 %118, i32 %119)
  call void @mark_used_regs_combine(i32 %120)
  br label %146

121:                                              ; preds = %109
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 69
  br i1 %128, label %129, label %145

129:                                              ; preds = %121
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %141, %129
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @XVECLEN(i32 %132, i32 %133)
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %130
  %137 = load i32, i32* %2, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @XVECEXP(i32 %137, i32 %138, i32 %139)
  call void @mark_used_regs_combine(i32 %140)
  br label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %130

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %144, %121
  br label %146

146:                                              ; preds = %145, %117
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %5, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %5, align 4
  br label %106

150:                                              ; preds = %14, %24, %39, %65, %96, %106
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
