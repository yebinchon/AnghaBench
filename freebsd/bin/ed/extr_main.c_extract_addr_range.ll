; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_extract_addr_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_main.c_extract_addr_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@addr_cnt = common dso_local global i32 0, align 4
@current_addr = common dso_local global i64 0, align 8
@second_addr = common dso_local global i64 0, align 8
@first_addr = common dso_local global i64 0, align 8
@ibufp = common dso_local global i8* null, align 8
@ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_addr_range() #0 {
  %1 = alloca i64, align 8
  store i32 0, i32* @addr_cnt, align 4
  %2 = load i64, i64* @current_addr, align 8
  store i64 %2, i64* @second_addr, align 8
  store i64 %2, i64* @first_addr, align 8
  br label %3

3:                                                ; preds = %30, %0
  %4 = call i64 (...) @next_addr()
  store i64 %4, i64* %1, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  %7 = load i32, i32* @addr_cnt, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @addr_cnt, align 4
  %9 = load i64, i64* @second_addr, align 8
  store i64 %9, i64* @first_addr, align 8
  %10 = load i64, i64* %1, align 8
  store i64 %10, i64* @second_addr, align 8
  %11 = load i8*, i8** @ibufp, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 44
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load i8*, i8** @ibufp, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 59
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %31

21:                                               ; preds = %15, %6
  %22 = load i8*, i8** @ibufp, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** @ibufp, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 59
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* %1, align 8
  store i64 %28, i64* @current_addr, align 8
  br label %29

29:                                               ; preds = %27, %21
  br label %30

30:                                               ; preds = %29
  br label %3

31:                                               ; preds = %20, %3
  %32 = load i32, i32* @addr_cnt, align 4
  %33 = call i32 @min(i32 %32, i32 2)
  store i32 %33, i32* @addr_cnt, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @second_addr, align 8
  %37 = load i64, i64* %1, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i64, i64* @second_addr, align 8
  store i64 %40, i64* @first_addr, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @ERR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @ERR, align 8
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i64 [ %46, %45 ], [ 0, %47 ]
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

declare dso_local i64 @next_addr(...) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
