; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_dso-data.c_test_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_dso-data.c_test_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_file.buf_templ = internal global [17 x i8] c"/tmp/test-XXXXXX\00", align 16
@.str = private unnamed_addr constant [15 x i8] c"mkstemp failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @test_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_file(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @test_file.buf_templ, i64 0, i64 0), i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @mkstemp(i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %50

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @close(i32 %20)
  store i8* null, i8** %2, align 8
  br label %50

22:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = srem i32 %28, 10
  %30 = trunc i32 %29 to i8
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @write(i32 %40, i8* %41, i32 %42)
  %44 = icmp ne i32 %39, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i8* null, i8** %4, align 8
  br label %46

46:                                               ; preds = %45, %38
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i8*, i8** %4, align 8
  store i8* %49, i8** %2, align 8
  br label %50

50:                                               ; preds = %46, %19, %12
  %51 = load i8*, i8** %2, align 8
  ret i8* %51
}

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
