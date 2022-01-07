; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_find_event_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_find_event_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32, i32 }
%struct.pevent = type { i32, %struct.event_format*, %struct.event_format** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_format* @pevent_find_event_by_name(%struct.pevent* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.event_format*, align 8
  %5 = alloca %struct.pevent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.event_format*, align 8
  %9 = alloca i32, align 4
  store %struct.pevent* %0, %struct.pevent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.pevent*, %struct.pevent** %5, align 8
  %11 = getelementptr inbounds %struct.pevent, %struct.pevent* %10, i32 0, i32 1
  %12 = load %struct.event_format*, %struct.event_format** %11, align 8
  %13 = icmp ne %struct.event_format* %12, null
  br i1 %13, label %14, label %39

14:                                               ; preds = %3
  %15 = load %struct.pevent*, %struct.pevent** %5, align 8
  %16 = getelementptr inbounds %struct.pevent, %struct.pevent* %15, i32 0, i32 1
  %17 = load %struct.event_format*, %struct.event_format** %16, align 8
  %18 = getelementptr inbounds %struct.event_format, %struct.event_format* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %14
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.pevent*, %struct.pevent** %5, align 8
  %28 = getelementptr inbounds %struct.pevent, %struct.pevent* %27, i32 0, i32 1
  %29 = load %struct.event_format*, %struct.event_format** %28, align 8
  %30 = getelementptr inbounds %struct.event_format, %struct.event_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strcmp(i32 %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26, %23
  %36 = load %struct.pevent*, %struct.pevent** %5, align 8
  %37 = getelementptr inbounds %struct.pevent, %struct.pevent* %36, i32 0, i32 1
  %38 = load %struct.event_format*, %struct.event_format** %37, align 8
  store %struct.event_format* %38, %struct.event_format** %4, align 8
  br label %89

39:                                               ; preds = %26, %14, %3
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %74, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.pevent*, %struct.pevent** %5, align 8
  %43 = getelementptr inbounds %struct.pevent, %struct.pevent* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %40
  %47 = load %struct.pevent*, %struct.pevent** %5, align 8
  %48 = getelementptr inbounds %struct.pevent, %struct.pevent* %47, i32 0, i32 2
  %49 = load %struct.event_format**, %struct.event_format*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.event_format*, %struct.event_format** %49, i64 %51
  %53 = load %struct.event_format*, %struct.event_format** %52, align 8
  store %struct.event_format* %53, %struct.event_format** %8, align 8
  %54 = load %struct.event_format*, %struct.event_format** %8, align 8
  %55 = getelementptr inbounds %struct.event_format, %struct.event_format* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strcmp(i32 %56, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %46
  %61 = load i8*, i8** %6, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  br label %77

64:                                               ; preds = %60
  %65 = load %struct.event_format*, %struct.event_format** %8, align 8
  %66 = getelementptr inbounds %struct.event_format, %struct.event_format* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = call i64 @strcmp(i32 %67, i8* %68)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %77

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %40

77:                                               ; preds = %71, %63, %40
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.pevent*, %struct.pevent** %5, align 8
  %80 = getelementptr inbounds %struct.pevent, %struct.pevent* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store %struct.event_format* null, %struct.event_format** %8, align 8
  br label %84

84:                                               ; preds = %83, %77
  %85 = load %struct.event_format*, %struct.event_format** %8, align 8
  %86 = load %struct.pevent*, %struct.pevent** %5, align 8
  %87 = getelementptr inbounds %struct.pevent, %struct.pevent* %86, i32 0, i32 1
  store %struct.event_format* %85, %struct.event_format** %87, align 8
  %88 = load %struct.event_format*, %struct.event_format** %8, align 8
  store %struct.event_format* %88, %struct.event_format** %4, align 8
  br label %89

89:                                               ; preds = %84, %35
  %90 = load %struct.event_format*, %struct.event_format** %4, align 8
  ret %struct.event_format* %90
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
