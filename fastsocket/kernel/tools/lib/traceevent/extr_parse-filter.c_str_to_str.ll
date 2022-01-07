; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_str_to_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_str_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32 }
%struct.filter_arg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"=~\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"!~\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s %s \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.event_filter*, %struct.filter_arg*)* @str_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @str_to_str(%struct.event_filter* %0, %struct.filter_arg* %1) #0 {
  %3 = alloca %struct.event_filter*, align 8
  %4 = alloca %struct.filter_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %3, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %9 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %62 [
    i32 131, label %12
    i32 130, label %13
    i32 128, label %18
    i32 129, label %23
  ]

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %13

13:                                               ; preds = %2, %12
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %2, %17
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %2, %22
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %29 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = add nsw i64 %34, %36
  %38 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %39 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = add nsw i64 %37, %42
  %44 = add nsw i64 %43, 6
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i8* @malloc_or_die(i32 %46)
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %51 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %58 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @snprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %56, i8* %60)
  br label %63

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %62, %27
  %64 = load i8*, i8** %5, align 8
  ret i8* %64
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc_or_die(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
