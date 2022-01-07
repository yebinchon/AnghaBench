; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_arg_to_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_arg_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32 }
%struct.filter_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.event_filter*, %struct.filter_arg*)* @arg_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arg_to_str(%struct.event_filter* %0, %struct.filter_arg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.event_filter*, align 8
  %5 = alloca %struct.filter_arg*, align 8
  %6 = alloca i8*, align 8
  store %struct.event_filter* %0, %struct.event_filter** %4, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %5, align 8
  %7 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %8 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %49 [
    i32 134, label %10
    i32 130, label %25
    i32 131, label %29
    i32 129, label %33
    i32 128, label %37
    i32 132, label %41
    i32 133, label %45
  ]

10:                                               ; preds = %2
  %11 = call i8* @malloc_or_die(i32 6)
  store i8* %11, i8** %6, align 8
  %12 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %13 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %23

20:                                               ; preds = %10
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %3, align 8
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %27 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %28 = call i8* @op_to_str(%struct.event_filter* %26, %struct.filter_arg* %27)
  store i8* %28, i8** %3, align 8
  br label %50

29:                                               ; preds = %2
  %30 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %31 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %32 = call i8* @num_to_str(%struct.event_filter* %30, %struct.filter_arg* %31)
  store i8* %32, i8** %3, align 8
  br label %50

33:                                               ; preds = %2
  %34 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %35 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %36 = call i8* @str_to_str(%struct.event_filter* %34, %struct.filter_arg* %35)
  store i8* %36, i8** %3, align 8
  br label %50

37:                                               ; preds = %2
  %38 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %39 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %40 = call i8* @val_to_str(%struct.event_filter* %38, %struct.filter_arg* %39)
  store i8* %40, i8** %3, align 8
  br label %50

41:                                               ; preds = %2
  %42 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %43 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %44 = call i8* @field_to_str(%struct.event_filter* %42, %struct.filter_arg* %43)
  store i8* %44, i8** %3, align 8
  br label %50

45:                                               ; preds = %2
  %46 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %47 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %48 = call i8* @exp_to_str(%struct.event_filter* %46, %struct.filter_arg* %47)
  store i8* %48, i8** %3, align 8
  br label %50

49:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %50

50:                                               ; preds = %49, %45, %41, %37, %33, %29, %25, %23
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i8* @malloc_or_die(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @op_to_str(%struct.event_filter*, %struct.filter_arg*) #1

declare dso_local i8* @num_to_str(%struct.event_filter*, %struct.filter_arg*) #1

declare dso_local i8* @str_to_str(%struct.event_filter*, %struct.filter_arg*) #1

declare dso_local i8* @val_to_str(%struct.event_filter*, %struct.filter_arg*) #1

declare dso_local i8* @field_to_str(%struct.event_filter*, %struct.filter_arg*) #1

declare dso_local i8* @exp_to_str(%struct.event_filter*, %struct.filter_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
