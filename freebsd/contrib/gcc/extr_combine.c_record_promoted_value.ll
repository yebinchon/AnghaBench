; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_promoted_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_promoted_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@HOST_BITS_PER_WIDE_INT = common dso_local global i64 0, align 8
@reg_stat = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @record_promoted_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_promoted_value(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @SUBREG_REG(i64 %9)
  %11 = call i32 @REGNO(i64 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @GET_MODE(i64 %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i64 @GET_MODE_BITSIZE(i32 %15)
  %17 = load i64, i64* @HOST_BITS_PER_WIDE_INT, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %92

20:                                               ; preds = %2
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @LOG_LINKS(i64 %21)
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %91, %52, %20
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %92

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @XEXP(i64 %27, i32 0)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @single_set(i64 %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @SET_DEST(i64 %34)
  %36 = call i64 @REG_P(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @SET_DEST(i64 %39)
  %41 = call i32 @REGNO(i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @SET_DEST(i64 %45)
  %47 = call i64 @GET_MODE(i64 %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @SUBREG_REG(i64 %48)
  %50 = call i64 @GET_MODE(i64 %49)
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44, %38, %33, %26
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @XEXP(i64 %53, i32 1)
  store i64 %54, i64* %5, align 8
  br label %23

55:                                               ; preds = %44
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %3, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %55
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @SUBREG_PROMOTED_UNSIGNED_P(i64 %65)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @GET_MODE_MASK(i32 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %70
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %68, %64
  br label %79

79:                                               ; preds = %78, %55
  %80 = load i64, i64* %6, align 8
  %81 = call i64 @SET_SRC(i64 %80)
  %82 = call i64 @REG_P(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load i64, i64* %6, align 8
  %86 = call i64 @SET_SRC(i64 %85)
  %87 = call i32 @REGNO(i64 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i64, i64* %3, align 8
  %89 = call i64 @LOG_LINKS(i64 %88)
  store i64 %89, i64* %5, align 8
  br label %91

90:                                               ; preds = %79
  br label %92

91:                                               ; preds = %84
  br label %23

92:                                               ; preds = %19, %90, %23
  ret void
}

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @LOG_LINKS(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @single_set(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @SUBREG_PROMOTED_UNSIGNED_P(i64) #1

declare dso_local i32 @GET_MODE_MASK(i32) #1

declare dso_local i64 @SET_SRC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
