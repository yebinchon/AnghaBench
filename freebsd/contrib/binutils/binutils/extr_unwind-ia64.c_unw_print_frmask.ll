; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_unwind-ia64.c_unw_print_frmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_unwind-ia64.c_unw_print_frmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @unw_print_frmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unw_print_frmask(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %52, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 20
  br i1 %9, label %10, label %55

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  store i8 44, i8* %18, align 1
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  store i8 102, i8* %21, align 1
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 2
  %28 = add nsw i32 %27, 48
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  store i8 %29, i8* %30, align 1
  br label %48

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 2
  %35 = sdiv i32 %34, 10
  %36 = add nsw i32 %35, 1
  %37 = add nsw i32 %36, 48
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  store i8 %38, i8* %39, align 1
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 2
  %43 = srem i32 %42, 10
  %44 = add nsw i32 %43, 48
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %3, align 8
  store i8 %45, i8* %46, align 1
  br label %48

48:                                               ; preds = %32, %25
  store i32 1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %10
  %50 = load i32, i32* %4, align 4
  %51 = lshr i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %7

55:                                               ; preds = %7
  %56 = load i8*, i8** %3, align 8
  store i8 0, i8* %56, align 1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
