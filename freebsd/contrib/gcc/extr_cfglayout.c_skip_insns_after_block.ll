; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfglayout.c_skip_insns_after_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfglayout.c_skip_insns_after_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@NULL_RTX = common dso_local global i64 0, align 8
@EXIT_BLOCK_PTR = common dso_local global i64 0, align 8
@ADDR_VEC = common dso_local global i32 0, align 4
@ADDR_DIFF_VEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*)* @skip_insns_after_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skip_insns_after_block(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load i64, i64* @NULL_RTX, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @EXIT_BLOCK_PTR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @BB_HEAD(i64 %16)
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = call i64 @BB_END(%struct.TYPE_4__* %19)
  store i64 %20, i64* %3, align 8
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %65, %41, %40, %38, %33, %18
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @NEXT_INSN(i64 %22)
  store i64 %23, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %72

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %72

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @GET_CODE(i64 %31)
  switch i32 %32, label %70 [
    i32 133, label %33
    i32 131, label %35
    i32 132, label %42
  ]

33:                                               ; preds = %30
  %34 = load i64, i64* %3, align 8
  store i64 %34, i64* %4, align 8
  br label %21

35:                                               ; preds = %30
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @NOTE_LINE_NUMBER(i64 %36)
  switch i32 %37, label %41 [
    i32 130, label %38
    i32 129, label %40
    i32 128, label %40
  ]

38:                                               ; preds = %35
  %39 = load i64, i64* %3, align 8
  store i64 %39, i64* %4, align 8
  br label %21

40:                                               ; preds = %35, %35
  br label %21

41:                                               ; preds = %35
  br label %21

42:                                               ; preds = %30
  %43 = load i64, i64* %3, align 8
  %44 = call i64 @NEXT_INSN(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load i64, i64* %3, align 8
  %48 = call i64 @NEXT_INSN(i64 %47)
  %49 = call i32 @JUMP_P(i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load i64, i64* %3, align 8
  %53 = call i64 @NEXT_INSN(i64 %52)
  %54 = call i64 @PATTERN(i64 %53)
  %55 = call i32 @GET_CODE(i64 %54)
  %56 = load i32, i32* @ADDR_VEC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* %3, align 8
  %60 = call i64 @NEXT_INSN(i64 %59)
  %61 = call i64 @PATTERN(i64 %60)
  %62 = call i32 @GET_CODE(i64 %61)
  %63 = load i32, i32* @ADDR_DIFF_VEC, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58, %51
  %66 = load i64, i64* %3, align 8
  %67 = call i64 @NEXT_INSN(i64 %66)
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %3, align 8
  store i64 %68, i64* %4, align 8
  br label %21

69:                                               ; preds = %58, %46, %42
  br label %71

70:                                               ; preds = %30
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %29, %21
  %73 = load i64, i64* %4, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %96, %72
  %75 = load i64, i64* %3, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = call i64 @BB_END(%struct.TYPE_4__* %76)
  %78 = icmp ne i64 %75, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %74
  %80 = load i64, i64* %3, align 8
  %81 = call i64 @PREV_INSN(i64 %80)
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %3, align 8
  %83 = call i64 @NOTE_P(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @NOTE_LINE_NUMBER(i64 %86)
  switch i32 %87, label %89 [
    i32 130, label %88
    i32 129, label %88
    i32 128, label %88
  ]

88:                                               ; preds = %85, %85, %85
  br label %96

89:                                               ; preds = %85
  %90 = load i64, i64* %3, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @reorder_insns(i64 %90, i64 %91, i64 %92)
  br label %94

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %79
  br label %96

96:                                               ; preds = %95, %88
  %97 = load i64, i64* %6, align 8
  store i64 %97, i64* %3, align 8
  br label %74

98:                                               ; preds = %74
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i64 @BB_HEAD(i64) #1

declare dso_local i64 @BB_END(%struct.TYPE_4__*) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i32 @JUMP_P(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @PREV_INSN(i64) #1

declare dso_local i64 @NOTE_P(i64) #1

declare dso_local i32 @reorder_insns(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
