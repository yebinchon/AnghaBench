; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_memref_referenced_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_memref_referenced_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@reg_equiv = common dso_local global %struct.TYPE_2__* null, align 8
@VOIDmode = common dso_local global i32 0, align 4
@rtx_varies_p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @memref_referenced_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memref_referenced_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GET_CODE(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %71 [
    i32 137, label %13
    i32 139, label %13
    i32 134, label %13
    i32 128, label %13
    i32 138, label %13
    i32 136, label %13
    i32 131, label %13
    i32 140, label %13
    i32 135, label %13
    i32 133, label %13
    i32 130, label %14
    i32 132, label %35
    i32 129, label %44
  ]

13:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %124

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_equiv, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @REGNO(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %14
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_equiv, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @REGNO(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memref_referenced_p(i32 %23, i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %22, %14
  %33 = phi i1 [ false, %14 ], [ %31, %22 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %124

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @VOIDmode, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @rtx_varies_p, align 4
  %40 = call i32 @true_dependence(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %124

43:                                               ; preds = %35
  br label %72

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @SET_DEST(i32 %45)
  %47 = call i32 @MEM_P(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @SET_DEST(i32 %51)
  %53 = call i32 @XEXP(i32 %52, i32 0)
  %54 = call i32 @memref_referenced_p(i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %124

57:                                               ; preds = %49
  br label %66

58:                                               ; preds = %44
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @SET_DEST(i32 %60)
  %62 = call i32 @memref_referenced_p(i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %3, align 4
  br label %124

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @SET_SRC(i32 %68)
  %70 = call i32 @memref_referenced_p(i32 %67, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %124

71:                                               ; preds = %2
  br label %72

72:                                               ; preds = %71, %43
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @GET_RTX_FORMAT(i32 %73)
  store i8* %74, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @GET_RTX_LENGTH(i32 %75)
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %120, %72
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %123

81:                                               ; preds = %78
  %82 = load i8*, i8** %8, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  switch i32 %87, label %119 [
    i32 101, label %88
    i32 69, label %97
  ]

88:                                               ; preds = %81
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @XEXP(i32 %90, i32 %91)
  %93 = call i32 @memref_referenced_p(i32 %89, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  store i32 1, i32* %3, align 4
  br label %124

96:                                               ; preds = %88
  br label %119

97:                                               ; preds = %81
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @XVECLEN(i32 %98, i32 %99)
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %115, %97
  %103 = load i32, i32* %7, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @XVECEXP(i32 %107, i32 %108, i32 %109)
  %111 = call i32 @memref_referenced_p(i32 %106, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %124

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %7, align 4
  br label %102

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %81, %118, %96
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %6, align 4
  br label %78

123:                                              ; preds = %78
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %113, %95, %66, %64, %56, %42, %32, %13
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @true_dependence(i32, i32, i32, i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

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
