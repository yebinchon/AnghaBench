; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_find_func_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_find_func_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent_function_handler = type { i32, %struct.pevent_function_handler* }
%struct.pevent = type { %struct.pevent_function_handler* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pevent_function_handler* (%struct.pevent*, i8*)* @find_func_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pevent_function_handler* @find_func_handler(%struct.pevent* %0, i8* %1) #0 {
  %3 = alloca %struct.pevent_function_handler*, align 8
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pevent_function_handler*, align 8
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pevent*, %struct.pevent** %4, align 8
  %8 = icmp ne %struct.pevent* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.pevent_function_handler* null, %struct.pevent_function_handler** %3, align 8
  br label %32

10:                                               ; preds = %2
  %11 = load %struct.pevent*, %struct.pevent** %4, align 8
  %12 = getelementptr inbounds %struct.pevent, %struct.pevent* %11, i32 0, i32 0
  %13 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %12, align 8
  store %struct.pevent_function_handler* %13, %struct.pevent_function_handler** %6, align 8
  br label %14

14:                                               ; preds = %26, %10
  %15 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %6, align 8
  %16 = icmp ne %struct.pevent_function_handler* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %6, align 8
  %19 = getelementptr inbounds %struct.pevent_function_handler, %struct.pevent_function_handler* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strcmp(i32 %20, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %30

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %6, align 8
  %28 = getelementptr inbounds %struct.pevent_function_handler, %struct.pevent_function_handler* %27, i32 0, i32 1
  %29 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %28, align 8
  store %struct.pevent_function_handler* %29, %struct.pevent_function_handler** %6, align 8
  br label %14

30:                                               ; preds = %24, %14
  %31 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %6, align 8
  store %struct.pevent_function_handler* %31, %struct.pevent_function_handler** %3, align 8
  br label %32

32:                                               ; preds = %30, %9
  %33 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %3, align 8
  ret %struct.pevent_function_handler* %33
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
