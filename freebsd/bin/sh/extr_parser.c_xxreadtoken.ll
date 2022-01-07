; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_xxreadtoken.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_xxreadtoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tokpushback = common dso_local global i64 0, align 8
@lasttoken = common dso_local global i32 0, align 4
@needprompt = common dso_local global i64 0, align 8
@plinno = common dso_local global i32 0, align 4
@startlinno = common dso_local global i32 0, align 4
@doprompt = common dso_local global i64 0, align 8
@BASESYNTAX = common dso_local global i32 0, align 4
@TNL = common dso_local global i32 0, align 4
@TEOF = common dso_local global i32 0, align 4
@TAND = common dso_local global i32 0, align 4
@TBACKGND = common dso_local global i32 0, align 4
@TOR = common dso_local global i32 0, align 4
@TPIPE = common dso_local global i32 0, align 4
@TENDCASE = common dso_local global i32 0, align 4
@TFALLTHRU = common dso_local global i32 0, align 4
@TSEMI = common dso_local global i32 0, align 4
@TLP = common dso_local global i32 0, align 4
@TRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @xxreadtoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xxreadtoken() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @tokpushback, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  store i64 0, i64* @tokpushback, align 8
  %6 = load i32, i32* @lasttoken, align 4
  store i32 %6, i32* %1, align 4
  br label %108

7:                                                ; preds = %0
  %8 = load i64, i64* @needprompt, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @setprompt(i32 2)
  store i64 0, i64* @needprompt, align 8
  br label %12

12:                                               ; preds = %10, %7
  %13 = load i32, i32* @plinno, align 4
  store i32 %13, i32* @startlinno, align 4
  br label %14

14:                                               ; preds = %107, %44, %29, %17, %12
  %15 = call i32 (...) @pgetc_macro()
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  switch i32 %16, label %47 [
    i32 32, label %17
    i32 9, label %17
    i32 35, label %18
    i32 92, label %31
    i32 10, label %51
    i32 128, label %57
    i32 38, label %60
    i32 124, label %71
    i32 59, label %82
    i32 40, label %101
    i32 41, label %104
  ]

17:                                               ; preds = %14, %14
  br label %14

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %28, %18
  %20 = call signext i8 (...) @pgetc()
  %21 = sext i8 %20 to i32
  store i32 %21, i32* %2, align 4
  %22 = icmp ne i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %2, align 4
  %25 = icmp ne i32 %24, 128
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ]
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  br label %19

29:                                               ; preds = %26
  %30 = call i32 (...) @pungetc()
  br label %14

31:                                               ; preds = %14
  %32 = call signext i8 (...) @pgetc()
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32, i32* @plinno, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @plinno, align 4
  store i32 %37, i32* @startlinno, align 4
  %38 = load i64, i64* @doprompt, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @setprompt(i32 2)
  br label %44

42:                                               ; preds = %35
  %43 = call i32 @setprompt(i32 0)
  br label %44

44:                                               ; preds = %42, %40
  br label %14

45:                                               ; preds = %31
  %46 = call i32 (...) @pungetc()
  br label %47

47:                                               ; preds = %14, %45
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @BASESYNTAX, align 4
  %50 = call i32 @readtoken1(i32 %48, i32 %49, i8* null, i32 0)
  store i32 %50, i32* %1, align 4
  br label %108

51:                                               ; preds = %14
  %52 = load i32, i32* @plinno, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @plinno, align 4
  %54 = load i64, i64* @doprompt, align 8
  store i64 %54, i64* @needprompt, align 8
  %55 = load i32, i32* @TNL, align 4
  %56 = call i32 @RETURN(i32 %55)
  br label %57

57:                                               ; preds = %14, %51
  %58 = load i32, i32* @TEOF, align 4
  %59 = call i32 @RETURN(i32 %58)
  br label %60

60:                                               ; preds = %14, %57
  %61 = call signext i8 (...) @pgetc_linecont()
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 38
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @TAND, align 4
  %66 = call i32 @RETURN(i32 %65)
  br label %67

67:                                               ; preds = %64, %60
  %68 = call i32 (...) @pungetc()
  %69 = load i32, i32* @TBACKGND, align 4
  %70 = call i32 @RETURN(i32 %69)
  br label %71

71:                                               ; preds = %14, %67
  %72 = call signext i8 (...) @pgetc_linecont()
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 124
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @TOR, align 4
  %77 = call i32 @RETURN(i32 %76)
  br label %78

78:                                               ; preds = %75, %71
  %79 = call i32 (...) @pungetc()
  %80 = load i32, i32* @TPIPE, align 4
  %81 = call i32 @RETURN(i32 %80)
  br label %82

82:                                               ; preds = %14, %78
  %83 = call signext i8 (...) @pgetc_linecont()
  %84 = sext i8 %83 to i32
  store i32 %84, i32* %2, align 4
  %85 = load i32, i32* %2, align 4
  %86 = icmp eq i32 %85, 59
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @TENDCASE, align 4
  %89 = call i32 @RETURN(i32 %88)
  br label %97

90:                                               ; preds = %82
  %91 = load i32, i32* %2, align 4
  %92 = icmp eq i32 %91, 38
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @TFALLTHRU, align 4
  %95 = call i32 @RETURN(i32 %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %87
  %98 = call i32 (...) @pungetc()
  %99 = load i32, i32* @TSEMI, align 4
  %100 = call i32 @RETURN(i32 %99)
  br label %101

101:                                              ; preds = %14, %97
  %102 = load i32, i32* @TLP, align 4
  %103 = call i32 @RETURN(i32 %102)
  br label %104

104:                                              ; preds = %14, %101
  %105 = load i32, i32* @TRP, align 4
  %106 = call i32 @RETURN(i32 %105)
  br label %107

107:                                              ; preds = %104
  br label %14

108:                                              ; preds = %47, %5
  %109 = load i32, i32* %1, align 4
  ret i32 %109
}

declare dso_local i32 @setprompt(i32) #1

declare dso_local i32 @pgetc_macro(...) #1

declare dso_local signext i8 @pgetc(...) #1

declare dso_local i32 @pungetc(...) #1

declare dso_local i32 @readtoken1(i32, i32, i8*, i32) #1

declare dso_local i32 @RETURN(i32) #1

declare dso_local signext i8 @pgetc_linecont(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
