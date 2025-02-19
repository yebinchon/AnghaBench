; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_states_union.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_states_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, %struct.TYPE_9__*, i32)* @states_union to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @states_union(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.TYPE_9__* @get_free_state(i32 1, i64 %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %7, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @reserv_sets_or(i32 %24, i32 %27, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @reserv_sets_and(i32 %34, i32 %37, i32 %38)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = call %struct.TYPE_9__* @insert_state(%struct.TYPE_9__* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %8, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = icmp ne %struct.TYPE_9__* %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = call i32 @free_state(%struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %7, align 8
  br label %49

49:                                               ; preds = %45, %3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %50
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local %struct.TYPE_9__* @get_free_state(i32, i64) #1

declare dso_local i32 @reserv_sets_or(i32, i32, i32) #1

declare dso_local i32 @reserv_sets_and(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @insert_state(%struct.TYPE_9__*) #1

declare dso_local i32 @free_state(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
