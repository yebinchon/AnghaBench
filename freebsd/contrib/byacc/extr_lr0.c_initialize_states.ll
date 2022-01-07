; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_initialize_states.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_initialize_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i64, i64, i64, i64 }

@derives = common dso_local global i64** null, align 8
@start_symbol = common dso_local global i64 0, align 8
@rrhs = common dso_local global i32* null, align 8
@this_state = common dso_local global %struct.TYPE_6__* null, align 8
@last_state = common dso_local global %struct.TYPE_6__* null, align 8
@first_state = common dso_local global %struct.TYPE_6__* null, align 8
@nstates = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_states() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = load i64**, i64*** @derives, align 8
  %5 = load i64, i64* @start_symbol, align 8
  %6 = getelementptr inbounds i64*, i64** %4, i64 %5
  %7 = load i64*, i64** %6, align 8
  store i64* %7, i64** %2, align 8
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %16, %0
  %9 = load i64*, i64** %2, align 8
  %10 = load i32, i32* %1, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %1, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %8

19:                                               ; preds = %8
  %20 = load i32, i32* %1, align 4
  %21 = zext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = add i64 48, %22
  %24 = trunc i64 %23 to i32
  %25 = call i64 @MALLOC(i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %3, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = call i32 @NO_SPACE(%struct.TYPE_6__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %1, align 4
  %38 = zext i32 %37 to i64
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %63, %19
  %42 = load i64*, i64** %2, align 8
  %43 = load i32, i32* %1, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp uge i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load i32*, i32** @rrhs, align 8
  %50 = load i64*, i64** %2, align 8
  %51 = load i32, i32* %1, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %49, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %1, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %1, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %41

66:                                               ; preds = %41
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** @this_state, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** @last_state, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** @first_state, align 8
  store i32 1, i32* @nstates, align 4
  ret void
}

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @NO_SPACE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
