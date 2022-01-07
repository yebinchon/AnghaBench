; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_search_prompt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ee/extr_ee.c_search_prompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srch_str = common dso_local global i8* null, align 8
@u_srch_str = common dso_local global i8* null, align 8
@search_prompt_str = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@gold = common dso_local global i32 0, align 4
@srch_3 = common dso_local global i8* null, align 8
@srch_1 = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_prompt() #0 {
  %1 = load i8*, i8** @srch_str, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i8*, i8** @srch_str, align 8
  %5 = call i32 @free(i8* %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i8*, i8** @u_srch_str, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i8*, i8** @u_srch_str, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i8*, i8** @u_srch_str, align 8
  %16 = call i32 @free(i8* %15)
  br label %17

17:                                               ; preds = %14, %9, %6
  %18 = load i32, i32* @search_prompt_str, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i8* @get_string(i32 %18, i32 %19)
  store i8* %20, i8** @srch_str, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* @gold, align 4
  %22 = load i8*, i8** @srch_str, align 8
  store i8* %22, i8** @srch_3, align 8
  %23 = load i8*, i8** @srch_str, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = add nsw i64 %24, 1
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** @u_srch_str, align 8
  store i8* %26, i8** @srch_1, align 8
  br label %27

27:                                               ; preds = %32, %17
  %28 = load i8*, i8** @srch_3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i8*, i8** @srch_3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call signext i8 @toupper(i8 signext %34)
  %36 = load i8*, i8** @srch_1, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** @srch_1, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @srch_1, align 8
  %39 = load i8*, i8** @srch_3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** @srch_3, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load i8*, i8** @srch_1, align 8
  store i8 0, i8* %42, align 1
  %43 = load i32, i32* @TRUE, align 4
  %44 = call i32 @search(i32 %43)
  ret void
}

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @get_string(i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @search(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
