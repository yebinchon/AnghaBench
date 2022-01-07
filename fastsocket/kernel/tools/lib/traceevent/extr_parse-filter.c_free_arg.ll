; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_free_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_free_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_arg = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.filter_arg*, %struct.filter_arg* }
%struct.TYPE_9__ = type { %struct.filter_arg*, i32 }
%struct.TYPE_8__ = type { %struct.filter_arg*, i32, %struct.filter_arg* }
%struct.TYPE_7__ = type { %struct.filter_arg*, %struct.filter_arg* }
%struct.TYPE_6__ = type { %struct.filter_arg*, %struct.filter_arg* }

@FILTER_STRING = common dso_local global i32 0, align 4
@FILTER_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filter_arg*)* @free_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_arg(%struct.filter_arg* %0) #0 {
  %2 = alloca %struct.filter_arg*, align 8
  store %struct.filter_arg* %0, %struct.filter_arg** %2, align 8
  %3 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %4 = icmp ne %struct.filter_arg* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %78

6:                                                ; preds = %1
  %7 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %8 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %74 [
    i32 132, label %10
    i32 134, label %10
    i32 131, label %11
    i32 133, label %20
    i32 129, label %29
    i32 128, label %44
    i32 130, label %65
  ]

10:                                               ; preds = %6, %6
  br label %75

11:                                               ; preds = %6
  %12 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %13 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load %struct.filter_arg*, %struct.filter_arg** %14, align 8
  call void @free_arg(%struct.filter_arg* %15)
  %16 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %17 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.filter_arg*, %struct.filter_arg** %18, align 8
  call void @free_arg(%struct.filter_arg* %19)
  br label %75

20:                                               ; preds = %6
  %21 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %22 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.filter_arg*, %struct.filter_arg** %23, align 8
  call void @free_arg(%struct.filter_arg* %24)
  %25 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %26 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.filter_arg*, %struct.filter_arg** %27, align 8
  call void @free_arg(%struct.filter_arg* %28)
  br label %75

29:                                               ; preds = %6
  %30 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %31 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.filter_arg*, %struct.filter_arg** %32, align 8
  %34 = call i32 @free(%struct.filter_arg* %33)
  %35 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %36 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = call i32 @regfree(i32* %37)
  %39 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %40 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.filter_arg*, %struct.filter_arg** %41, align 8
  %43 = call i32 @free(%struct.filter_arg* %42)
  br label %75

44:                                               ; preds = %6
  %45 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %46 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @FILTER_STRING, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %53 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FILTER_CHAR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51, %44
  %59 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %60 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.filter_arg*, %struct.filter_arg** %61, align 8
  %63 = call i32 @free(%struct.filter_arg* %62)
  br label %64

64:                                               ; preds = %58, %51
  br label %75

65:                                               ; preds = %6
  %66 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %67 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.filter_arg*, %struct.filter_arg** %68, align 8
  call void @free_arg(%struct.filter_arg* %69)
  %70 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %71 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.filter_arg*, %struct.filter_arg** %72, align 8
  call void @free_arg(%struct.filter_arg* %73)
  br label %74

74:                                               ; preds = %6, %65
  br label %75

75:                                               ; preds = %74, %64, %29, %20, %11, %10
  %76 = load %struct.filter_arg*, %struct.filter_arg** %2, align 8
  %77 = call i32 @free(%struct.filter_arg* %76)
  br label %78

78:                                               ; preds = %75, %5
  ret void
}

declare dso_local i32 @free(%struct.filter_arg*) #1

declare dso_local i32 @regfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
