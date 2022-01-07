; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_uqd_oct.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_tar.c_uqd_oct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @uqd_oct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uqd_oct(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %29 [
    i32 3, label %17
    i32 2, label %20
    i32 1, label %25
    i32 0, label %28
  ]

17:                                               ; preds = %4
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 -1
  store i8* %19, i8** %10, align 8
  store i8 0, i8* %18, align 1
  br label %34

20:                                               ; preds = %4
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %10, align 8
  store i8 32, i8* %21, align 1
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 -1
  store i8* %24, i8** %10, align 8
  store i8 0, i8* %23, align 1
  br label %34

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 -1
  store i8* %27, i8** %10, align 8
  store i8 32, i8* %26, align 1
  br label %34

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %4, %28
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %31, i8** %10, align 8
  store i8 0, i8* %30, align 1
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %33, i8** %10, align 8
  store i8 32, i8* %32, align 1
  br label %34

34:                                               ; preds = %29, %25, %20, %17
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp uge i8* %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 7
  %42 = trunc i32 %41 to i8
  %43 = sext i8 %42 to i32
  %44 = add nsw i32 48, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %10, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 3
  store i32 %49, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %53

52:                                               ; preds = %39
  br label %35

53:                                               ; preds = %51, %35
  br label %54

54:                                               ; preds = %58, %53
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp uge i8* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %10, align 8
  store i8 48, i8* %59, align 1
  br label %54

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 -1, i32* %5, align 4
  br label %66

65:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
