; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_equiv_init_movable_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_equiv_init_movable_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@reg_equiv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @equiv_init_movable_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equiv_init_movable_p(i32 %0, i32 %1) #0 {
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
  %11 = call i32 @GET_CODE(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  switch i32 %12, label %64 [
    i32 129, label %13
    i32 138, label %18
    i32 137, label %18
    i32 132, label %19
    i32 133, label %19
    i32 135, label %19
    i32 136, label %19
    i32 131, label %19
    i32 134, label %19
    i32 130, label %20
    i32 128, label %57
    i32 139, label %58
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @SET_SRC(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @equiv_init_movable_p(i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  br label %117

18:                                               ; preds = %2, %2
  store i32 0, i32* %3, align 4
  br label %117

19:                                               ; preds = %2, %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %117

20:                                               ; preds = %2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_equiv, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @REGNO(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_equiv, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %26, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %20
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_equiv, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @REGNO(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %34, %20
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @REGNO(i32 %43)
  %45 = call i32 @REG_BASIC_BLOCK(i64 %44)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @rtx_varies_p(i32 %48, i32 0)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br label %54

54:                                               ; preds = %52, %34
  %55 = phi i1 [ true, %34 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %117

57:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %117

58:                                               ; preds = %2
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @MEM_VOLATILE_P(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %117

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %2, %63
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = call i8* @GET_RTX_FORMAT(i32 %66)
  store i8* %67, i8** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @GET_RTX_LENGTH(i32 %68)
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %113, %65
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %116

74:                                               ; preds = %71
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  switch i32 %80, label %112 [
    i32 101, label %81
    i32 69, label %90
  ]

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @XEXP(i32 %82, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @equiv_init_movable_p(i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %117

89:                                               ; preds = %81
  br label %112

90:                                               ; preds = %74
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @XVECLEN(i32 %91, i32 %92)
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %108, %90
  %96 = load i32, i32* %7, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @XVECEXP(i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @equiv_init_movable_p(i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %117

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %7, align 4
  br label %95

111:                                              ; preds = %95
  br label %112

112:                                              ; preds = %74, %111, %89
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %6, align 4
  br label %71

116:                                              ; preds = %71
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %106, %88, %62, %57, %54, %19, %18, %13
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @REG_BASIC_BLOCK(i64) #1

declare dso_local i32 @rtx_varies_p(i32, i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
