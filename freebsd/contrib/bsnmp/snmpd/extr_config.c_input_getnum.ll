; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_input_getnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_input_getnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numval = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"bad number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @input_getnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_getnum(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* @numval, align 8
  br label %7

7:                                                ; preds = %94, %2
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp slt i64 %11, %12
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i1 [ true, %7 ], [ %13, %10 ]
  br i1 %15, label %16, label %97

16:                                               ; preds = %14
  %17 = call i32 (...) @input_getc()
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @report(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  br label %97

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @isdigit(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 56
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 57
  br i1 %38, label %39, label %47

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @input_ungetc(i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @report(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  br label %97

47:                                               ; preds = %36, %30
  %48 = load i64, i64* @numval, align 8
  %49 = load i64, i64* %3, align 8
  %50 = mul nsw i64 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %51, 48
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %50, %53
  store i64 %54, i64* @numval, align 8
  br label %94

55:                                               ; preds = %26
  %56 = load i64, i64* %3, align 8
  %57 = icmp eq i64 %56, 16
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @isxdigit(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @islower(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i64, i64* @numval, align 8
  %68 = load i64, i64* %3, align 8
  %69 = mul nsw i64 %67, %68
  %70 = load i32, i32* %5, align 4
  %71 = sub nsw i32 %70, 97
  %72 = add nsw i32 %71, 10
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %69, %73
  store i64 %74, i64* @numval, align 8
  br label %84

75:                                               ; preds = %62
  %76 = load i64, i64* @numval, align 8
  %77 = load i64, i64* %3, align 8
  %78 = mul nsw i64 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %79, 65
  %81 = add nsw i32 %80, 10
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %78, %82
  store i64 %83, i64* @numval, align 8
  br label %84

84:                                               ; preds = %75, %66
  br label %93

85:                                               ; preds = %58, %55
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @input_ungetc(i32 %86)
  %88 = load i64, i64* %6, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = call i32 @report(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %85
  br label %97

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %47
  %95 = load i64, i64* %6, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %6, align 8
  br label %7

97:                                               ; preds = %25, %46, %92, %14
  ret void
}

declare dso_local i32 @input_getc(...) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @input_ungetc(i32) #1

declare dso_local i64 @isxdigit(i32) #1

declare dso_local i64 @islower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
