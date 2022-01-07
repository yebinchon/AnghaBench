; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pretty-print.c_pp_wrap_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_pretty-print.c_pp_wrap_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @pp_wrap_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_wrap_text(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @pp_is_wrapping_line(i32* %9)
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %85, %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %12, %13
  br i1 %14, label %15, label %86

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %8, align 8
  br label %17

17:                                               ; preds = %33, %15
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @ISBLANK(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 10
  br label %31

31:                                               ; preds = %26, %21, %17
  %32 = phi i1 [ false, %21 ], [ false, %17 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  br label %17

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @pp_remaining_character_count_for_line(i32* %45)
  %47 = sext i32 %46 to i64
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @pp_newline(i32* %50)
  br label %52

52:                                               ; preds = %49, %39, %36
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @pp_append_text(i32* %53, i8* %54, i8* %55)
  %57 = load i8*, i8** %8, align 8
  store i8* %57, i8** %5, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %52
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @ISBLANK(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @pp_space(i32* %67)
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  br label %71

71:                                               ; preds = %66, %61, %52
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = icmp ne i8* %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @pp_newline(i32* %81)
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %5, align 8
  br label %85

85:                                               ; preds = %80, %75, %71
  br label %11

86:                                               ; preds = %11
  ret void
}

declare dso_local i32 @pp_is_wrapping_line(i32*) #1

declare dso_local i64 @ISBLANK(i8 signext) #1

declare dso_local i32 @pp_remaining_character_count_for_line(i32*) #1

declare dso_local i32 @pp_newline(i32*) #1

declare dso_local i32 @pp_append_text(i32*, i8*, i8*) #1

declare dso_local i32 @pp_space(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
