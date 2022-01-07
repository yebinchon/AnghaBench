; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_primary.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOI = common dso_local global i32 0, align 4
@LPAREN = common dso_local global i32 0, align 4
@parenlevel = common dso_local global i32 0, align 4
@nargc = common dso_local global i64 0, align 8
@t_wp = common dso_local global i32** null, align 8
@RPAREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"closing paren expected\00", align 1
@UNOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"argument expected\00", align 1
@BINOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @primary(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EOI, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LPAREN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = load i32, i32* @parenlevel, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @parenlevel, align 4
  %17 = load i64, i64* @nargc, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i64, i64* @nargc, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* @nargc, align 8
  %22 = load i32**, i32*** @t_wp, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i32 1
  store i32** %23, i32*** @t_wp, align 8
  %24 = load i32*, i32** %23, align 8
  br label %26

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32* [ %24, %19 ], [ null, %25 ]
  %28 = ptrtoint i32* %27 to i64
  %29 = call i32 @t_lex(i64 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @RPAREN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @parenlevel, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* @parenlevel, align 4
  store i32 0, i32* %2, align 4
  br label %123

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @oexpr(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* @nargc, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i64, i64* @nargc, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* @nargc, align 8
  %43 = load i32**, i32*** @t_wp, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i32 1
  store i32** %44, i32*** @t_wp, align 8
  %45 = load i32*, i32** %44, align 8
  br label %47

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %40
  %48 = phi i32* [ %45, %40 ], [ null, %46 ]
  %49 = ptrtoint i32* %48 to i64
  %50 = call i32 @t_lex(i64 %49)
  %51 = load i32, i32* @RPAREN, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @syntax(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* @parenlevel, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* @parenlevel, align 4
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %123

59:                                               ; preds = %10
  %60 = load i32, i32* %3, align 4
  %61 = call i64 @TOKEN_TYPE(i32 %60)
  %62 = load i64, i64* @UNOP, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %59
  %65 = load i64, i64* @nargc, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* @nargc, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @syntax(i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %3, align 4
  switch i32 %71, label %92 [
    i32 129, label %72
    i32 128, label %79
    i32 130, label %86
  ]

72:                                               ; preds = %70
  %73 = load i32**, i32*** @t_wp, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i32 1
  store i32** %74, i32*** @t_wp, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @strlen(i32* %75)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %2, align 4
  br label %123

79:                                               ; preds = %70
  %80 = load i32**, i32*** @t_wp, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i32 1
  store i32** %81, i32*** @t_wp, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = call i64 @strlen(i32* %82)
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %2, align 4
  br label %123

86:                                               ; preds = %70
  %87 = load i32**, i32*** @t_wp, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i32 1
  store i32** %88, i32*** @t_wp, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @getn(i32* %89)
  %91 = call i32 @isatty(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %123

92:                                               ; preds = %70
  %93 = load i32**, i32*** @t_wp, align 8
  %94 = getelementptr inbounds i32*, i32** %93, i32 1
  store i32** %94, i32*** @t_wp, align 8
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @filstat(i32* %95, i32 %96)
  store i32 %97, i32* %2, align 4
  br label %123

98:                                               ; preds = %59
  %99 = load i64, i64* @nargc, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32**, i32*** @t_wp, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 1
  %104 = load i32*, i32** %103, align 8
  br label %106

105:                                              ; preds = %98
  br label %106

106:                                              ; preds = %105, %101
  %107 = phi i32* [ %104, %101 ], [ null, %105 ]
  %108 = ptrtoint i32* %107 to i64
  %109 = call i32 @t_lex(i64 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @TOKEN_TYPE(i32 %110)
  %112 = load i64, i64* @BINOP, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @binop(i32 %115)
  store i32 %116, i32* %2, align 4
  br label %123

117:                                              ; preds = %106
  %118 = load i32**, i32*** @t_wp, align 8
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @strlen(i32* %119)
  %121 = icmp sgt i64 %120, 0
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %117, %114, %92, %86, %79, %72, %55, %32, %9
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @t_lex(i64) #1

declare dso_local i32 @oexpr(i32) #1

declare dso_local i32 @syntax(i32*, i8*) #1

declare dso_local i64 @TOKEN_TYPE(i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @getn(i32*) #1

declare dso_local i32 @filstat(i32*, i32) #1

declare dso_local i32 @binop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
