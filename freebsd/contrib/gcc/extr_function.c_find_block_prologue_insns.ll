; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_find_block_prologue_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_find_block_prologue_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@prologue_locator = common dso_local global i32 0, align 4
@NOTE_INSN_FUNCTION_BEG = common dso_local global i64 0, align 8
@optimize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @find_block_prologue_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_block_prologue_insns() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DECL_SOURCE_LINE(i32 %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = call i32* (...) @get_insns()
  store i32* %17, i32** %5, align 8
  br label %18

18:                                               ; preds = %73, %0
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %76

21:                                               ; preds = %18
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @INSN_P(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @insn_line(i32* %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = load i32*, i32** %2, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %5, align 8
  store i32* %34, i32** %2, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load i32*, i32** %5, align 8
  store i32* %38, i32** %3, align 8
  %39 = load i32, i32* @prologue_locator, align 4
  store i32 %39, i32* %11, align 4
  br label %48

40:                                               ; preds = %25
  %41 = load i32*, i32** %2, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %46, %43, %40
  br label %48

48:                                               ; preds = %47, %35
  br label %72

49:                                               ; preds = %21
  %50 = load i32*, i32** %5, align 8
  %51 = call i64 @NOTE_P(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @NOTE_LINE_NUMBER(i32* %54)
  %56 = load i64, i64* @NOTE_INSN_FUNCTION_BEG, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %10, align 4
  br label %71

59:                                               ; preds = %53, %49
  %60 = load i32*, i32** %5, align 8
  %61 = call i64 @NOTE_P(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @XINT(i32* %64, i32 5)
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32*, i32** %5, align 8
  store i32* %69, i32** %4, align 8
  br label %70

70:                                               ; preds = %68, %63, %59
  br label %71

71:                                               ; preds = %70, %58
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72
  %74 = load i32*, i32** %5, align 8
  %75 = call i32* @NEXT_INSN(i32* %74)
  store i32* %75, i32** %5, align 8
  br label %18

76:                                               ; preds = %18
  %77 = load i32*, i32** %2, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  store i32* null, i32** %1, align 8
  br label %129

80:                                               ; preds = %76
  %81 = load i32*, i32** %4, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @remove_insn(i32* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i64, i64* @optimize, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32* null, i32** %1, align 8
  br label %129

93:                                               ; preds = %89, %86
  %94 = load i32*, i32** %2, align 8
  store i32* %94, i32** %5, align 8
  br label %95

95:                                               ; preds = %99, %93
  %96 = load i32*, i32** %5, align 8
  %97 = load i32*, i32** %3, align 8
  %98 = icmp ne i32* %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = call i32* @NEXT_INSN(i32* %102)
  store i32* %103, i32** %5, align 8
  br label %95

104:                                              ; preds = %95
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %107, 2
  %109 = load i32, i32* %7, align 4
  %110 = icmp sle i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  store i32* null, i32** %1, align 8
  br label %129

112:                                              ; preds = %104
  %113 = load i32*, i32** %2, align 8
  %114 = icmp ne i32* %113, null
  %115 = zext i1 %114 to i32
  %116 = call i32 @gcc_assert(i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = icmp ne i32* %117, null
  %119 = zext i1 %118 to i32
  %120 = call i32 @gcc_assert(i32 %119)
  %121 = load i32*, i32** %2, align 8
  %122 = call i64 @BLOCK_FOR_INSN(i32* %121)
  %123 = load i32*, i32** %3, align 8
  %124 = call i64 @BLOCK_FOR_INSN(i32* %123)
  %125 = icmp ne i64 %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  store i32* null, i32** %1, align 8
  br label %129

127:                                              ; preds = %112
  %128 = load i32*, i32** %3, align 8
  store i32* %128, i32** %1, align 8
  br label %129

129:                                              ; preds = %127, %126, %111, %92, %79
  %130 = load i32*, i32** %1, align 8
  ret i32* %130
}

declare dso_local i32 @DECL_SOURCE_LINE(i32) #1

declare dso_local i32* @get_insns(...) #1

declare dso_local i64 @INSN_P(i32*) #1

declare dso_local i32 @insn_line(i32*) #1

declare dso_local i64 @NOTE_P(i32*) #1

declare dso_local i64 @NOTE_LINE_NUMBER(i32*) #1

declare dso_local i32 @XINT(i32*, i32) #1

declare dso_local i32* @NEXT_INSN(i32*) #1

declare dso_local i32 @remove_insn(i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @BLOCK_FOR_INSN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
