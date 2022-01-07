; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun_map.c_sun_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_sun_map.c_sun_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun_list = type { %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sun_list_add(%struct.sun_list* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.sun_list*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store %struct.sun_list* %0, %struct.sun_list** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.sun_list*, %struct.sun_list** %3, align 8
  %6 = getelementptr inbounds %struct.sun_list, %struct.sun_list* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp eq %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = load %struct.sun_list*, %struct.sun_list** %3, align 8
  %12 = getelementptr inbounds %struct.sun_list, %struct.sun_list* %11, i32 0, i32 0
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = load %struct.sun_list*, %struct.sun_list** %3, align 8
  %15 = getelementptr inbounds %struct.sun_list, %struct.sun_list* %14, i32 0, i32 1
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %17, align 8
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = load %struct.sun_list*, %struct.sun_list** %3, align 8
  %21 = getelementptr inbounds %struct.sun_list, %struct.sun_list* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %23, align 8
  %24 = load %struct.sun_list*, %struct.sun_list** %3, align 8
  %25 = getelementptr inbounds %struct.sun_list, %struct.sun_list* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = load %struct.sun_list*, %struct.sun_list** %3, align 8
  %31 = getelementptr inbounds %struct.sun_list, %struct.sun_list* %30, i32 0, i32 0
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %31, align 8
  br label %32

32:                                               ; preds = %18, %9
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
