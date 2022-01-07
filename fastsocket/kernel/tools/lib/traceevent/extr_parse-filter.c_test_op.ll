; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pevent_record = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*)* @test_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_op(%struct.event_format* %0, %struct.filter_arg* %1, %struct.pevent_record* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca %struct.filter_arg*, align 8
  %7 = alloca %struct.pevent_record*, align 8
  store %struct.event_format* %0, %struct.event_format** %5, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %6, align 8
  store %struct.pevent_record* %2, %struct.pevent_record** %7, align 8
  %8 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %9 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %65 [
    i32 130, label %12
    i32 128, label %33
    i32 129, label %54
  ]

12:                                               ; preds = %3
  %13 = load %struct.event_format*, %struct.event_format** %5, align 8
  %14 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %15 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %19 = call i32 @test_filter(%struct.event_format* %13, i32 %17, %struct.pevent_record* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load %struct.event_format*, %struct.event_format** %5, align 8
  %23 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %24 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %28 = call i32 @test_filter(%struct.event_format* %22, i32 %26, %struct.pevent_record* %27)
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %21, %12
  %31 = phi i1 [ false, %12 ], [ %29, %21 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %66

33:                                               ; preds = %3
  %34 = load %struct.event_format*, %struct.event_format** %5, align 8
  %35 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %36 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %40 = call i32 @test_filter(%struct.event_format* %34, i32 %38, %struct.pevent_record* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load %struct.event_format*, %struct.event_format** %5, align 8
  %44 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %45 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %49 = call i32 @test_filter(%struct.event_format* %43, i32 %47, %struct.pevent_record* %48)
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %42, %33
  %52 = phi i1 [ true, %33 ], [ %50, %42 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %66

54:                                               ; preds = %3
  %55 = load %struct.event_format*, %struct.event_format** %5, align 8
  %56 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %57 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %61 = call i32 @test_filter(%struct.event_format* %55, i32 %59, %struct.pevent_record* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %54, %51, %30
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @test_filter(%struct.event_format*, i32, %struct.pevent_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
