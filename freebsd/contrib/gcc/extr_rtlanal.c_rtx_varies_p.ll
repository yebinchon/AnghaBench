; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_varies_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_varies_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_pointer_rtx = common dso_local global i32 0, align 4
@hard_frame_pointer_rtx = common dso_local global i32 0, align 4
@arg_pointer_rtx = common dso_local global i32 0, align 4
@fixed_regs = common dso_local global i32* null, align 8
@ARG_POINTER_REGNUM = common dso_local global i64 0, align 8
@pic_offset_table_rtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtx_varies_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %142

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @GET_CODE(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %80 [
    i32 130, label %17
    i32 136, label %30
    i32 134, label %30
    i32 135, label %30
    i32 133, label %30
    i32 128, label %30
    i32 132, label %30
    i32 129, label %31
    i32 131, label %56
    i32 137, label %74
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @MEM_READONLY_P(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @XEXP(i32 %22, i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @rtx_varies_p(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i1 [ true, %17 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %142

30:                                               ; preds = %13, %13, %13, %13, %13, %13
  store i32 0, i32* %3, align 4
  br label %142

31:                                               ; preds = %13
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @frame_pointer_rtx, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @hard_frame_pointer_rtx, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @arg_pointer_rtx, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32*, i32** @fixed_regs, align 8
  %45 = load i64, i64* @ARG_POINTER_REGNUM, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %35, %31
  store i32 0, i32* %3, align 4
  br label %142

50:                                               ; preds = %43, %39
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @pic_offset_table_rtx, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %142

55:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %142

56:                                               ; preds = %13
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @XEXP(i32 %60, i32 0)
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @rtx_varies_p(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59, %56
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @XEXP(i32 %66, i32 1)
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @rtx_varies_p(i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %65, %59
  %72 = phi i1 [ true, %59 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %142

74:                                               ; preds = %13
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @MEM_VOLATILE_P(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %142

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %13, %79
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = call i8* @GET_RTX_FORMAT(i32 %82)
  store i8* %83, i8** %8, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @GET_RTX_LENGTH(i32 %84)
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %138, %81
  %88 = load i32, i32* %7, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %141

90:                                               ; preds = %87
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 101
  br i1 %97, label %98, label %107

98:                                               ; preds = %90
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @XEXP(i32 %99, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @rtx_varies_p(i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %142

106:                                              ; preds = %98
  br label %137

107:                                              ; preds = %90
  %108 = load i8*, i8** %8, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 69
  br i1 %114, label %115, label %136

115:                                              ; preds = %107
  store i32 0, i32* %9, align 4
  br label %116

116:                                              ; preds = %132, %115
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @XVECLEN(i32 %118, i32 %119)
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @XVECEXP(i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @rtx_varies_p(i32 %126, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i32 1, i32* %3, align 4
  br label %142

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %116

135:                                              ; preds = %116
  br label %136

136:                                              ; preds = %135, %107
  br label %137

137:                                              ; preds = %136, %106
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %7, align 4
  br label %87

141:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %130, %105, %78, %71, %55, %54, %49, %30, %27, %12
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @MEM_READONLY_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

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
