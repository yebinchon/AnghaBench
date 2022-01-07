; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_change_annotation_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-top.c_change_annotation_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"Command has same effect as set annotate\00", align 1
@annotation_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@async_annotation_suffix = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"\0A\1A\1Apre-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\0A\1A\1A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @change_annotation_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_annotation_level() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32 @PREFIX(i32 0)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = call i32 @PROMPT(i32 0)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = call i32 @SUFFIX(i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8, %5, %0
  %12 = call i32 @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %64

13:                                               ; preds = %8
  %14 = load i32, i32* @annotation_level, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = call i32 @PREFIX(i32 0)
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %16
  %21 = call i32 @SUFFIX(i32 0)
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** @async_annotation_suffix, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = add nsw i64 %26, 10
  %28 = call i64 @alloca(i64 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %1, align 8
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 @strcpy(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i8*, i8** %1, align 8
  %33 = load i8*, i8** @async_annotation_suffix, align 8
  %34 = call i32 @strcat(i8* %32, i8* %33)
  %35 = load i8*, i8** %1, align 8
  %36 = call i32 @strcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i8*, i8** @async_annotation_suffix, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = add nsw i64 %38, 6
  %40 = call i64 @alloca(i64 %39)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %2, align 8
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i8*, i8** %2, align 8
  %45 = load i8*, i8** @async_annotation_suffix, align 8
  %46 = call i32 @strcat(i8* %44, i8* %45)
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @strcat(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i8*, i8** %1, align 8
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @push_prompt(i8* %49, i8* null, i8* %50)
  br label %52

52:                                               ; preds = %24, %20, %16
  br label %64

53:                                               ; preds = %13
  %54 = call i32 @PREFIX(i32 0)
  %55 = call i64 @strcmp(i32 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = call i32 @SUFFIX(i32 0)
  %59 = call i64 @strcmp(i32 %58, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (...) @pop_prompt()
  br label %63

63:                                               ; preds = %61, %57, %53
  br label %64

64:                                               ; preds = %11, %63, %52
  ret void
}

declare dso_local i32 @PREFIX(i32) #1

declare dso_local i32 @PROMPT(i32) #1

declare dso_local i32 @SUFFIX(i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @push_prompt(i8*, i8*, i8*) #1

declare dso_local i32 @pop_prompt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
