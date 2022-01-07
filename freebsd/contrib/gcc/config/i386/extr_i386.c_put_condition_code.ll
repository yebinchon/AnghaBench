; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_put_condition_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_put_condition_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCFPmode = common dso_local global i32 0, align 4
@CCFPUmode = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nbe\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"nb\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ae\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"nu\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"np\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*)* @put_condition_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_condition_code(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @CCFPmode, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @CCFPUmode, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17, %5
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ix86_fp_comparison_codes(i32 %22, i32* %13, i32* %6, i32* %12)
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @UNKNOWN, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @UNKNOWN, align 4
  %30 = icmp eq i32 %28, %29
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi i1 [ false, %21 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ix86_fp_compare_code_to_integer(i32 %35)
  store i32 %36, i32* %6, align 4
  store i32 140, i32* %7, align 4
  br label %37

37:                                               ; preds = %31, %17
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @reverse_condition(i32 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %125 [
    i32 139, label %45
    i32 130, label %46
    i32 136, label %47
    i32 135, label %60
    i32 132, label %69
    i32 131, label %76
    i32 138, label %81
    i32 137, label %88
    i32 134, label %97
    i32 133, label %110
    i32 128, label %115
    i32 129, label %120
  ]

45:                                               ; preds = %43
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %127

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %127

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 140
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 141
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 143
  br label %56

56:                                               ; preds = %53, %50, %47
  %57 = phi i1 [ true, %50 ], [ true, %47 ], [ %55, %53 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @gcc_assert(i32 %58)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %127

60:                                               ; preds = %43
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 140
  %63 = zext i1 %62 to i32
  %64 = call i32 @gcc_assert(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  store i8* %68, i8** %11, align 8
  br label %127

69:                                               ; preds = %43
  %70 = load i32, i32* %7, align 4
  switch i32 %70, label %73 [
    i32 141, label %71
    i32 142, label %71
    i32 140, label %72
    i32 143, label %72
  ]

71:                                               ; preds = %69, %69
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  br label %75

72:                                               ; preds = %69, %69
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8** %11, align 8
  br label %75

73:                                               ; preds = %69
  %74 = call i32 (...) @gcc_unreachable()
  br label %75

75:                                               ; preds = %73, %72, %71
  br label %127

76:                                               ; preds = %43
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 140
  %79 = zext i1 %78 to i32
  %80 = call i32 @gcc_assert(i32 %79)
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  br label %127

81:                                               ; preds = %43
  %82 = load i32, i32* %7, align 4
  switch i32 %82, label %85 [
    i32 141, label %83
    i32 142, label %83
    i32 140, label %84
    i32 143, label %84
  ]

83:                                               ; preds = %81, %81
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %11, align 8
  br label %87

84:                                               ; preds = %81, %81
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %11, align 8
  br label %87

85:                                               ; preds = %81
  %86 = call i32 (...) @gcc_unreachable()
  br label %87

87:                                               ; preds = %85, %84, %83
  br label %127

88:                                               ; preds = %43
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 140
  %91 = zext i1 %90 to i32
  %92 = call i32 @gcc_assert(i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)
  store i8* %96, i8** %11, align 8
  br label %127

97:                                               ; preds = %43
  %98 = load i32, i32* %7, align 4
  %99 = icmp eq i32 %98, 140
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 143
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 141
  br label %106

106:                                              ; preds = %103, %100, %97
  %107 = phi i1 [ true, %100 ], [ true, %97 ], [ %105, %103 ]
  %108 = zext i1 %107 to i32
  %109 = call i32 @gcc_assert(i32 %108)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  br label %127

110:                                              ; preds = %43
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 140
  %113 = zext i1 %112 to i32
  %114 = call i32 @gcc_assert(i32 %113)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  br label %127

115:                                              ; preds = %43
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0)
  store i8* %119, i8** %11, align 8
  br label %127

120:                                              ; preds = %43
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)
  store i8* %124, i8** %11, align 8
  br label %127

125:                                              ; preds = %43
  %126 = call i32 (...) @gcc_unreachable()
  br label %127

127:                                              ; preds = %125, %120, %115, %110, %106, %88, %87, %76, %75, %60, %56, %46, %45
  %128 = load i8*, i8** %11, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @fputs(i8* %128, i32* %129)
  ret void
}

declare dso_local i32 @ix86_fp_comparison_codes(i32, i32*, i32*, i32*) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @ix86_fp_compare_code_to_integer(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
