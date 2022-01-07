; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_truncated_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_record_truncated_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@reg_stat = common dso_local global %struct.TYPE_2__* null, align 8
@label_tick = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @record_truncated_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_truncated_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i64 @GET_CODE(i32 %5)
  %7 = load i64, i64* @SUBREG, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @SUBREG_REG(i32 %10)
  %12 = call i64 @REG_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @SUBREG_REG(i32 %15)
  %17 = call i32 @GET_MODE(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @GET_MODE(i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @GET_MODE_SIZE(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @GET_MODE_SIZE(i32 %22)
  %24 = icmp sle i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %94

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @GET_MODE_BITSIZE(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @GET_MODE_BITSIZE(i32 %29)
  %31 = call i64 @TRULY_NOOP_TRUNCATION(i32 %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %94

34:                                               ; preds = %26
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @SUBREG_REG(i32 %35)
  store i32 %36, i32* %2, align 4
  br label %51

37:                                               ; preds = %9, %1
  %38 = load i32, i32* %2, align 4
  %39 = call i64 @REG_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = call i64 @REGNO(i32 %42)
  %44 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @GET_MODE(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %41, %37
  br label %94

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %53 = load i32, i32* %2, align 4
  %54 = call i64 @REGNO(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %80, label %59

59:                                               ; preds = %51
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %61 = load i32, i32* %2, align 4
  %62 = call i64 @REGNO(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @label_tick, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %80, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @GET_MODE_SIZE(i32 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %72 = load i32, i32* %2, align 4
  %73 = call i64 @REGNO(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i64 @GET_MODE_SIZE(i32 %77)
  %79 = icmp slt i64 %70, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %68, %59, %51
  %81 = load i32, i32* %3, align 4
  %82 = zext i32 %81 to i64
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %84 = load i32, i32* %2, align 4
  %85 = call i64 @REGNO(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i64 %82, i64* %87, align 8
  %88 = load i64, i64* @label_tick, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_stat, align 8
  %90 = load i32, i32* %2, align 4
  %91 = call i64 @REGNO(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i64 %88, i64* %93, align 8
  br label %94

94:                                               ; preds = %25, %33, %49, %80, %68
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @TRULY_NOOP_TRUNCATION(i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i64 @REGNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
