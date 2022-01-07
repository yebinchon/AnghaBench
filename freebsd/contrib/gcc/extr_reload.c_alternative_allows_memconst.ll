; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_alternative_allows_memconst.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_alternative_allows_memconst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @alternative_allows_memconst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alternative_allows_memconst(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %18, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  br label %11

11:                                               ; preds = %17, %10
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %4, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 44
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %11

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  br label %7

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 44
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 35
  br label %33

33:                                               ; preds = %30, %27, %22
  %34 = phi i1 [ false, %27 ], [ false, %22 ], [ %32, %30 ]
  br i1 %34, label %35, label %55

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 109
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 111
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i64 @EXTRA_MEMORY_CONSTRAINT(i32 %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %38, %35
  store i32 1, i32* %3, align 4
  br label %56

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @CONSTRAINT_LEN(i32 %49, i8* %50)
  %52 = load i8*, i8** %4, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %4, align 8
  br label %22

55:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %46
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @EXTRA_MEMORY_CONSTRAINT(i32, i8*) #1

declare dso_local i32 @CONSTRAINT_LEN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
