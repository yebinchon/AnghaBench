; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_change_defmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_change_defmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, %struct.cbq_class*, %struct.TYPE_2__, %struct.cbq_class* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*, i64, i64, i64)* @cbq_change_defmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_change_defmap(%struct.cbq_class* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.cbq_class* null, %struct.cbq_class** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %14 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %13, i32 0, i32 1
  %15 = load %struct.cbq_class*, %struct.cbq_class** %14, align 8
  store %struct.cbq_class* %15, %struct.cbq_class** %9, align 8
  %16 = icmp eq %struct.cbq_class* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %93

18:                                               ; preds = %12
  %19 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %20 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %18, %4
  %24 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %25 = icmp eq %struct.cbq_class* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %28 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %26, %23
  %34 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %35 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %34, i32 0, i32 3
  %36 = load %struct.cbq_class*, %struct.cbq_class** %35, align 8
  store %struct.cbq_class* %36, %struct.cbq_class** %9, align 8
  br label %37

37:                                               ; preds = %49, %33
  %38 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %39 = icmp ne %struct.cbq_class* %38, null
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %42 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %53

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %51 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %50, i32 0, i32 3
  %52 = load %struct.cbq_class*, %struct.cbq_class** %51, align 8
  store %struct.cbq_class* %52, %struct.cbq_class** %9, align 8
  br label %37

53:                                               ; preds = %47, %37
  br label %54

54:                                               ; preds = %53, %26
  %55 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %56 = icmp eq %struct.cbq_class* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %93

58:                                               ; preds = %54
  %59 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %60 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %59, i32 0, i32 1
  %61 = load %struct.cbq_class*, %struct.cbq_class** %60, align 8
  %62 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %63 = icmp ne %struct.cbq_class* %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %66 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %68 = call i32 @cbq_sync_defmap(%struct.cbq_class* %67)
  %69 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %70 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %71 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %70, i32 0, i32 1
  store %struct.cbq_class* %69, %struct.cbq_class** %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = and i64 %72, %73
  %75 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %76 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %90

77:                                               ; preds = %58
  %78 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %79 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = xor i64 %81, -1
  %83 = and i64 %80, %82
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = and i64 %84, %85
  %87 = or i64 %83, %86
  %88 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %89 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %77, %64
  %91 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %92 = call i32 @cbq_sync_defmap(%struct.cbq_class* %91)
  br label %93

93:                                               ; preds = %90, %57, %17
  ret void
}

declare dso_local i32 @cbq_sync_defmap(%struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
