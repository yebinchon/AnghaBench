; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_CleanupResult.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_calendar.c_CleanupResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DAYS = common dso_local global i32 0, align 4
@cached_days = common dso_local global i8** null, align 8
@MAX_MONTHS = common dso_local global i32 0, align 4
@cached_months = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32*)* @CleanupResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CleanupResult(i32 %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @dlg_del_window(i32* %13)
  br label %15

15:                                               ; preds = %12, %4
  %16 = call i32 (...) @dlg_mouse_free_regions()
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @free(i8* %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @dlg_restore_vars(i32* %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %40, %22
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @MAX_DAYS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i8**, i8*** @cached_days, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8**, i8*** @cached_days, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  store i8* null, i8** %39, align 8
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %25

43:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @MAX_MONTHS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i8**, i8*** @cached_months, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @free(i8* %53)
  %55 = load i8**, i8*** @cached_months, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  store i8* null, i8** %58, align 8
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @dlg_del_window(i32*) #1

declare dso_local i32 @dlg_mouse_free_regions(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @dlg_restore_vars(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
