; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_remove_func_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_remove_func_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { %struct.pevent_function_handler* }
%struct.pevent_function_handler = type { %struct.pevent_function_handler*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pevent*, i8*)* @remove_func_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_func_handler(%struct.pevent* %0, i8* %1) #0 {
  %3 = alloca %struct.pevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pevent_function_handler*, align 8
  %6 = alloca %struct.pevent_function_handler**, align 8
  store %struct.pevent* %0, %struct.pevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.pevent*, %struct.pevent** %3, align 8
  %8 = getelementptr inbounds %struct.pevent, %struct.pevent* %7, i32 0, i32 0
  store %struct.pevent_function_handler** %8, %struct.pevent_function_handler*** %6, align 8
  br label %9

9:                                                ; preds = %27, %2
  %10 = load %struct.pevent_function_handler**, %struct.pevent_function_handler*** %6, align 8
  %11 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %10, align 8
  store %struct.pevent_function_handler* %11, %struct.pevent_function_handler** %5, align 8
  %12 = icmp ne %struct.pevent_function_handler* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %5, align 8
  %15 = getelementptr inbounds %struct.pevent_function_handler, %struct.pevent_function_handler* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %5, align 8
  %22 = getelementptr inbounds %struct.pevent_function_handler, %struct.pevent_function_handler* %21, i32 0, i32 0
  %23 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %22, align 8
  %24 = load %struct.pevent_function_handler**, %struct.pevent_function_handler*** %6, align 8
  store %struct.pevent_function_handler* %23, %struct.pevent_function_handler** %24, align 8
  %25 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %5, align 8
  %26 = call i32 @free_func_handle(%struct.pevent_function_handler* %25)
  br label %30

27:                                               ; preds = %13
  %28 = load %struct.pevent_function_handler*, %struct.pevent_function_handler** %5, align 8
  %29 = getelementptr inbounds %struct.pevent_function_handler, %struct.pevent_function_handler* %28, i32 0, i32 0
  store %struct.pevent_function_handler** %29, %struct.pevent_function_handler*** %6, align 8
  br label %9

30:                                               ; preds = %20, %9
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @free_func_handle(%struct.pevent_function_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
