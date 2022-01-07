; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_getoldopt.c_getoldopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_getoldopt.c_getoldopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getoldopt.key = internal global i8* null, align 8
@getoldopt.use_getopt = internal global i8 0, align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: unknown option %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: %c argument missing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getoldopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** @optarg, align 8
  %10 = load i8*, i8** @getoldopt.key, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %94

16:                                               ; preds = %12
  %17 = load i8**, i8*** %6, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @getoldopt.key, align 8
  %20 = load i8*, i8** @getoldopt.key, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i8, i8* @getoldopt.use_getopt, align 1
  %26 = add i8 %25, 1
  store i8 %26, i8* @getoldopt.use_getopt, align 1
  br label %28

27:                                               ; preds = %16
  store i32 2, i32* @optind, align 4
  br label %28

28:                                               ; preds = %27, %24
  br label %29

29:                                               ; preds = %28, %3
  %30 = load i8, i8* @getoldopt.use_getopt, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i8**, i8*** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @getopt(i32 %33, i8** %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %94

37:                                               ; preds = %29
  %38 = load i8*, i8** @getoldopt.key, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** @getoldopt.key, align 8
  %40 = load i8, i8* %38, align 1
  store i8 %40, i8* %8, align 1
  %41 = load i8, i8* %8, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i8*, i8** @getoldopt.key, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 -1
  store i8* %46, i8** @getoldopt.key, align 8
  store i32 -1, i32* %4, align 4
  br label %94

47:                                               ; preds = %37
  %48 = load i8*, i8** %7, align 8
  %49 = load i8, i8* %8, align 1
  %50 = call i8* @strchr(i8* %48, i8 signext %49)
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i8, i8* %8, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 58
  br i1 %56, label %57, label %64

57:                                               ; preds = %53, %47
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8**, i8*** %6, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i8, i8* %8, align 1
  %63 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %61, i8 signext %62)
  store i32 63, i32* %4, align 4
  br label %94

64:                                               ; preds = %53
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %9, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 58
  br i1 %70, label %71, label %91

71:                                               ; preds = %64
  %72 = load i32, i32* @optind, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i8**, i8*** %6, align 8
  %77 = load i32, i32* @optind, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** @optarg, align 8
  %81 = load i32, i32* @optind, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @optind, align 4
  br label %90

83:                                               ; preds = %71
  %84 = load i32, i32* @stderr, align 4
  %85 = load i8**, i8*** %6, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i8, i8* %8, align 1
  %89 = call i32 @fprintf(i32 %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %87, i8 signext %88)
  store i32 63, i32* %4, align 4
  br label %94

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %64
  %92 = load i8, i8* %8, align 1
  %93 = sext i8 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %83, %57, %44, %32, %15
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
