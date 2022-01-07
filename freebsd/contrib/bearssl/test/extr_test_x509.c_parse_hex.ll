; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_parse_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_x509.c_parse_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"invalid hexadecimal character in '%s' (line %ld)\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"invalid hexadecimal value (partial byte) in '%s' (line %ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64*)* @parse_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_hex(i8* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  store i8* null, i8** %9, align 8
  br label %15

15:                                               ; preds = %118, %4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %95, %15
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %98

22:                                               ; preds = %16
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp sge i32 %28, 48
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %14, align 4
  %32 = icmp sle i32 %31, 57
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %14, align 4
  %35 = sub nsw i32 %34, 48
  store i32 %35, i32* %14, align 4
  br label %70

36:                                               ; preds = %30, %22
  %37 = load i32, i32* %14, align 4
  %38 = icmp sge i32 %37, 65
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %14, align 4
  %41 = icmp sle i32 %40, 70
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %14, align 4
  %44 = sub nsw i32 %43, 55
  store i32 %44, i32* %14, align 4
  br label %69

45:                                               ; preds = %39, %36
  %46 = load i32, i32* %14, align 4
  %47 = icmp sge i32 %46, 97
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* %14, align 4
  %50 = icmp sle i32 %49, 102
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %14, align 4
  %53 = sub nsw i32 %52, 87
  store i32 %53, i32* %14, align 4
  br label %68

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %14, align 4
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 58
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54
  br label %95

61:                                               ; preds = %57
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %63, i64 %64)
  %66 = load i32, i32* @EXIT_FAILURE, align 4
  %67 = call i32 @exit(i32 %66) #3
  unreachable

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %42
  br label %70

70:                                               ; preds = %69, %33
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %77, 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %78, %79
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %9, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8 %81, i8* %84, align 1
  br label %85

85:                                               ; preds = %76, %73
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %11, align 8
  br label %90

88:                                               ; preds = %70
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %90, %60
  %96 = load i64, i64* %10, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %10, align 8
  br label %16

98:                                               ; preds = %16
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i32, i32* @stderr, align 4
  %103 = load i8*, i8** %5, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %103, i64 %104)
  %106 = load i32, i32* @EXIT_FAILURE, align 4
  %107 = call i32 @exit(i32 %106) #3
  unreachable

108:                                              ; preds = %98
  %109 = load i8*, i8** %9, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i64, i64* %11, align 8
  %113 = call i8* @xmalloc(i64 %112)
  store i8* %113, i8** %9, align 8
  br label %118

114:                                              ; preds = %108
  %115 = load i64, i64* %11, align 8
  %116 = load i64*, i64** %8, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i8*, i8** %9, align 8
  ret i8* %117

118:                                              ; preds = %111
  br label %15
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @xmalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
