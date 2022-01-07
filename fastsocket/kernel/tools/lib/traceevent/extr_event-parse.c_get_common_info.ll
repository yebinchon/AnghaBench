; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_get_common_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_get_common_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { %struct.event_format** }
%struct.event_format = type { i32 }
%struct.format_field = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"no event_list!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevent*, i8*, i32*, i32*)* @get_common_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_common_info(%struct.pevent* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pevent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.event_format*, align 8
  %11 = alloca %struct.format_field*, align 8
  store %struct.pevent* %0, %struct.pevent** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.pevent*, %struct.pevent** %6, align 8
  %13 = getelementptr inbounds %struct.pevent, %struct.pevent* %12, i32 0, i32 0
  %14 = load %struct.event_format**, %struct.event_format*** %13, align 8
  %15 = icmp ne %struct.event_format** %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = call i32 @do_warning(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %39

18:                                               ; preds = %4
  %19 = load %struct.pevent*, %struct.pevent** %6, align 8
  %20 = getelementptr inbounds %struct.pevent, %struct.pevent* %19, i32 0, i32 0
  %21 = load %struct.event_format**, %struct.event_format*** %20, align 8
  %22 = getelementptr inbounds %struct.event_format*, %struct.event_format** %21, i64 0
  %23 = load %struct.event_format*, %struct.event_format** %22, align 8
  store %struct.event_format* %23, %struct.event_format** %10, align 8
  %24 = load %struct.event_format*, %struct.event_format** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call %struct.format_field* @pevent_find_common_field(%struct.event_format* %24, i8* %25)
  store %struct.format_field* %26, %struct.format_field** %11, align 8
  %27 = load %struct.format_field*, %struct.format_field** %11, align 8
  %28 = icmp ne %struct.format_field* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %39

30:                                               ; preds = %18
  %31 = load %struct.format_field*, %struct.format_field** %11, align 8
  %32 = getelementptr inbounds %struct.format_field, %struct.format_field* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.format_field*, %struct.format_field** %11, align 8
  %36 = getelementptr inbounds %struct.format_field, %struct.format_field* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %30, %29, %16
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @do_warning(i8*) #1

declare dso_local %struct.format_field* @pevent_find_common_field(%struct.event_format*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
