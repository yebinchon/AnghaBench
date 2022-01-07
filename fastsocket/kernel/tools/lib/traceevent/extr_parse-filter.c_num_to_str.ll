; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_num_to_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_num_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32 }
%struct.filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.event_filter*, %struct.filter_arg*)* @num_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @num_to_str(%struct.event_filter* %0, %struct.filter_arg* %1) #0 {
  %3 = alloca %struct.event_filter*, align 8
  %4 = alloca %struct.filter_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %3, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %4, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %11 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %12 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @arg_to_str(%struct.event_filter* %10, i32 %14)
  store i8* %15, i8** %5, align 8
  %16 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %17 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %18 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @arg_to_str(%struct.event_filter* %16, i32 %20)
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %2
  br label %78

28:                                               ; preds = %24
  %29 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %30 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %76 [
    i32 133, label %33
    i32 128, label %34
    i32 131, label %39
    i32 129, label %44
    i32 132, label %49
    i32 130, label %54
  ]

33:                                               ; preds = %28
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %34

34:                                               ; preds = %28, %33
  %35 = load i8*, i8** %8, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %38

38:                                               ; preds = %37, %34
  br label %39

39:                                               ; preds = %28, %38
  %40 = load i8*, i8** %8, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %43

43:                                               ; preds = %42, %39
  br label %44

44:                                               ; preds = %28, %43
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %48

48:                                               ; preds = %47, %44
  br label %49

49:                                               ; preds = %28, %48
  %50 = load i8*, i8** %8, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %53

53:                                               ; preds = %52, %49
  br label %54

54:                                               ; preds = %28, %53
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = add nsw i64 %60, %62
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strlen(i8* %64)
  %66 = add nsw i64 %63, %65
  %67 = add nsw i64 %66, 4
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i8* @malloc_or_die(i32 %69)
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %72, i8* %73, i8* %74)
  br label %77

76:                                               ; preds = %28
  br label %77

77:                                               ; preds = %76, %58
  br label %78

78:                                               ; preds = %77, %27
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** %7, align 8
  ret i8* %83
}

declare dso_local i8* @arg_to_str(%struct.event_filter*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc_or_die(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
