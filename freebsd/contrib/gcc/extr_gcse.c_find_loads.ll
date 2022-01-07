; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_find_loads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_find_loads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @find_loads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_loads(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @GET_CODE(i64 %16)
  %18 = load i64, i64* @SET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @SET_SRC(i64 %21)
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @MEM_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @load_kills_store(i64 %28, i64 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %106

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %23
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @GET_CODE(i64 %36)
  %38 = call i8* @GET_RTX_FORMAT(i64 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = call i32 @GET_RTX_LENGTH(i64 %40)
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %101, %35
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %104

52:                                               ; preds = %50
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 101
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @XEXP(i64 %61, i32 %62)
  %64 = load i64, i64* %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @find_loads(i64 %63, i64 %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %11, align 4
  br label %100

69:                                               ; preds = %52
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 69
  br i1 %76, label %77, label %99

77:                                               ; preds = %69
  %78 = load i64, i64* %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @XVECLEN(i64 %78, i32 %79)
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %95, %77
  %83 = load i32, i32* %10, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i64, i64* %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @XVECEXP(i64 %86, i32 %87, i32 %88)
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @find_loads(i64 %89, i64 %90, i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %10, align 4
  br label %82

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %98, %69
  br label %100

100:                                              ; preds = %99, %60
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %9, align 4
  br label %43

104:                                              ; preds = %50
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %33, %14
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @load_kills_store(i64, i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
