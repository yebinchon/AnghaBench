; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_listing.c_listing_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@title = common dso_local global i8* null, align 8
@subtitle = common dso_local global i8* null, align 8
@stdout = common dso_local global i32* null, align 8
@list_file = common dso_local global i32* null, align 8
@FOPEN_WT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"can't open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@listing = common dso_local global i32 0, align 4
@LISTING_NOFORM = common dso_local global i32 0, align 4
@paper_height = common dso_local global i64 0, align 8
@LISTING_LISTING = common dso_local global i32 0, align 4
@LISTING_SYMBOLS = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"can't close %s: %s\00", align 1
@last_open_file = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listing_print(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @title, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** @subtitle, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32*, i32** @stdout, align 8
  store i32* %7, i32** @list_file, align 8
  store i32 1, i32* %3, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @FOPEN_WT, align 4
  %11 = call i32* @fopen(i8* %9, i32 %10)
  store i32* %11, i32** @list_file, align 8
  %12 = load i32*, i32** @list_file, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %22

15:                                               ; preds = %8
  %16 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* @errno, align 4
  %19 = call i32 @xstrerror(i32 %18)
  %20 = call i32 @as_warn(i32 %16, i8* %17, i32 %19)
  %21 = load i32*, i32** @stdout, align 8
  store i32* %21, i32** @list_file, align 8
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %14
  br label %23

23:                                               ; preds = %22, %6
  %24 = load i32, i32* @listing, align 4
  %25 = load i32, i32* @LISTING_NOFORM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i64 0, i64* @paper_height, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* @listing, align 4
  %31 = load i32, i32* @LISTING_LISTING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @listing_listing(i8* %35)
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* @listing, align 4
  %39 = load i32, i32* @LISTING_SYMBOLS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (...) @list_symbol_table()
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** @list_file, align 8
  %49 = call i64 @fclose(i32* %48)
  %50 = load i64, i64* @EOF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @xstrerror(i32 %55)
  %57 = call i32 @as_warn(i32 %53, i8* %54, i32 %56)
  br label %58

58:                                               ; preds = %52, %47
  br label %59

59:                                               ; preds = %58, %44
  %60 = load i32*, i32** @last_open_file, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** @last_open_file, align 8
  %64 = call i64 @fclose(i32* %63)
  br label %65

65:                                               ; preds = %62, %59
  ret void
}

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i32 @as_warn(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @xstrerror(i32) #1

declare dso_local i32 @listing_listing(i8*) #1

declare dso_local i32 @list_symbol_table(...) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
