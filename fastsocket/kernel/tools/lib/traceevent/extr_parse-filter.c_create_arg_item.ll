; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_create_arg_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_create_arg_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_field = type { i32 }
%struct.filter_arg = type { %struct.TYPE_6__, i8*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.format_field* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.event_format = type { i32 }

@FILTER_ARG_VALUE = common dso_local global i8* null, align 8
@FILTER_STRING = common dso_local global i32 0, align 4
@FILTER_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"malloc string\00", align 1
@FILTER_NUMBER = common dso_local global i32 0, align 4
@COMM = common dso_local global i32 0, align 4
@FILTER_ARG_BOOLEAN = common dso_local global i8* null, align 8
@FILTER_FALSE = common dso_local global i32 0, align 4
@comm = common dso_local global %struct.format_field zeroinitializer, align 4
@FILTER_ARG_FIELD = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"expected a value but found %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filter_arg* (%struct.event_format*, i8*, i32, i8**)* @create_arg_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filter_arg* @create_arg_item(%struct.event_format* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca %struct.filter_arg*, align 8
  %6 = alloca %struct.event_format*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.format_field*, align 8
  %11 = alloca %struct.filter_arg*, align 8
  store %struct.event_format* %0, %struct.event_format** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %12 = call %struct.filter_arg* (...) @allocate_arg()
  store %struct.filter_arg* %12, %struct.filter_arg** %11, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %89 [
    i32 128, label %14
    i32 130, label %14
    i32 129, label %42
  ]

14:                                               ; preds = %4, %4
  %15 = load i8*, i8** @FILTER_ARG_VALUE, align 8
  %16 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %17 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 130
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @FILTER_STRING, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @FILTER_CHAR, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %27 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strdup(i8* %29)
  %31 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %32 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %35 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %24
  %40 = call i32 @die(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %24
  br label %95

42:                                               ; preds = %4
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @isdigit(i8 signext %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i8*, i8** @FILTER_ARG_VALUE, align 8
  %50 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %51 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @FILTER_NUMBER, align 4
  %53 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %54 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @strtoull(i8* %56, i32* null, i32 0)
  %58 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %59 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %95

61:                                               ; preds = %42
  %62 = load %struct.event_format*, %struct.event_format** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call %struct.format_field* @pevent_find_any_field(%struct.event_format* %62, i8* %63)
  store %struct.format_field* %64, %struct.format_field** %10, align 8
  %65 = load %struct.format_field*, %struct.format_field** %10, align 8
  %66 = icmp ne %struct.format_field* %65, null
  br i1 %66, label %81, label %67

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* @COMM, align 4
  %70 = call i32 @strcmp(i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i8*, i8** @FILTER_ARG_BOOLEAN, align 8
  %74 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %75 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @FILTER_FALSE, align 4
  %77 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %78 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  br label %95

80:                                               ; preds = %67
  store %struct.format_field* @comm, %struct.format_field** %10, align 8
  br label %81

81:                                               ; preds = %80, %61
  %82 = load i8*, i8** @FILTER_ARG_FIELD, align 8
  %83 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %84 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.format_field*, %struct.format_field** %10, align 8
  %86 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %87 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store %struct.format_field* %85, %struct.format_field** %88, align 8
  br label %95

89:                                               ; preds = %4
  %90 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  %91 = call i32 @free_arg(%struct.filter_arg* %90)
  %92 = load i8**, i8*** %9, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @show_error(i8** %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %93)
  store %struct.filter_arg* null, %struct.filter_arg** %5, align 8
  br label %97

95:                                               ; preds = %81, %72, %48, %41
  %96 = load %struct.filter_arg*, %struct.filter_arg** %11, align 8
  store %struct.filter_arg* %96, %struct.filter_arg** %5, align 8
  br label %97

97:                                               ; preds = %95, %89
  %98 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  ret %struct.filter_arg* %98
}

declare dso_local %struct.filter_arg* @allocate_arg(...) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

declare dso_local %struct.format_field* @pevent_find_any_field(%struct.event_format*, i8*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @free_arg(%struct.filter_arg*) #1

declare dso_local i32 @show_error(i8**, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
