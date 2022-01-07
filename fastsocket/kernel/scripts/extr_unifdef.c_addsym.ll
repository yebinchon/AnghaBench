; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_addsym.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_unifdef.c_addsym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nsyms = common dso_local global i64 0, align 8
@MAXSYMS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"too many symbols\00", align 1
@symname = common dso_local global i8** null, align 8
@ignore = common dso_local global i32* null, align 8
@value = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @addsym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addsym(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @findsym(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* @nsyms, align 8
  %15 = load i64, i64* @MAXSYMS, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @errx(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13
  %20 = load i64, i64* @nsyms, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @nsyms, align 8
  %22 = trunc i64 %20 to i32
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i8**, i8*** @symname, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  store i8* %24, i8** %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** @ignore, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i8* @skipsym(i8* %35)
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = getelementptr inbounds i8, i8* %34, i64 %40
  store i8* %41, i8** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %71

44:                                               ; preds = %23
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 61
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8**, i8*** @value, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %51, i8** %55, align 8
  %56 = load i8*, i8** %8, align 8
  store i8 0, i8* %56, align 1
  br label %70

57:                                               ; preds = %44
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8**, i8*** @value, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %66, align 8
  br label %69

67:                                               ; preds = %57
  %68 = call i32 (...) @usage()
  br label %69

69:                                               ; preds = %67, %62
  br label %70

70:                                               ; preds = %69, %49
  br label %83

71:                                               ; preds = %23
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 (...) @usage()
  br label %78

78:                                               ; preds = %76, %71
  %79 = load i8**, i8*** @value, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* null, i8** %82, align 8
  br label %83

83:                                               ; preds = %78, %70
  ret void
}

declare dso_local i32 @findsym(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @skipsym(i8*) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
