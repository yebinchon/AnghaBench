; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_skip_to_closing_parenthesis.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_skip_to_closing_parenthesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, i32)* @cp_parser_skip_to_closing_parenthesis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_skip_to_closing_parenthesis(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = call i64 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_7__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %91

23:                                               ; preds = %18, %15, %4
  br label %24

24:                                               ; preds = %23, %86
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_6__* @cp_lexer_peek_token(i32 %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %12, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %85 [
    i32 132, label %32
    i32 129, label %32
    i32 128, label %33
    i32 131, label %38
    i32 135, label %41
    i32 133, label %47
    i32 130, label %61
    i32 134, label %68
  ]

32:                                               ; preds = %24, %24
  store i32 0, i32* %5, align 4
  br label %91

33:                                               ; preds = %24
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %91

37:                                               ; preds = %33
  br label %86

38:                                               ; preds = %24
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %86

41:                                               ; preds = %24
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, -1
  store i32 %43, i32* %11, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %91

46:                                               ; preds = %41
  br label %86

47:                                               ; preds = %24
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %91

60:                                               ; preds = %56, %53, %50, %47
  br label %86

61:                                               ; preds = %24
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %86

68:                                               ; preds = %24
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, -1
  store i32 %73, i32* %10, align 4
  %74 = icmp ne i32 %72, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cp_lexer_consume_token(i32 %81)
  br label %83

83:                                               ; preds = %78, %75
  store i32 1, i32* %5, align 4
  br label %91

84:                                               ; preds = %71, %68
  br label %86

85:                                               ; preds = %24
  br label %86

86:                                               ; preds = %85, %84, %67, %60, %46, %38, %37
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @cp_lexer_consume_token(i32 %89)
  br label %24

91:                                               ; preds = %83, %59, %45, %36, %32, %22
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @cp_parser_uncommitted_to_tentative_parse_p(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_6__* @cp_lexer_peek_token(i32) #1

declare dso_local i32 @cp_lexer_consume_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
