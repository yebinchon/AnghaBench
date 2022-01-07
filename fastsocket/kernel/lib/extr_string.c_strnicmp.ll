; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_string.c_strnicmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_string.c_strnicmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strnicmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8 0, i8* %8, align 1
  store i8 0, i8* %7, align 1
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %47, %11
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %7, align 1
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %8, align 1
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  %21 = load i8, i8* %7, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %51

24:                                               ; preds = %12
  %25 = load i8, i8* %8, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %51

28:                                               ; preds = %24
  %29 = load i8, i8* %7, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %8, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %47

35:                                               ; preds = %28
  %36 = load i8, i8* %7, align 1
  %37 = call zeroext i8 @tolower(i8 zeroext %36)
  store i8 %37, i8* %7, align 1
  %38 = load i8, i8* %8, align 1
  %39 = call zeroext i8 @tolower(i8 zeroext %38)
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %51

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %12, label %51

51:                                               ; preds = %47, %45, %27, %23
  br label %52

52:                                               ; preds = %51, %3
  %53 = load i8, i8* %7, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 %54, %56
  ret i32 %57
}

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
