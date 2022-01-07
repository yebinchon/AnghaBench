; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_lib_depend_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_cc.c_dt_lib_depend_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @dt_lib_depend_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_lib_depend_free(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  br label %5

5:                                                ; preds = %58, %1
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = call %struct.TYPE_9__* @dt_list_next(i32* %7)
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %76

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %16, %10
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = call %struct.TYPE_9__* @dt_list_next(i32* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %4, align 8
  %15 = icmp ne %struct.TYPE_9__* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @dt_list_delete(i32* %18, %struct.TYPE_9__* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = call i32 @dt_free(%struct.TYPE_8__* %21, %struct.TYPE_9__* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 @dt_free(%struct.TYPE_8__* %26, %struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = call i32 @dt_free(%struct.TYPE_8__* %31, %struct.TYPE_9__* %32)
  br label %11

34:                                               ; preds = %11
  br label %35

35:                                               ; preds = %40, %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = call %struct.TYPE_9__* @dt_list_next(i32* %37)
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %4, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = call i32 @dt_list_delete(i32* %42, %struct.TYPE_9__* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = call i32 @dt_free(%struct.TYPE_8__* %45, %struct.TYPE_9__* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = call i32 @dt_free(%struct.TYPE_8__* %50, %struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = call i32 @dt_free(%struct.TYPE_8__* %55, %struct.TYPE_9__* %56)
  br label %35

58:                                               ; preds = %35
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = call i32 @dt_list_delete(i32* %60, %struct.TYPE_9__* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = call i32 @dt_free(%struct.TYPE_8__* %63, %struct.TYPE_9__* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = call i32 @dt_free(%struct.TYPE_8__* %68, %struct.TYPE_9__* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = call i32 @dt_free(%struct.TYPE_8__* %73, %struct.TYPE_9__* %74)
  br label %5

76:                                               ; preds = %5
  br label %77

77:                                               ; preds = %82, %76
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call %struct.TYPE_9__* @dt_list_next(i32* %79)
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %3, align 8
  %81 = icmp ne %struct.TYPE_9__* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %77
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = call i32 @dt_list_delete(i32* %84, %struct.TYPE_9__* %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @dt_free(%struct.TYPE_8__* %87, %struct.TYPE_9__* %90)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = call i32 @dt_free(%struct.TYPE_8__* %92, %struct.TYPE_9__* %93)
  br label %77

95:                                               ; preds = %77
  ret void
}

declare dso_local %struct.TYPE_9__* @dt_list_next(i32*) #1

declare dso_local i32 @dt_list_delete(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @dt_free(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
