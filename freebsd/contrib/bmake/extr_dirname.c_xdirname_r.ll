; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dirname.c_xdirname_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_dirname.c_xdirname_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @xdirname_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xdirname_r(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i64 1, i64* %8, align 8
  br label %86

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %35, %17
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 47
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i1 [ false, %24 ], [ %32, %28 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %7, align 8
  br label %24

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %50, %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ugt i8* %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 47
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ false, %39 ], [ %47, %43 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 -1
  store i8* %52, i8** %7, align 8
  br label %39

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = icmp eq i8* %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)
  store i8* %63, i8** %4, align 8
  store i64 1, i64* %8, align 8
  br label %86

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %7, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ugt i8* %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load i8*, i8** %7, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br label %77

77:                                               ; preds = %72, %68
  %78 = phi i1 [ false, %68 ], [ %76, %72 ]
  br i1 %78, label %65, label %79

79:                                               ; preds = %77
  %80 = load i8*, i8** %7, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = ptrtoint i8* %80 to i64
  %83 = ptrtoint i8* %81 to i64
  %84 = sub i64 %82, %83
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %79, %57, %16
  %87 = load i8*, i8** %5, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %109

89:                                               ; preds = %86
  %90 = load i64, i64* %6, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %6, align 8
  %95 = sub i64 %94, 1
  %96 = call i64 @MIN(i64 %93, i64 %95)
  store i64 %96, i64* %6, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load i8*, i8** %4, align 8
  %99 = icmp ne i8* %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  %101 = load i8*, i8** %5, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = load i64, i64* %6, align 8
  %104 = call i32 @memcpy(i8* %101, i8* %102, i64 %103)
  br label %105

105:                                              ; preds = %100, %92
  %106 = load i8*, i8** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %105, %89, %86
  %110 = load i64, i64* %8, align 8
  ret i64 %110
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
