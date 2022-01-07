; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_clear_trivial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_clear_trivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32, %struct.filter_type* }
%struct.filter_type = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FILTER_ARG_BOOLEAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Can't allocate ids\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pevent_filter_clear_trivial(%struct.event_filter* %0, i32 %1) #0 {
  %3 = alloca %struct.event_filter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.filter_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %9 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %10 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %106

14:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %80, %14
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %18 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %83

21:                                               ; preds = %15
  %22 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %23 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %22, i32 0, i32 1
  %24 = load %struct.filter_type*, %struct.filter_type** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %24, i64 %26
  store %struct.filter_type* %27, %struct.filter_type** %5, align 8
  %28 = load %struct.filter_type*, %struct.filter_type** %5, align 8
  %29 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @FILTER_ARG_BOOLEAN, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %80

36:                                               ; preds = %21
  %37 = load i32, i32* %4, align 4
  switch i32 %37, label %58 [
    i32 129, label %38
    i32 128, label %48
  ]

38:                                               ; preds = %36
  %39 = load %struct.filter_type*, %struct.filter_type** %5, align 8
  %40 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %80

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %36, %47
  %49 = load %struct.filter_type*, %struct.filter_type** %5, align 8
  %50 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %80

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %36, %57
  br label %59

59:                                               ; preds = %58
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul i64 4, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32* @realloc(i32* %60, i32 %65)
  store i32* %66, i32** %7, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %59
  %70 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %59
  %72 = load %struct.filter_type*, %struct.filter_type** %5, align 8
  %73 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32 %74, i32* %79, align 4
  br label %80

80:                                               ; preds = %71, %56, %46, %35
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %15

83:                                               ; preds = %15
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  br label %106

87:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %100, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load %struct.event_filter*, %struct.event_filter** %3, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pevent_filter_remove_event(%struct.event_filter* %93, i32 %98)
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %88

103:                                              ; preds = %88
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @free(i32* %104)
  br label %106

106:                                              ; preds = %103, %86, %13
  ret void
}

declare dso_local i32* @realloc(i32*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @pevent_filter_remove_event(%struct.event_filter*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
