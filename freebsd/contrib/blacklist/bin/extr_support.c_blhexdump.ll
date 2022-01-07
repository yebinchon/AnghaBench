; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_support.c_blhexdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_support.c_blhexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blhexdump(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %15, align 8
  %18 = load i8*, i8** %15, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @snprintf(i8* %21, i64 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %69

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %12, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %33, %28
  br label %36

36:                                               ; preds = %65, %35
  %37 = load i8*, i8** %15, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %13, align 8
  %46 = sub i64 %44, %45
  %47 = load i8*, i8** %15, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %15, align 8
  %49 = load i8, i8* %47, align 1
  %50 = zext i8 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @snprintf(i8* %43, i64 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  store i32 -1, i32* %6, align 4
  br label %69

56:                                               ; preds = %40
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %12, align 8
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %63, %56
  br label %36

66:                                               ; preds = %36
  %67 = load i64, i64* %12, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %55, %27
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
