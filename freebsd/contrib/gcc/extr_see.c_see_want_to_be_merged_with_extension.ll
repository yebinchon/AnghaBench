; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_want_to_be_merged_with_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_want_to_be_merged_with_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.see_mentioned_reg_data = type { i32, i32 }

@PARALLEL = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@DEF_EXTENSION = common dso_local global i32 0, align 4
@USE_EXTENSION = common dso_local global i32 0, align 4
@see_mentioned_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @see_want_to_be_merged_with_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_want_to_be_merged_with_extension(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.see_mentioned_reg_data, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @see_get_extension_reg(i32 %15, i32 1)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @see_get_extension_reg(i32 %17, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @PATTERN(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @PARALLEL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %113

27:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %104, %27
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @XVECLEN(i32 %30, i32 0)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %107

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @XVECEXP(i32 %34, i32 0, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @SET, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %87

41:                                               ; preds = %33
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @SET_DEST(i32 %42)
  %44 = call i64 @REG_P(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @SET_DEST(i32 %47)
  %49 = call i64 @GET_CODE(i32 %48)
  %50 = load i64, i64* @SUBREG, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @SET_DEST(i32 %53)
  %55 = call i32 @SUBREG_REG(i32 %54)
  %56 = call i64 @REG_P(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %87

58:                                               ; preds = %52, %41
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @SET_SRC(i32 %59)
  %61 = call i64 @REG_P(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @SET_SRC(i32 %64)
  %66 = call i64 @GET_CODE(i32 %65)
  %67 = load i64, i64* @SUBREG, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @SET_SRC(i32 %70)
  %72 = call i32 @SUBREG_REG(i32 %71)
  %73 = call i64 @REG_P(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69, %58
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @DEF_EXTENSION, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @SET_DEST(i32 %81)
  %83 = call i64 @reg_mentioned_p(i32 %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %155

86:                                               ; preds = %79, %75
  br label %103

87:                                               ; preds = %69, %63, %52, %46, %33
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @USE_EXTENSION, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = getelementptr inbounds %struct.see_mentioned_reg_data, %struct.see_mentioned_reg_data* %12, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.see_mentioned_reg_data, %struct.see_mentioned_reg_data* %12, i32 0, i32 0
  store i32 0, i32* %94, align 4
  %95 = load i32, i32* @see_mentioned_reg, align 4
  %96 = call i32 @note_uses(i32* %14, i32 %95, %struct.see_mentioned_reg_data* %12)
  %97 = getelementptr inbounds %struct.see_mentioned_reg_data, %struct.see_mentioned_reg_data* %12, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  store i32 1, i32* %4, align 4
  br label %155

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %87
  br label %103

103:                                              ; preds = %102, %86
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %28

107:                                              ; preds = %28
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @USE_EXTENSION, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %155

112:                                              ; preds = %107
  br label %154

113:                                              ; preds = %3
  %114 = load i32, i32* %11, align 4
  %115 = zext i32 %114 to i64
  %116 = load i64, i64* @SET, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %153

118:                                              ; preds = %113
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @SET_DEST(i32 %119)
  %121 = call i64 @REG_P(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %135, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @SET_DEST(i32 %124)
  %126 = call i64 @GET_CODE(i32 %125)
  %127 = load i64, i64* @SUBREG, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %123
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @SET_DEST(i32 %130)
  %132 = call i32 @SUBREG_REG(i32 %131)
  %133 = call i64 @REG_P(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %129, %118
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @SET_SRC(i32 %136)
  %138 = call i64 @REG_P(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @SET_SRC(i32 %141)
  %143 = call i64 @GET_CODE(i32 %142)
  %144 = load i64, i64* @SUBREG, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %140
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @SET_SRC(i32 %147)
  %149 = call i32 @SUBREG_REG(i32 %148)
  %150 = call i64 @REG_P(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146, %135
  store i32 0, i32* %4, align 4
  br label %155

153:                                              ; preds = %146, %140, %129, %123, %113
  br label %154

154:                                              ; preds = %153, %112
  store i32 1, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %152, %111, %100, %85
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @see_get_extension_reg(i32, i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i64 @reg_mentioned_p(i32, i32) #1

declare dso_local i32 @note_uses(i32*, i32, %struct.see_mentioned_reg_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
