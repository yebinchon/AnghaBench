; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_input_fopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/gensnmptree/extr_gensnmptree.c_input_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@input = common dso_local global %struct.TYPE_2__* null, align 8
@paths = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [17 x i8] c"cannot open '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @input_fopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_fopen(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 47
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i32* @tryopen(i8* null, i8* %14)
  store i32* %15, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @input_new(i32* %18, i8* null, i8* %19)
  br label %74

21:                                               ; preds = %13
  br label %71

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %27 = icmp eq %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i8* null, i8** %6, align 8
  br label %33

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @input, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32* @tryopen(i8* %34, i8* %35)
  store i32* %36, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @input_new(i32* %39, i8* null, i8* %40)
  br label %74

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %22
  store i64 0, i64* %7, align 8
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i8**, i8*** @paths, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i8**, i8*** @paths, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = call i32* @tryopen(i8* %54, i8* %55)
  store i32* %56, i32** %5, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load i32*, i32** %5, align 8
  %60 = load i8**, i8*** @paths, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8*, i8** %60, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = call i32 @input_new(i32* %59, i8* %63, i8* %64)
  br label %74

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %44

70:                                               ; preds = %44
  br label %71

71:                                               ; preds = %70, %21
  %72 = load i8*, i8** %3, align 8
  %73 = call i32 @report(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %58, %38, %17
  ret void
}

declare dso_local i32* @tryopen(i8*, i8*) #1

declare dso_local i32 @input_new(i32*, i8*, i8*) #1

declare dso_local i32 @report(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
