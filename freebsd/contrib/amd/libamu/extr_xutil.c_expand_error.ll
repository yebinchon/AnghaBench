; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_expand_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_expand_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i64)* @expand_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_error(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @errno, align 4
  store i32 %12, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %13 = load i8*, i8** %5, align 8
  store i8 0, i8* %13, align 1
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %70, %3
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = load i8*, i8** %8, align 8
  store i8 %22, i8* %23, align 1
  %24 = sext i8 %22 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %20, %16
  %27 = phi i1 [ false, %16 ], [ %25, %20 ]
  br i1 %27, label %28, label %77

28:                                               ; preds = %26
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %69

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 109
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %6, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %77

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub i64 %49, %50
  %52 = call i32 @xstrlcpy(i8* %46, i32 %48, i64 %51)
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strlen(i8* %53)
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %11, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i64, i64* %11, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %11, align 8
  br label %60

60:                                               ; preds = %57, %45
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  br label %69

69:                                               ; preds = %60, %34, %28
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %7, align 8
  br label %16

77:                                               ; preds = %44, %26
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = sub i64 %79, 1
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i8*, i8** %5, align 8
  ret i8* %82
}

declare dso_local i32 @xstrlcpy(i8*, i32, i64) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
