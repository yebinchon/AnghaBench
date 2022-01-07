; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_hypersparc_adjust_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_hypersparc_adjust_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i32 0, align 4
@MEM = common dso_local global i32 0, align 4
@TYPE_COMPARE = common dso_local global i32 0, align 4
@TYPE_FPCMP = common dso_local global i32 0, align 4
@TYPE_IALU = common dso_local global i32 0, align 4
@TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @hypersparc_adjust_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypersparc_adjust_cost(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @PATTERN(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @PATTERN(i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @recog_memoized(i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @recog_memoized(i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %4
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %5, align 4
  br label %132

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @get_attr_type(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @get_attr_type(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @REG_NOTE_KIND(i32 %32)
  switch i32 %33, label %129 [
    i32 0, label %34
    i32 134, label %119
  ]

34:                                               ; preds = %27
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %117 [
    i32 128, label %36
    i32 131, label %36
    i32 130, label %60
    i32 129, label %60
    i32 132, label %60
    i32 133, label %104
  ]

36:                                               ; preds = %34, %34
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @GET_CODE(i32 %37)
  %39 = load i32, i32* @SET, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @GET_CODE(i32 %42)
  %44 = load i32, i32* @SET, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %5, align 4
  br label %132

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @SET_DEST(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @SET_SRC(i32 %51)
  %53 = call i32 @rtx_equal_p(i32 %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %5, align 4
  br label %132

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 3
  store i32 %59, i32* %5, align 4
  br label %132

60:                                               ; preds = %34, %34, %34
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 131
  br i1 %65, label %66, label %103

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @GET_CODE(i32 %67)
  %69 = load i32, i32* @SET, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %97, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @GET_CODE(i32 %72)
  %74 = load i32, i32* @SET, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %97, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @SET_DEST(i32 %77)
  %79 = call i32 @GET_CODE(i32 %78)
  %80 = load i32, i32* @MEM, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %97, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @SET_SRC(i32 %83)
  %85 = call i32 @GET_CODE(i32 %84)
  %86 = load i32, i32* @MEM, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @SET_DEST(i32 %89)
  %91 = call i32 @XEXP(i32 %90, i32 0)
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @SET_SRC(i32 %92)
  %94 = call i32 @XEXP(i32 %93, i32 0)
  %95 = call i32 @rtx_equal_p(i32 %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %88, %82, %76, %71, %66
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %5, align 4
  br label %132

100:                                              ; preds = %88
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 8
  store i32 %102, i32* %5, align 4
  br label %132

103:                                              ; preds = %63
  br label %118

104:                                              ; preds = %34
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @TYPE_COMPARE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %132

109:                                              ; preds = %104
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* @TYPE_FPCMP, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %132

116:                                              ; preds = %109
  br label %118

117:                                              ; preds = %34
  br label %118

118:                                              ; preds = %117, %116, %103
  br label %130

119:                                              ; preds = %27
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @TYPE_IALU, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @TYPE_SHIFT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %119
  store i32 0, i32* %5, align 4
  br label %132

128:                                              ; preds = %123
  br label %130

129:                                              ; preds = %27
  br label %130

130:                                              ; preds = %129, %128, %118
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %130, %127, %113, %108, %100, %97, %57, %55, %46, %25
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @recog_memoized(i32) #1

declare dso_local i32 @get_attr_type(i32) #1

declare dso_local i32 @REG_NOTE_KIND(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
