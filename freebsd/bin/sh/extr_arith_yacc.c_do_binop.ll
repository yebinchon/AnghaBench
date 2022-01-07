; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yacc.c_do_binop.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_arith_yacc.c_do_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@ARITH_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"divide error\00", align 1
@CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @do_binop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_binop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %9 [
    i32 130, label %10
    i32 139, label %10
    i32 132, label %37
    i32 143, label %41
    i32 128, label %45
    i32 134, label %49
    i32 129, label %60
    i32 133, label %71
    i32 135, label %76
    i32 136, label %81
    i32 137, label %86
    i32 138, label %91
    i32 131, label %96
    i32 142, label %101
    i32 140, label %105
    i32 141, label %109
  ]

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %3, %3, %9
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 @yyerror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ARITH_MIN, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %19, %15
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 130
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = srem i32 %28, %29
  br label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sdiv i32 %32, %33
  br label %35

35:                                               ; preds = %31, %27
  %36 = phi i32 [ %30, %27 ], [ %34, %31 ]
  store i32 %36, i32* %4, align 4
  br label %113

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %4, align 4
  br label %113

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %4, align 4
  br label %113

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %4, align 4
  br label %113

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* @CHAR_BIT, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = sub i64 %55, 1
  %57 = and i64 %52, %56
  %58 = trunc i64 %57 to i32
  %59 = shl i32 %50, %58
  store i32 %59, i32* %4, align 4
  br label %113

60:                                               ; preds = %3
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32, i32* @CHAR_BIT, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = sub i64 %66, 1
  %68 = and i64 %63, %67
  %69 = trunc i64 %68 to i32
  %70 = ashr i32 %61, %69
  store i32 %70, i32* %4, align 4
  br label %113

71:                                               ; preds = %3
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %4, align 4
  br label %113

76:                                               ; preds = %3
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp sle i32 %77, %78
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %113

81:                                               ; preds = %3
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp sgt i32 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %4, align 4
  br label %113

86:                                               ; preds = %3
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sge i32 %87, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %113

91:                                               ; preds = %3
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %4, align 4
  br label %113

96:                                               ; preds = %3
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %97, %98
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %113

101:                                              ; preds = %3
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = and i32 %102, %103
  store i32 %104, i32* %4, align 4
  br label %113

105:                                              ; preds = %3
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = xor i32 %106, %107
  store i32 %108, i32* %4, align 4
  br label %113

109:                                              ; preds = %3
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %105, %101, %96, %91, %86, %81, %76, %71, %60, %49, %45, %41, %37, %35
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @yyerror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
