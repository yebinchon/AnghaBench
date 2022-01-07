; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_st_parse.c_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_st_parse.c_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"_.$#\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" _.$#\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @name(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %3, align 8
  %12 = load i8, i8* %10, align 1
  store i8 %12, i8* %7, align 1
  %13 = load i8, i8* %7, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 58
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i8**, i8*** %4, align 8
  store i8* null, i8** %17, align 8
  br label %83

18:                                               ; preds = %2
  %19 = load i8, i8* %7, align 1
  %20 = call i64 @isalpha(i8 signext %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i8, i8* %7, align 1
  %24 = call i64 @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %80

26:                                               ; preds = %22, %18
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  %29 = load i8, i8* %27, align 1
  store i8 %29, i8* %7, align 1
  br label %30

30:                                               ; preds = %41, %26
  %31 = load i8, i8* %7, align 1
  %32 = call i64 @isalnum(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8, i8* %7, align 1
  %36 = call i64 @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ true, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  %44 = load i8, i8* %42, align 1
  store i8 %44, i8* %7, align 1
  br label %30

45:                                               ; preds = %38
  %46 = load i8, i8* %7, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 58
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (...) @reset()
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i8* @xmalloc(i32 %58)
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %65, %51
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 -1
  %64 = icmp ult i8* %61, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  %68 = load i8, i8* %66, align 1
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %5, align 8
  store i8 %68, i8* %69, align 1
  br label %60

71:                                               ; preds = %60
  %72 = load i8*, i8** %5, align 8
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = sub i64 0, %76
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = load i8**, i8*** %4, align 8
  store i8* %78, i8** %79, align 8
  br label %82

80:                                               ; preds = %22
  %81 = call i32 (...) @reset()
  br label %82

82:                                               ; preds = %80, %71
  br label %83

83:                                               ; preds = %82, %16
  %84 = load i8*, i8** %3, align 8
  ret i8* %84
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i32 @reset(...) #1

declare dso_local i8* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
