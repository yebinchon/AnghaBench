; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_free_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_free_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.print_arg = type { i32, %struct.print_arg*, %struct.TYPE_11__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { %struct.print_arg* }
%struct.TYPE_20__ = type { %struct.print_arg*, %struct.print_arg*, %struct.print_arg* }
%struct.TYPE_19__ = type { %struct.print_arg* }
%struct.TYPE_18__ = type { %struct.print_arg* }
%struct.TYPE_17__ = type { %struct.print_arg*, %struct.print_arg* }
%struct.TYPE_16__ = type { %struct.print_arg*, %struct.print_arg* }
%struct.TYPE_15__ = type { i32, %struct.print_arg* }
%struct.TYPE_14__ = type { i32, %struct.print_arg*, %struct.print_arg* }
%struct.TYPE_13__ = type { %struct.print_arg* }
%struct.TYPE_12__ = type { %struct.print_arg* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.print_arg*)* @free_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_arg(%struct.print_arg* %0) #0 {
  %2 = alloca %struct.print_arg*, align 8
  %3 = alloca %struct.print_arg*, align 8
  store %struct.print_arg* %0, %struct.print_arg** %2, align 8
  %4 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %5 = icmp ne %struct.print_arg* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %118

7:                                                ; preds = %1
  %8 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %9 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %114 [
    i32 139, label %11
    i32 136, label %17
    i32 135, label %23
    i32 129, label %38
    i32 133, label %48
    i32 128, label %57
    i32 130, label %67
    i32 138, label %67
    i32 137, label %73
    i32 131, label %79
    i32 134, label %93
    i32 132, label %113
  ]

11:                                               ; preds = %7
  %12 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %13 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.print_arg*, %struct.print_arg** %14, align 8
  %16 = call i32 @free(%struct.print_arg* %15)
  br label %115

17:                                               ; preds = %7
  %18 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %19 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %18, i32 0, i32 10
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.print_arg*, %struct.print_arg** %20, align 8
  %22 = call i32 @free(%struct.print_arg* %21)
  br label %115

23:                                               ; preds = %7
  %24 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %25 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load %struct.print_arg*, %struct.print_arg** %26, align 8
  call void @free_arg(%struct.print_arg* %27)
  %28 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %29 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load %struct.print_arg*, %struct.print_arg** %30, align 8
  %32 = call i32 @free(%struct.print_arg* %31)
  %33 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %34 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @free_flag_sym(i32 %36)
  br label %115

38:                                               ; preds = %7
  %39 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %40 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load %struct.print_arg*, %struct.print_arg** %41, align 8
  call void @free_arg(%struct.print_arg* %42)
  %43 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %44 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @free_flag_sym(i32 %46)
  br label %115

48:                                               ; preds = %7
  %49 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %50 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load %struct.print_arg*, %struct.print_arg** %51, align 8
  call void @free_arg(%struct.print_arg* %52)
  %53 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %54 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.print_arg*, %struct.print_arg** %55, align 8
  call void @free_arg(%struct.print_arg* %56)
  br label %115

57:                                               ; preds = %7
  %58 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %59 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load %struct.print_arg*, %struct.print_arg** %60, align 8
  %62 = call i32 @free(%struct.print_arg* %61)
  %63 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %64 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load %struct.print_arg*, %struct.print_arg** %65, align 8
  call void @free_arg(%struct.print_arg* %66)
  br label %115

67:                                               ; preds = %7, %7
  %68 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %69 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load %struct.print_arg*, %struct.print_arg** %70, align 8
  %72 = call i32 @free(%struct.print_arg* %71)
  br label %115

73:                                               ; preds = %7
  %74 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %75 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load %struct.print_arg*, %struct.print_arg** %76, align 8
  %78 = call i32 @free(%struct.print_arg* %77)
  br label %115

79:                                               ; preds = %7
  %80 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %81 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load %struct.print_arg*, %struct.print_arg** %82, align 8
  %84 = call i32 @free(%struct.print_arg* %83)
  %85 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %86 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load %struct.print_arg*, %struct.print_arg** %87, align 8
  call void @free_arg(%struct.print_arg* %88)
  %89 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %90 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load %struct.print_arg*, %struct.print_arg** %91, align 8
  call void @free_arg(%struct.print_arg* %92)
  br label %115

93:                                               ; preds = %7
  br label %94

94:                                               ; preds = %100, %93
  %95 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %96 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.print_arg*, %struct.print_arg** %97, align 8
  %99 = icmp ne %struct.print_arg* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %94
  %101 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %102 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load %struct.print_arg*, %struct.print_arg** %103, align 8
  store %struct.print_arg* %104, %struct.print_arg** %3, align 8
  %105 = load %struct.print_arg*, %struct.print_arg** %3, align 8
  %106 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %105, i32 0, i32 1
  %107 = load %struct.print_arg*, %struct.print_arg** %106, align 8
  %108 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %109 = getelementptr inbounds %struct.print_arg, %struct.print_arg* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store %struct.print_arg* %107, %struct.print_arg** %110, align 8
  %111 = load %struct.print_arg*, %struct.print_arg** %3, align 8
  call void @free_arg(%struct.print_arg* %111)
  br label %94

112:                                              ; preds = %94
  br label %115

113:                                              ; preds = %7
  br label %114

114:                                              ; preds = %7, %113
  br label %115

115:                                              ; preds = %114, %112, %79, %73, %67, %57, %48, %38, %23, %17, %11
  %116 = load %struct.print_arg*, %struct.print_arg** %2, align 8
  %117 = call i32 @free(%struct.print_arg* %116)
  br label %118

118:                                              ; preds = %115, %6
  ret void
}

declare dso_local i32 @free(%struct.print_arg*) #1

declare dso_local i32 @free_flag_sym(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
