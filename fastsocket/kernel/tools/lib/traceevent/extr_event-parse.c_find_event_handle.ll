; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_find_event_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_find_event_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { %struct.event_handler* }
%struct.event_handler = type { %struct.event_handler*, i32, i32, i32, i32, i32 }
%struct.event_format = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"overriding event (%d) %s:%s with new print handler\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevent*, %struct.event_format*)* @find_event_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_event_handle(%struct.pevent* %0, %struct.event_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca %struct.event_handler*, align 8
  %7 = alloca %struct.event_handler**, align 8
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store %struct.event_format* %1, %struct.event_format** %5, align 8
  %8 = load %struct.pevent*, %struct.pevent** %4, align 8
  %9 = getelementptr inbounds %struct.pevent, %struct.pevent* %8, i32 0, i32 0
  store %struct.event_handler** %9, %struct.event_handler*** %7, align 8
  br label %10

10:                                               ; preds = %31, %2
  %11 = load %struct.event_handler**, %struct.event_handler*** %7, align 8
  %12 = load %struct.event_handler*, %struct.event_handler** %11, align 8
  %13 = icmp ne %struct.event_handler* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.event_handler**, %struct.event_handler*** %7, align 8
  %16 = load %struct.event_handler*, %struct.event_handler** %15, align 8
  store %struct.event_handler* %16, %struct.event_handler** %6, align 8
  %17 = load %struct.event_format*, %struct.event_format** %5, align 8
  %18 = load %struct.event_handler*, %struct.event_handler** %6, align 8
  %19 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.event_handler*, %struct.event_handler** %6, align 8
  %22 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.event_handler*, %struct.event_handler** %6, align 8
  %25 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @event_matches(%struct.event_format* %17, i32 %20, i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %35

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.event_handler**, %struct.event_handler*** %7, align 8
  %33 = load %struct.event_handler*, %struct.event_handler** %32, align 8
  %34 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %33, i32 0, i32 0
  store %struct.event_handler** %34, %struct.event_handler*** %7, align 8
  br label %10

35:                                               ; preds = %29, %10
  %36 = load %struct.event_handler**, %struct.event_handler*** %7, align 8
  %37 = load %struct.event_handler*, %struct.event_handler** %36, align 8
  %38 = icmp ne %struct.event_handler* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %67

40:                                               ; preds = %35
  %41 = load %struct.event_format*, %struct.event_format** %5, align 8
  %42 = getelementptr inbounds %struct.event_format, %struct.event_format* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.event_format*, %struct.event_format** %5, align 8
  %45 = getelementptr inbounds %struct.event_format, %struct.event_format* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.event_format*, %struct.event_format** %5, align 8
  %48 = getelementptr inbounds %struct.event_format, %struct.event_format* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @pr_stat(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46, i32 %49)
  %51 = load %struct.event_handler*, %struct.event_handler** %6, align 8
  %52 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.event_format*, %struct.event_format** %5, align 8
  %55 = getelementptr inbounds %struct.event_format, %struct.event_format* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.event_handler*, %struct.event_handler** %6, align 8
  %57 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.event_format*, %struct.event_format** %5, align 8
  %60 = getelementptr inbounds %struct.event_format, %struct.event_format* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.event_handler*, %struct.event_handler** %6, align 8
  %62 = getelementptr inbounds %struct.event_handler, %struct.event_handler* %61, i32 0, i32 0
  %63 = load %struct.event_handler*, %struct.event_handler** %62, align 8
  %64 = load %struct.event_handler**, %struct.event_handler*** %7, align 8
  store %struct.event_handler* %63, %struct.event_handler** %64, align 8
  %65 = load %struct.event_handler*, %struct.event_handler** %6, align 8
  %66 = call i32 @free_handler(%struct.event_handler* %65)
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %40, %39
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @event_matches(%struct.event_format*, i32, i32, i32) #1

declare dso_local i32 @pr_stat(i8*, i32, i32, i32) #1

declare dso_local i32 @free_handler(%struct.event_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
