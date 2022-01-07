; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32* }
%struct.pevent_record = type { i32 }

@comm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*)* @test_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_str(%struct.event_format* %0, %struct.filter_arg* %1, %struct.pevent_record* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca %struct.filter_arg*, align 8
  %7 = alloca %struct.pevent_record*, align 8
  %8 = alloca i8*, align 8
  store %struct.event_format* %0, %struct.event_format** %5, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %6, align 8
  store %struct.pevent_record* %2, %struct.pevent_record** %7, align 8
  %9 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %10 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, @comm
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.event_format*, %struct.event_format** %5, align 8
  %16 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %17 = call i8* @get_comm(%struct.event_format* %15, %struct.pevent_record* %16)
  store i8* %17, i8** %8, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %20 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %21 = call i8* @get_field_str(%struct.filter_arg* %19, %struct.pevent_record* %20)
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %24 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %60 [
    i32 131, label %27
    i32 130, label %36
    i32 128, label %45
    i32 129, label %54
  ]

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %30 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @strcmp(i8* %28, i32 %32)
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %61

36:                                               ; preds = %22
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %39 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @strcmp(i8* %37, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %61

45:                                               ; preds = %22
  %46 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %47 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @regexec(i32* %48, i8* %49, i32 0, i32* null, i32 0)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %61

54:                                               ; preds = %22
  %55 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %56 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @regexec(i32* %57, i8* %58, i32 0, i32* null, i32 0)
  store i32 %59, i32* %4, align 4
  br label %61

60:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %54, %45, %36, %27
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i8* @get_comm(%struct.event_format*, %struct.pevent_record*) #1

declare dso_local i8* @get_field_str(%struct.filter_arg*, %struct.pevent_record*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @regexec(i32*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
