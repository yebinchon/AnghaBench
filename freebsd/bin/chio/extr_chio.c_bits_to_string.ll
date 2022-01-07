; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_bits_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_bits_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bits_to_string.buf = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"%c%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i8*)* @bits_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bits_to_string(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @bits_to_string.buf, i64 0, i64 0), i8** %8, align 8
  %9 = call i32 @memset(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @bits_to_string.buf, i64 0, i64 0), i32 0, i32 128)
  store i8 60, i8* %7, align 1
  br label %10

10:                                               ; preds = %57, %2
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  %13 = load i8, i8* %11, align 1
  store i8 %13, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %23, %16
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sge i32 %21, 32
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %5, align 8
  br label %18

26:                                               ; preds = %18
  %27 = load i64, i64* %3, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i8, i8* %6, align 1
  %30 = sext i8 %29 to i32
  %31 = sub nsw i32 %30, 1
  %32 = shl i32 1, %31
  %33 = and i32 %28, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %57

36:                                               ; preds = %26
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = sub i64 %39, ptrtoint ([128 x i8]* @bits_to_string.buf to i64)
  %41 = sub i64 128, %40
  %42 = trunc i64 %41 to i32
  %43 = load i8, i8* %7, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = trunc i64 %48 to i32
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @snprintf(i8* %37, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %43, i32 %49, i8* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = load i8*, i8** %8, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %8, align 8
  store i8 44, i8* %7, align 1
  br label %57

57:                                               ; preds = %36, %35
  %58 = load i8*, i8** %5, align 8
  store i8* %58, i8** %4, align 8
  br label %10

59:                                               ; preds = %10
  %60 = load i8, i8* %7, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 60
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  store i8 62, i8* %64, align 1
  br label %65

65:                                               ; preds = %63, %59
  ret i8* getelementptr inbounds ([128 x i8], [128 x i8]* @bits_to_string.buf, i64 0, i64 0)
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
