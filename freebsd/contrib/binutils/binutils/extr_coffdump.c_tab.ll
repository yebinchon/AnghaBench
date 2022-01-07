; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_tab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffdump.c_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tab.indent = internal global i32 0, align 4
@atnl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tab(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @atnl, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @tab.indent, align 4
  %13 = add nsw i32 %12, %11
  store i32 %13, i32* @tab.indent, align 4
  br label %53

14:                                               ; preds = %6
  %15 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @atnl, align 8
  br label %16

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %27, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @tab.indent, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %21

30:                                               ; preds = %21
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @tab.indent, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* @tab.indent, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %53

35:                                               ; preds = %17
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @tab.indent, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* @tab.indent, align 4
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %45, %35
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @tab.indent, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %39

48:                                               ; preds = %39
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %9, %30, %51, %48
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
