; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stor-layout.c_get_best_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stor-layout.c_get_best_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@MODE_INT = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@BIGGEST_ALIGNMENT = common dso_local global i32 0, align 4
@SLOW_BYTE_ACCESS = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BITS_PER_WORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_best_mode(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* @MODE_INT, align 4
  %17 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %16)
  store i32 %17, i32* %12, align 4
  br label %18

18:                                               ; preds = %34, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @VOIDmode, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @GET_MODE_BITSIZE(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %13, align 4
  %27 = urem i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = add i32 %27, %28
  %30 = load i32, i32* %13, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %37

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @GET_MODE_WIDER_MODE(i32 %35)
  store i32 %36, i32* %12, align 4
  br label %18

37:                                               ; preds = %32, %18
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @VOIDmode, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %56, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %44 = call i32 @MIN(i32 %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @VOIDmode, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @GET_MODE_BITSIZE(i32 %53)
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %41, %37
  %57 = load i32, i32* @VOIDmode, align 4
  store i32 %57, i32* %6, align 4
  br label %126

58:                                               ; preds = %51, %47
  %59 = load i64, i64* @SLOW_BYTE_ACCESS, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %124

67:                                               ; preds = %64
  %68 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %69 = call i32 (...) %68()
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %124, label %71

71:                                               ; preds = %67, %61
  %72 = load i32, i32* @VOIDmode, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @MODE_INT, align 4
  %74 = call i32 @GET_CLASS_NARROWEST_MODE(i32 %73)
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %114, %71
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* @VOIDmode, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %117

79:                                               ; preds = %75
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @GET_MODE_BITSIZE(i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %13, align 4
  %84 = udiv i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %85, %86
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %13, align 4
  %90 = udiv i32 %88, %89
  %91 = icmp eq i32 %84, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %79
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @BITS_PER_WORD, align 4
  %95 = icmp ule i32 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %92
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @BIGGEST_ALIGNMENT, align 4
  %100 = call i32 @MIN(i32 %98, i32 %99)
  %101 = icmp ule i32 %97, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %96
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @VOIDmode, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @GET_MODE_BITSIZE(i32 %108)
  %110 = icmp ule i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106, %102
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %111, %106, %96, %92, %79
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @GET_MODE_WIDER_MODE(i32 %115)
  store i32 %116, i32* %15, align 4
  br label %75

117:                                              ; preds = %75
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @VOIDmode, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %6, align 4
  br label %126

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %67, %64
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %124, %121, %56
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local i32 @GET_CLASS_NARROWEST_MODE(i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
