; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_mark_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_mark_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@cptr = common dso_local global i32* null, align 8
@lineno = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@rprec = common dso_local global i64* null, align 8
@nrules = common dso_local global i64 0, align 8
@UNDEFINED = common dso_local global i64 0, align 8
@rassoc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mark_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_symbol() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  %4 = load i32*, i32** @cptr, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 37
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 92
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %0
  %13 = load i32*, i32** @cptr, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32* %14, i32** @cptr, align 8
  store i32 1, i32* %1, align 4
  br label %129

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 61
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** @cptr, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32* %20, i32** @cptr, align 8
  br label %68

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  %23 = icmp eq i32 %22, 112
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = icmp eq i32 %25, 80
  br i1 %26, label %27, label %62

27:                                               ; preds = %24, %21
  %28 = load i32*, i32** @cptr, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  %31 = icmp eq i32 %30, 114
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = icmp eq i32 %33, 82
  br i1 %34, label %35, label %62

35:                                               ; preds = %32, %27
  %36 = load i32*, i32** @cptr, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %2, align 4
  %39 = icmp eq i32 %38, 101
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 69
  br i1 %42, label %43, label %62

43:                                               ; preds = %40, %35
  %44 = load i32*, i32** @cptr, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %2, align 4
  %47 = icmp eq i32 %46, 99
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 67
  br i1 %50, label %51, label %62

51:                                               ; preds = %48, %43
  %52 = load i32*, i32** @cptr, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @IS_IDENT(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32*, i32** @cptr, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  store i32* %61, i32** @cptr, align 8
  br label %67

62:                                               ; preds = %51, %48, %40, %32, %24
  %63 = load i32, i32* @lineno, align 4
  %64 = load i32, i32* @line, align 4
  %65 = load i32*, i32** @cptr, align 8
  %66 = call i32 @syntax_error(i32 %63, i32 %64, i32* %65)
  br label %67

67:                                               ; preds = %62, %59
  br label %68

68:                                               ; preds = %67, %18
  %69 = call i32 (...) @nextc()
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %2, align 4
  %71 = call i64 @isalpha(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %82, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 %74, 95
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %2, align 4
  %78 = icmp eq i32 %77, 46
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %2, align 4
  %81 = icmp eq i32 %80, 36
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %76, %73, %68
  %83 = call %struct.TYPE_4__* (...) @get_name()
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %3, align 8
  br label %98

84:                                               ; preds = %79
  %85 = load i32, i32* %2, align 4
  %86 = icmp eq i32 %85, 39
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %2, align 4
  %89 = icmp eq i32 %88, 34
  br i1 %89, label %90, label %92

90:                                               ; preds = %87, %84
  %91 = call %struct.TYPE_4__* (...) @get_literal()
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %3, align 8
  br label %97

92:                                               ; preds = %87
  %93 = load i32, i32* @lineno, align 4
  %94 = load i32, i32* @line, align 4
  %95 = load i32*, i32** @cptr, align 8
  %96 = call i32 @syntax_error(i32 %93, i32 %94, i32* %95)
  br label %97

97:                                               ; preds = %92, %90
  br label %98

98:                                               ; preds = %97, %82
  %99 = load i64*, i64** @rprec, align 8
  %100 = load i64, i64* @nrules, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @UNDEFINED, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** @rprec, align 8
  %110 = load i64, i64* @nrules, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %108, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = call i32 (...) @prec_redeclared()
  br label %116

116:                                              ; preds = %114, %105, %98
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** @rprec, align 8
  %121 = load i64, i64* @nrules, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  store i64 %119, i64* %122, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32*, i32** @rassoc, align 8
  %127 = load i64, i64* @nrules, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %125, i32* %128, align 4
  store i32 0, i32* %1, align 4
  br label %129

129:                                              ; preds = %116, %12
  %130 = load i32, i32* %1, align 4
  ret i32 %130
}

declare dso_local i32 @IS_IDENT(i32) #1

declare dso_local i32 @syntax_error(i32, i32, i32*) #1

declare dso_local i32 @nextc(...) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local %struct.TYPE_4__* @get_name(...) #1

declare dso_local %struct.TYPE_4__* @get_literal(...) #1

declare dso_local i32 @prec_redeclared(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
