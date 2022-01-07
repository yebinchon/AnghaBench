; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_math.c_check_eqz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_math.c_check_eqz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i64, i32*)* }

@impl = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Mismatch:\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"  x = \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"  ex = \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"  z = \00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @check_eqz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_eqz(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1000 x i8], align 16
  %6 = alloca [1000 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 31
  %16 = and i32 %15, -32
  %17 = ashr i32 %16, 3
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @impl, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i8*, i64, i32*)*, i32 (i8*, i64, i32*)** %20, align 8
  %22 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %23 = load i64, i64* %7, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 %21(i8* %22, i64 %23, i32* %24)
  %26 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mpz_export(i8* %26, i64* %8, i32 1, i32 1, i32 0, i32 0, i32 %27)
  store i32 1, i32* %9, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %58

33:                                               ; preds = %2
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %10, align 8
  br label %39

39:                                               ; preds = %53, %37
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %44, %45
  %47 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %56

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %10, align 8
  br label %39

56:                                               ; preds = %51, %39
  br label %57

57:                                               ; preds = %56, %33
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* %8, align 8
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @memcmp(i8* %67, i8* %68, i64 %69)
  %71 = icmp eq i64 %70, 0
  br label %72

72:                                               ; preds = %61, %58
  %73 = phi i1 [ false, %58 ], [ %71, %61 ]
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %105, label %77

77:                                               ; preds = %72
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @print_u(i32* %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %84

84:                                               ; preds = %94, %77
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %88
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %11, align 8
  br label %84

97:                                               ; preds = %84
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @print_z(i32 %100)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = call i32 @exit(i32 %103) #3
  unreachable

105:                                              ; preds = %72
  ret void
}

declare dso_local i32 @mpz_export(i8*, i64*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @print_u(i32*) #1

declare dso_local i32 @print_z(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
