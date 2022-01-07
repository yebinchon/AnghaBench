; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_test_transactions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr-util/test/extr_dbd.c_test_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Transaction 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Start transaction failed!\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"UPDATE apr_dbd_test SET col2 = 'failed'\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Update failed: '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%d rows updated\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"INSERT INTO apr_dbd_test1 (col3) values (3)\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Oops, invalid op succeeded but shouldn't!\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"INSERT INTO apr_dbd_test values ('zzz', 'aaa', 3)\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"Valid insert returned %d.  Should be nonzero (fail) because transaction is bad\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"End transaction failed!\0A%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [120 x i8] c"Transaction ended (should be rollback) - viewing table\0AA column of \22failed\22 indicates transaction failed (no rollback)\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Transaction 2\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"UPDATE apr_dbd_test SET col2 = 'success'\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"INSERT INTO apr_dbd_test values ('aaa', 'zzz', 3)\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Valid insert returned %d.  Should be zero (OK)\0A\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"Transaction ended (should be commit) - viewing table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @test_transactions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_transactions(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @apr_dbd_transaction_start(i32* %13, i32* %14, i32* %15, i32** %10)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @apr_dbd_error(i32* %20, i32* %21, i32 %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %142

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @apr_dbd_query(i32* %27, i32* %28, i32* %9, i8* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %26
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @apr_dbd_error(i32* %34, i32* %35, i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @apr_dbd_transaction_end(i32* %39, i32* %40, i32* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %142

44:                                               ; preds = %26
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8** %11, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @apr_dbd_query(i32* %47, i32* %48, i32* %9, i8* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %44
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i8** %11, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @apr_dbd_query(i32* %56, i32* %57, i32* %9, i8* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @apr_dbd_transaction_end(i32* %62, i32* %63, i32* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %55
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i8* @apr_dbd_error(i32* %69, i32* %70, i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %4, align 4
  br label %142

75:                                               ; preds = %55
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.10, i64 0, i64 0))
  %77 = load i32*, i32** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @select_sequential(i32* %77, i32* %78, i32* %79)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @apr_dbd_transaction_start(i32* %82, i32* %83, i32* %84, i32** %10)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i8* @apr_dbd_error(i32* %89, i32* %90, i32 %91)
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %142

95:                                               ; preds = %75
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @apr_dbd_query(i32* %96, i32* %97, i32* %9, i8* %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load i32*, i32** %7, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i8* @apr_dbd_error(i32* %103, i32* %104, i32 %105)
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %106)
  %108 = load i32*, i32** %7, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @apr_dbd_transaction_end(i32* %108, i32* %109, i32* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %142

113:                                              ; preds = %95
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i32*, i32** %6, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @apr_dbd_query(i32* %116, i32* %117, i32* %9, i8* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %7, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @apr_dbd_transaction_end(i32* %122, i32* %123, i32* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %113
  %129 = load i32*, i32** %7, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %8, align 4
  %132 = call i8* @apr_dbd_error(i32* %129, i32* %130, i32 %131)
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %132)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %142

135:                                              ; preds = %113
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i64 0, i64 0))
  %137 = load i32*, i32** %5, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @select_sequential(i32* %137, i32* %138, i32* %139)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %135, %128, %102, %88, %68, %33, %19
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @apr_dbd_transaction_start(i32*, i32*, i32*, i32**) #1

declare dso_local i8* @apr_dbd_error(i32*, i32*, i32) #1

declare dso_local i32 @apr_dbd_query(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @apr_dbd_transaction_end(i32*, i32*, i32*) #1

declare dso_local i32 @select_sequential(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
