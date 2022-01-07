; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_agi_dependent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_agi_dependent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@TYPE_LEA = common dso_local global i32 0, align 4
@TARGET_PENTIUM = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@recog_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ix86_agi_dependent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_agi_dependent(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @TYPE_LEA, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = load i64, i64* @TARGET_PENTIUM, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @PATTERN(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @GET_CODE(i32 %19)
  %21 = load i64, i64* @PARALLEL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @XVECEXP(i32 %24, i32 0, i32 0)
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @SET, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @gcc_assert(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @SET_SRC(i32 %33)
  store i32 %34, i32* %8, align 4
  br label %65

35:                                               ; preds = %13, %3
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @extract_insn_cached(i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 0), align 8
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %60, %35
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @GET_CODE(i32 %48)
  %50 = load i64, i64* @MEM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @recog_data, i32 0, i32 1), align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @XEXP(i32 %57, i32 0)
  store i32 %58, i32* %8, align 4
  br label %64

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  br label %40

63:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %69

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64, %26
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @modified_in_p(i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %63
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @extract_insn_cached(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @modified_in_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
