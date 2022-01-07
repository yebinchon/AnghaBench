; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_equiv_init_varies_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_equiv_init_varies_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@reg_equiv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @equiv_init_varies_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equiv_init_varies_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %45 [
    i32 130, label %11
    i32 135, label %23
    i32 133, label %23
    i32 134, label %23
    i32 132, label %23
    i32 128, label %23
    i32 131, label %23
    i32 129, label %24
    i32 136, label %39
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @MEM_READONLY_P(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @XEXP(i32 %16, i32 0)
  %18 = call i32 @equiv_init_varies_p(i32 %17)
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %11
  %21 = phi i1 [ true, %11 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %105

23:                                               ; preds = %1, %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %105

24:                                               ; preds = %1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_equiv, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @REGNO(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @rtx_varies_p(i32 %33, i32 0)
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %24
  %37 = phi i1 [ false, %24 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %2, align 4
  br label %105

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @MEM_VOLATILE_P(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %105

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %1, %44
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = call i8* @GET_RTX_FORMAT(i32 %47)
  store i8* %48, i8** %6, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @GET_RTX_LENGTH(i32 %49)
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %101, %46
  %53 = load i32, i32* %5, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %104

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 101
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @XEXP(i32 %64, i32 %65)
  %67 = call i32 @equiv_init_varies_p(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 1, i32* %2, align 4
  br label %105

70:                                               ; preds = %63
  br label %100

71:                                               ; preds = %55
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 69
  br i1 %78, label %79, label %99

79:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %95, %79
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @XVECLEN(i32 %82, i32 %83)
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @XVECEXP(i32 %87, i32 %88, i32 %89)
  %91 = call i32 @equiv_init_varies_p(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 1, i32* %2, align 4
  br label %105

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %80

98:                                               ; preds = %80
  br label %99

99:                                               ; preds = %98, %71
  br label %100

100:                                              ; preds = %99, %70
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %5, align 4
  br label %52

104:                                              ; preds = %52
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %93, %69, %43, %36, %23, %20
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @MEM_READONLY_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @rtx_varies_p(i32, i32) #1

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
