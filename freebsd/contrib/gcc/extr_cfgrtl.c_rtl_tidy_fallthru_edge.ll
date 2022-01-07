; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_rtl_tidy_fallthru_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgrtl.c_rtl_tidy_fallthru_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @rtl_tidy_fallthru_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_tidy_fallthru_edge(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = call i64 @BB_END(%struct.TYPE_8__* %12)
  %14 = call i64 @NEXT_INSN(i64 %13)
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %26, %1
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = call i64 @BB_HEAD(%struct.TYPE_8__* %17)
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @INSN_P(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %83

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @NEXT_INSN(i64 %27)
  store i64 %28, i64* %3, align 8
  br label %15

29:                                               ; preds = %15
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = call i64 @BB_END(%struct.TYPE_8__* %30)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @JUMP_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %29
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @onlyjump_p(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load i64, i64* %3, align 8
  %41 = call i64 @any_uncondjump_p(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = call i64 @single_succ_p(%struct.TYPE_8__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43, %39
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @PREV_INSN(i64 %48)
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %60, %47
  %51 = load i64, i64* %3, align 8
  %52 = call i64 @NOTE_P(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %3, align 8
  %56 = call i64 @NOTE_LINE_NUMBER(i64 %55)
  %57 = icmp sge i64 %56, 0
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ false, %50 ], [ %57, %54 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i64, i64* %3, align 8
  %62 = call i64 @PREV_INSN(i64 %61)
  store i64 %62, i64* %3, align 8
  br label %50

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %43, %35, %29
  %65 = load i64, i64* %3, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = call i64 @BB_HEAD(%struct.TYPE_8__* %66)
  %68 = call i64 @PREV_INSN(i64 %67)
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i64, i64* %3, align 8
  %72 = call i64 @NEXT_INSN(i64 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = call i64 @BB_HEAD(%struct.TYPE_8__* %73)
  %75 = call i64 @PREV_INSN(i64 %74)
  %76 = call i32 @delete_insn_chain(i64 %72, i64 %75)
  br label %77

77:                                               ; preds = %70, %64
  %78 = load i32, i32* @EDGE_FALLTHRU, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %24
  ret void
}

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_8__*) #1

declare dso_local i64 @BB_HEAD(%struct.TYPE_8__*) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @onlyjump_p(i64) #1

declare dso_local i64 @any_uncondjump_p(i64) #1

declare dso_local i64 @single_succ_p(%struct.TYPE_8__*) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i32 @delete_insn_chain(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
