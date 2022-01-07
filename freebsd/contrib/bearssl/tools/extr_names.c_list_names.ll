; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_list_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_names.c_list_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [20 x i8] c"Protocol versions:\0A\00", align 1
@protocol_versions = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"   %-8s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Hash functions:\0A\00", align 1
@hash_functions = common dso_local global %struct.TYPE_5__* null, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Cipher suites:\0A\00", align 1
@cipher_suites = common dso_local global %struct.TYPE_6__* null, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"   %s\0A        %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_names() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %22, %0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @protocol_versions, align 8
  %5 = load i64, i64* %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @protocol_versions, align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @protocol_versions, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %15, i8* %20)
  br label %22

22:                                               ; preds = %10
  %23 = load i64, i64* %1, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %1, align 8
  br label %3

25:                                               ; preds = %3
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %27

27:                                               ; preds = %46, %25
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hash_functions, align 8
  %29 = load i64, i64* %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hash_functions, align 8
  %36 = load i64, i64* %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hash_functions, align 8
  %41 = load i64, i64* %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %44)
  br label %46

46:                                               ; preds = %34
  %47 = load i64, i64* %1, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %1, align 8
  br label %27

49:                                               ; preds = %27
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %1, align 8
  br label %51

51:                                               ; preds = %70, %49
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cipher_suites, align 8
  %53 = load i64, i64* %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cipher_suites, align 8
  %60 = load i64, i64* %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cipher_suites, align 8
  %65 = load i64, i64* %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %63, i8* %68)
  br label %70

70:                                               ; preds = %58
  %71 = load i64, i64* %1, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %1, align 8
  br label %51

73:                                               ; preds = %51
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
