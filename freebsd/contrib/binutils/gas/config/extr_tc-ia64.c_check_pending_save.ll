; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_check_pending_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ia64.c_check_pending_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }

@unwind = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"Previous .save incomplete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_pending_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pending_save() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @unwind, i32 0, i32 0), align 8
  %4 = icmp ne %struct.TYPE_9__* %3, null
  br i1 %4, label %5, label %94

5:                                                ; preds = %0
  %6 = call i32 @as_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @unwind, i32 0, i32 3), align 8
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %8

8:                                                ; preds = %78, %5
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %11, label %79

11:                                               ; preds = %8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @unwind, i32 0, i32 0), align 8
  %17 = icmp eq %struct.TYPE_9__* %15, %16
  br i1 %17, label %18, label %73

18:                                               ; preds = %11
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %26, align 8
  br label %31

27:                                               ; preds = %18
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @unwind, i32 0, i32 3), align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @unwind, i32 0, i32 2), align 8
  %34 = icmp eq %struct.TYPE_10__* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @unwind, i32 0, i32 2), align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @unwind, i32 0, i32 1), align 8
  %40 = icmp eq %struct.TYPE_10__* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @unwind, i32 0, i32 1), align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %2, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %71, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %1, align 8
  br label %79

73:                                               ; preds = %11
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %2, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %1, align 8
  br label %78

78:                                               ; preds = %73
  br label %8

79:                                               ; preds = %45, %8
  br label %80

80:                                               ; preds = %83, %79
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %2, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %1, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = call i32 @free(%struct.TYPE_10__* %91)
  br label %80

93:                                               ; preds = %80
  store %struct.TYPE_9__* null, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @unwind, i32 0, i32 0), align 8
  br label %94

94:                                               ; preds = %93, %0
  ret void
}

declare dso_local i32 @as_warn(i8*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
