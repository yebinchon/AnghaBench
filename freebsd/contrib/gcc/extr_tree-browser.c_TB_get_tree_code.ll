; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-browser.c_TB_get_tree_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-browser.c_TB_get_tree_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LAST_AND_UNUSED_TREE_CODE = common dso_local global i32 0, align 4
@TB_OUT_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @TB_get_tree_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TB_get_tree_code(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strchr(i8* %8, i8 signext 32)
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sub i32 %14, %16
  store i32 %17, i32* %5, align 4
  br label %22

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sub i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %12
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %50, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @LAST_AND_UNUSED_TREE_CODE, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TB_TREE_CODE_LEN(i32 %29)
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %50

33:                                               ; preds = %27
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i8* @TB_TREE_CODE_TEXT(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @TB_TREE_CODE_LEN(i32 %37)
  %39 = call i32 @memcmp(i8* %34, i8* %36, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load i32, i32* @TB_OUT_FILE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i8* @TB_TREE_CODE_TEXT(i32 %44)
  %46 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @TB_TREE_CODE(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %55

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32, i32* %4, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %23

53:                                               ; preds = %23
  %54 = load i32, i32* @LAST_AND_UNUSED_TREE_CODE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %42
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @TB_TREE_CODE_LEN(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @TB_TREE_CODE_TEXT(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @TB_TREE_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
