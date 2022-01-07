; ModuleID = '/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_binop.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/test/extr_test.c_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@t_wp = common dso_local global i8** null, align 8
@nargc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"argument expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @binop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i8**, i8*** @t_wp, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  %9 = load i64, i64* @nargc, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i64, i64* @nargc, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* @nargc, align 8
  %14 = load i8**, i8*** @t_wp, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i32 1
  store i8** %15, i8*** @t_wp, align 8
  %16 = load i8*, i8** %15, align 8
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %11
  %19 = phi i8* [ %16, %11 ], [ null, %17 ]
  store i8* %19, i8** %5, align 8
  %20 = load i64, i64* @nargc, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* @nargc, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* @nargc, align 8
  %25 = load i8**, i8*** @t_wp, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i32 1
  store i8** %26, i8*** @t_wp, align 8
  %27 = load i8*, i8** %26, align 8
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i8* [ %27, %22 ], [ null, %28 ]
  store i8* %30, i8** %6, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @syntax(i8* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %3, align 4
  switch i32 %36, label %109 [
    i32 131, label %37
    i32 128, label %43
    i32 129, label %49
    i32 130, label %55
    i32 137, label %61
    i32 132, label %67
    i32 136, label %73
    i32 135, label %79
    i32 134, label %85
    i32 133, label %91
    i32 139, label %97
    i32 138, label %101
    i32 140, label %105
  ]

37:                                               ; preds = %35
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @strcmp(i8* %38, i8* %39)
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %111

43:                                               ; preds = %35
  %44 = load i8*, i8** %4, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strcmp(i8* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %2, align 4
  br label %111

49:                                               ; preds = %35
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strcmp(i8* %50, i8* %51)
  %53 = icmp slt i32 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %111

55:                                               ; preds = %35
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strcmp(i8* %56, i8* %57)
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %2, align 4
  br label %111

61:                                               ; preds = %35
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @intcmp(i8* %62, i8* %63)
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %2, align 4
  br label %111

67:                                               ; preds = %35
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @intcmp(i8* %68, i8* %69)
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %2, align 4
  br label %111

73:                                               ; preds = %35
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @intcmp(i8* %74, i8* %75)
  %77 = icmp sge i32 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %2, align 4
  br label %111

79:                                               ; preds = %35
  %80 = load i8*, i8** %4, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @intcmp(i8* %80, i8* %81)
  %83 = icmp sgt i32 %82, 0
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %2, align 4
  br label %111

85:                                               ; preds = %35
  %86 = load i8*, i8** %4, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = call i32 @intcmp(i8* %86, i8* %87)
  %89 = icmp sle i32 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %2, align 4
  br label %111

91:                                               ; preds = %35
  %92 = load i8*, i8** %4, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = call i32 @intcmp(i8* %92, i8* %93)
  %95 = icmp slt i32 %94, 0
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %2, align 4
  br label %111

97:                                               ; preds = %35
  %98 = load i8*, i8** %4, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @newerf(i8* %98, i8* %99)
  store i32 %100, i32* %2, align 4
  br label %111

101:                                              ; preds = %35
  %102 = load i8*, i8** %4, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @olderf(i8* %102, i8* %103)
  store i32 %104, i32* %2, align 4
  br label %111

105:                                              ; preds = %35
  %106 = load i8*, i8** %4, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i32 @equalf(i8* %106, i8* %107)
  store i32 %108, i32* %2, align 4
  br label %111

109:                                              ; preds = %35
  %110 = call i32 (...) @abort() #3
  unreachable

111:                                              ; preds = %105, %101, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %37
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @syntax(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @intcmp(i8*, i8*) #1

declare dso_local i32 @newerf(i8*, i8*) #1

declare dso_local i32 @olderf(i8*, i8*) #1

declare dso_local i32 @equalf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
