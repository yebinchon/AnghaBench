; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_add_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32, %struct.event_format** }
%struct.event_format = type { i64, %struct.pevent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pevent*, %struct.event_format*)* @add_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_event(%struct.pevent* %0, %struct.event_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_format**, align 8
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store %struct.event_format* %1, %struct.event_format** %5, align 8
  %8 = load %struct.pevent*, %struct.pevent** %4, align 8
  %9 = getelementptr inbounds %struct.pevent, %struct.pevent* %8, i32 0, i32 1
  %10 = load %struct.event_format**, %struct.event_format*** %9, align 8
  %11 = load %struct.pevent*, %struct.pevent** %4, align 8
  %12 = getelementptr inbounds %struct.pevent, %struct.pevent* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = call %struct.event_format** @realloc(%struct.event_format** %10, i32 %17)
  store %struct.event_format** %18, %struct.event_format*** %7, align 8
  %19 = load %struct.event_format**, %struct.event_format*** %7, align 8
  %20 = icmp ne %struct.event_format** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %95

22:                                               ; preds = %2
  %23 = load %struct.event_format**, %struct.event_format*** %7, align 8
  %24 = load %struct.pevent*, %struct.pevent** %4, align 8
  %25 = getelementptr inbounds %struct.pevent, %struct.pevent* %24, i32 0, i32 1
  store %struct.event_format** %23, %struct.event_format*** %25, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %48, %22
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.pevent*, %struct.pevent** %4, align 8
  %29 = getelementptr inbounds %struct.pevent, %struct.pevent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %26
  %33 = load %struct.pevent*, %struct.pevent** %4, align 8
  %34 = getelementptr inbounds %struct.pevent, %struct.pevent* %33, i32 0, i32 1
  %35 = load %struct.event_format**, %struct.event_format*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.event_format*, %struct.event_format** %35, i64 %37
  %39 = load %struct.event_format*, %struct.event_format** %38, align 8
  %40 = getelementptr inbounds %struct.event_format, %struct.event_format* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.event_format*, %struct.event_format** %5, align 8
  %43 = getelementptr inbounds %struct.event_format, %struct.event_format* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %32
  br label %51

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %26

51:                                               ; preds = %46, %26
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.pevent*, %struct.pevent** %4, align 8
  %54 = getelementptr inbounds %struct.pevent, %struct.pevent* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %51
  %58 = load %struct.pevent*, %struct.pevent** %4, align 8
  %59 = getelementptr inbounds %struct.pevent, %struct.pevent* %58, i32 0, i32 1
  %60 = load %struct.event_format**, %struct.event_format*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.event_format*, %struct.event_format** %60, i64 %63
  %65 = load %struct.pevent*, %struct.pevent** %4, align 8
  %66 = getelementptr inbounds %struct.pevent, %struct.pevent* %65, i32 0, i32 1
  %67 = load %struct.event_format**, %struct.event_format*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.event_format*, %struct.event_format** %67, i64 %69
  %71 = load %struct.pevent*, %struct.pevent** %4, align 8
  %72 = getelementptr inbounds %struct.pevent, %struct.pevent* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = mul i64 8, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memmove(%struct.event_format** %64, %struct.event_format** %70, i32 %78)
  br label %80

80:                                               ; preds = %57, %51
  %81 = load %struct.event_format*, %struct.event_format** %5, align 8
  %82 = load %struct.pevent*, %struct.pevent** %4, align 8
  %83 = getelementptr inbounds %struct.pevent, %struct.pevent* %82, i32 0, i32 1
  %84 = load %struct.event_format**, %struct.event_format*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.event_format*, %struct.event_format** %84, i64 %86
  store %struct.event_format* %81, %struct.event_format** %87, align 8
  %88 = load %struct.pevent*, %struct.pevent** %4, align 8
  %89 = getelementptr inbounds %struct.pevent, %struct.pevent* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = load %struct.pevent*, %struct.pevent** %4, align 8
  %93 = load %struct.event_format*, %struct.event_format** %5, align 8
  %94 = getelementptr inbounds %struct.event_format, %struct.event_format* %93, i32 0, i32 1
  store %struct.pevent* %92, %struct.pevent** %94, align 8
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %80, %21
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.event_format** @realloc(%struct.event_format**, i32) #1

declare dso_local i32 @memmove(%struct.event_format**, %struct.event_format**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
