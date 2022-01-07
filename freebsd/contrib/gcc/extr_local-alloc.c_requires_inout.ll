; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_requires_inout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_requires_inout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NO_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @requires_inout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @requires_inout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %55, %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %3, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %8
  %13 = load i8, i8* %3, align 1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @CONSTRAINT_LEN(i8 signext %13, i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i8, i8* %3, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %40 [
    i32 61, label %18
    i32 43, label %18
    i32 63, label %18
    i32 35, label %18
    i32 38, label %18
    i32 33, label %18
    i32 42, label %18
    i32 37, label %18
    i32 109, label %18
    i32 60, label %18
    i32 62, label %18
    i32 86, label %18
    i32 111, label %18
    i32 69, label %18
    i32 70, label %18
    i32 71, label %18
    i32 72, label %18
    i32 115, label %18
    i32 105, label %18
    i32 110, label %18
    i32 73, label %18
    i32 74, label %18
    i32 75, label %18
    i32 76, label %18
    i32 77, label %18
    i32 78, label %18
    i32 79, label %18
    i32 80, label %18
    i32 88, label %18
    i32 44, label %19
    i32 48, label %29
    i32 49, label %30
    i32 50, label %30
    i32 51, label %30
    i32 52, label %30
    i32 53, label %30
    i32 54, label %30
    i32 55, label %30
    i32 56, label %30
    i32 57, label %30
    i32 112, label %53
    i32 103, label %53
    i32 114, label %53
  ]

18:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12
  br label %54

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %22, %19
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %54

29:                                               ; preds = %12
  store i32 1, i32* %4, align 4
  br label %54

30:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12
  br label %31

31:                                               ; preds = %34, %30
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %2, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %2, align 8
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @ISDIGIT(i8 signext %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %31, label %39

39:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %54

40:                                               ; preds = %12
  %41 = load i8, i8* %3, align 1
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @REG_CLASS_FROM_CONSTRAINT(i8 signext %41, i8* %42)
  %44 = load i32, i32* @NO_REGS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i8, i8* %3, align 1
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @EXTRA_ADDRESS_CONSTRAINT(i8 signext %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %54

52:                                               ; preds = %46, %40
  br label %53

53:                                               ; preds = %12, %12, %12, %52
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %51, %39, %29, %28, %18
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %2, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %2, align 8
  br label %8

60:                                               ; preds = %8
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %63, %60
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @CONSTRAINT_LEN(i8 signext, i8*) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @REG_CLASS_FROM_CONSTRAINT(i8 signext, i8*) #1

declare dso_local i32 @EXTRA_ADDRESS_CONSTRAINT(i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
