; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_compare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32, %struct.filter_type* }
%struct.filter_type = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_filter_compare(%struct.event_filter* %0, %struct.event_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_filter*, align 8
  %5 = alloca %struct.event_filter*, align 8
  %6 = alloca %struct.filter_type*, align 8
  %7 = alloca %struct.filter_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %4, align 8
  store %struct.event_filter* %1, %struct.event_filter** %5, align 8
  %12 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %13 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %16 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %117

20:                                               ; preds = %2
  %21 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %22 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %27 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %117

31:                                               ; preds = %25, %20
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %106, %31
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %35 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %109

38:                                               ; preds = %32
  %39 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %40 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %39, i32 0, i32 1
  %41 = load %struct.filter_type*, %struct.filter_type** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %41, i64 %43
  store %struct.filter_type* %44, %struct.filter_type** %6, align 8
  %45 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %46 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  %47 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.filter_type* @find_filter_type(%struct.event_filter* %45, i32 %48)
  store %struct.filter_type* %49, %struct.filter_type** %7, align 8
  %50 = load %struct.filter_type*, %struct.filter_type** %7, align 8
  %51 = icmp ne %struct.filter_type* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %38
  br label %109

53:                                               ; preds = %38
  %54 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  %55 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.filter_type*, %struct.filter_type** %7, align 8
  %60 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %109

66:                                               ; preds = %53
  %67 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  %68 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %73 [
    i32 129, label %72
    i32 128, label %72
  ]

72:                                               ; preds = %66, %66
  br label %106

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %76 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  %77 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = call i8* @arg_to_str(%struct.event_filter* %75, %struct.TYPE_2__* %78)
  store i8* %79, i8** %8, align 8
  %80 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %81 = load %struct.filter_type*, %struct.filter_type** %7, align 8
  %82 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = call i8* @arg_to_str(%struct.event_filter* %80, %struct.TYPE_2__* %83)
  store i8* %84, i8** %9, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %74
  %88 = load i8*, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %9, align 8
  %93 = call i64 @strcmp(i8* %91, i8* %92)
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %10, align 4
  br label %97

96:                                               ; preds = %87, %74
  store i32 1, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %109

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %72
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %32

109:                                              ; preds = %104, %65, %52, %32
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %112 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %117

116:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %115, %30, %19
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.filter_type* @find_filter_type(%struct.event_filter*, i32) #1

declare dso_local i8* @arg_to_str(%struct.event_filter*, %struct.TYPE_2__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
