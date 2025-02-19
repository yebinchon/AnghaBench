; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_append_filter_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_append_filter_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_filter*, i8*)* @append_filter_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_filter_string(%struct.event_filter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.event_filter* %0, %struct.event_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %9 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %16 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %18, %20
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kmalloc(i32 %23, i32 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %2
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %34 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcpy(i8* %32, i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strcat(i8* %37, i8* %38)
  %40 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %41 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @kfree(i8* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %46 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %31, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
