; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_add_filter_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_add_filter_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_type = type { i32, i32*, i32 }
%struct.event_filter = type { i32, i32, %struct.filter_type* }

@.str = private unnamed_addr constant [26 x i8] c"Could not allocate filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filter_type* (%struct.event_filter*, i32)* @add_filter_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filter_type* @add_filter_type(%struct.event_filter* %0, i32 %1) #0 {
  %3 = alloca %struct.filter_type*, align 8
  %4 = alloca %struct.event_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filter_type*, align 8
  %7 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.filter_type* @find_filter_type(%struct.event_filter* %8, i32 %9)
  store %struct.filter_type* %10, %struct.filter_type** %6, align 8
  %11 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  %12 = icmp ne %struct.filter_type* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  store %struct.filter_type* %14, %struct.filter_type** %3, align 8
  br label %111

15:                                               ; preds = %2
  %16 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %17 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %16, i32 0, i32 2
  %18 = load %struct.filter_type*, %struct.filter_type** %17, align 8
  %19 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %20 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 24, %23
  %25 = trunc i64 %24 to i32
  %26 = call %struct.filter_type* @realloc(%struct.filter_type* %18, i32 %25)
  %27 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %28 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %27, i32 0, i32 2
  store %struct.filter_type* %26, %struct.filter_type** %28, align 8
  %29 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %30 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %29, i32 0, i32 2
  %31 = load %struct.filter_type*, %struct.filter_type** %30, align 8
  %32 = icmp ne %struct.filter_type* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %15
  %34 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %15
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %39 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %44 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %43, i32 0, i32 2
  %45 = load %struct.filter_type*, %struct.filter_type** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %45, i64 %47
  %49 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  br label %58

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %36

58:                                               ; preds = %53, %36
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %61 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %58
  %65 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %66 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %65, i32 0, i32 2
  %67 = load %struct.filter_type*, %struct.filter_type** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %67, i64 %70
  %72 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %73 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %72, i32 0, i32 2
  %74 = load %struct.filter_type*, %struct.filter_type** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %74, i64 %76
  %78 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %79 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = mul i64 24, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memmove(%struct.filter_type* %71, %struct.filter_type* %77, i32 %85)
  br label %87

87:                                               ; preds = %64, %58
  %88 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %89 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %88, i32 0, i32 2
  %90 = load %struct.filter_type*, %struct.filter_type** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %90, i64 %92
  store %struct.filter_type* %93, %struct.filter_type** %6, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  %96 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %98 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @pevent_find_event(i32 %99, i32 %100)
  %102 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  %103 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  %105 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %104, i32 0, i32 1
  store i32* null, i32** %105, align 8
  %106 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %107 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.filter_type*, %struct.filter_type** %6, align 8
  store %struct.filter_type* %110, %struct.filter_type** %3, align 8
  br label %111

111:                                              ; preds = %87, %13
  %112 = load %struct.filter_type*, %struct.filter_type** %3, align 8
  ret %struct.filter_type* %112
}

declare dso_local %struct.filter_type* @find_filter_type(%struct.event_filter*, i32) #1

declare dso_local %struct.filter_type* @realloc(%struct.filter_type*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @memmove(%struct.filter_type*, %struct.filter_type*, i32) #1

declare dso_local i32 @pevent_find_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
