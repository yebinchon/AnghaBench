; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_repo.c_extract_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_repo.c_extract_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@temporary_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @extract_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @extract_string(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8** %0, i8*** %2, align 8
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %55, %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %6, align 1
  %12 = load i8, i8* %6, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %56

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8, i8* %6, align 1
  %23 = call i32 @obstack_1grow(i32* @temporary_obstack, i8 signext %22)
  store i32 0, i32* %4, align 4
  br label %55

24:                                               ; preds = %16
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load i8, i8* %6, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 32
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %56

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load i8, i8* %6, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 92
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %53

40:                                               ; preds = %35, %32
  %41 = load i8, i8* %6, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 39
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load i8, i8* %6, align 1
  %51 = call i32 @obstack_1grow(i32* @temporary_obstack, i8 signext %50)
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %21
  br label %9

56:                                               ; preds = %31, %15
  %57 = call i32 @obstack_1grow(i32* @temporary_obstack, i8 signext 0)
  %58 = load i8*, i8** %3, align 8
  %59 = load i8**, i8*** %2, align 8
  store i8* %58, i8** %59, align 8
  %60 = call i64 @obstack_finish(i32* @temporary_obstack)
  %61 = inttoptr i64 %60 to i8*
  ret i8* %61
}

declare dso_local i32 @obstack_1grow(i32*, i8 signext) #1

declare dso_local i64 @obstack_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
