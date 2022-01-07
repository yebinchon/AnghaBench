; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-loop.c_create_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_event-loop.c_create_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.gdb_timer* }
%struct.gdb_timer = type { i32, %struct.gdb_timer*, %struct.TYPE_4__, i32, i32* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.timeval = type { i32, i32 }

@timer_list = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@gdb_notifier = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_timer(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gdb_timer*, align 8
  %8 = alloca %struct.gdb_timer*, align 8
  %9 = alloca %struct.gdb_timer*, align 8
  %10 = alloca %struct.timeval, align 4
  %11 = alloca %struct.timeval, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sdiv i32 %12, 1000
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = srem i32 %15, 1000
  %17 = mul nsw i32 %16, 1000
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = call i32 @gettimeofday(%struct.timeval* %10, i32* null)
  %20 = call i64 @xmalloc(i32 4)
  %21 = inttoptr i64 %20 to %struct.gdb_timer*
  store %struct.gdb_timer* %21, %struct.gdb_timer** %7, align 8
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %23, %25
  %27 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %28 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %31, %33
  %35 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %36 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %39 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 1000000
  br i1 %42, label %43, label %54

43:                                               ; preds = %3
  %44 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %45 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %50 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1000000
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %43, %3
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %57 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %56, i32 0, i32 4
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %60 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 0), align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 0), align 8
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 0), align 8
  %64 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %65 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.gdb_timer*, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 1), align 8
  store %struct.gdb_timer* %66, %struct.gdb_timer** %8, align 8
  br label %67

67:                                               ; preds = %102, %54
  %68 = load %struct.gdb_timer*, %struct.gdb_timer** %8, align 8
  %69 = icmp ne %struct.gdb_timer* %68, null
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = load %struct.gdb_timer*, %struct.gdb_timer** %8, align 8
  %72 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %76 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %74, %78
  br i1 %79, label %100, label %80

80:                                               ; preds = %70
  %81 = load %struct.gdb_timer*, %struct.gdb_timer** %8, align 8
  %82 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %86 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %84, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %80
  %91 = load %struct.gdb_timer*, %struct.gdb_timer** %8, align 8
  %92 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %96 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %94, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90, %70
  br label %106

101:                                              ; preds = %90, %80
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.gdb_timer*, %struct.gdb_timer** %8, align 8
  %104 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %103, i32 0, i32 1
  %105 = load %struct.gdb_timer*, %struct.gdb_timer** %104, align 8
  store %struct.gdb_timer* %105, %struct.gdb_timer** %8, align 8
  br label %67

106:                                              ; preds = %100, %67
  %107 = load %struct.gdb_timer*, %struct.gdb_timer** %8, align 8
  %108 = load %struct.gdb_timer*, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 1), align 8
  %109 = icmp eq %struct.gdb_timer* %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.gdb_timer*, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 1), align 8
  %112 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %113 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %112, i32 0, i32 1
  store %struct.gdb_timer* %111, %struct.gdb_timer** %113, align 8
  %114 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  store %struct.gdb_timer* %114, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 1), align 8
  br label %135

115:                                              ; preds = %106
  %116 = load %struct.gdb_timer*, %struct.gdb_timer** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @timer_list, i32 0, i32 1), align 8
  store %struct.gdb_timer* %116, %struct.gdb_timer** %9, align 8
  br label %117

117:                                              ; preds = %124, %115
  %118 = load %struct.gdb_timer*, %struct.gdb_timer** %9, align 8
  %119 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %118, i32 0, i32 1
  %120 = load %struct.gdb_timer*, %struct.gdb_timer** %119, align 8
  %121 = load %struct.gdb_timer*, %struct.gdb_timer** %8, align 8
  %122 = icmp ne %struct.gdb_timer* %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.gdb_timer*, %struct.gdb_timer** %9, align 8
  %126 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %125, i32 0, i32 1
  %127 = load %struct.gdb_timer*, %struct.gdb_timer** %126, align 8
  store %struct.gdb_timer* %127, %struct.gdb_timer** %9, align 8
  br label %117

128:                                              ; preds = %117
  %129 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %130 = load %struct.gdb_timer*, %struct.gdb_timer** %9, align 8
  %131 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %130, i32 0, i32 1
  store %struct.gdb_timer* %129, %struct.gdb_timer** %131, align 8
  %132 = load %struct.gdb_timer*, %struct.gdb_timer** %8, align 8
  %133 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %134 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %133, i32 0, i32 1
  store %struct.gdb_timer* %132, %struct.gdb_timer** %134, align 8
  br label %135

135:                                              ; preds = %128, %110
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdb_notifier, i32 0, i32 0), align 8
  %136 = load %struct.gdb_timer*, %struct.gdb_timer** %7, align 8
  %137 = getelementptr inbounds %struct.gdb_timer, %struct.gdb_timer* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  ret i32 %138
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
