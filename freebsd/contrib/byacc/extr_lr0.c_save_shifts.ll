; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_save_shifts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_lr0.c_save_shifts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_5__*, i64*, i64, i32 }

@nshifts = common dso_local global i32 0, align 4
@this_state = common dso_local global %struct.TYPE_6__* null, align 8
@shiftset = common dso_local global i64* null, align 8
@last_shift = common dso_local global %struct.TYPE_5__* null, align 8
@first_shift = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @save_shifts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_shifts() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = load i32, i32* @nshifts, align 4
  %6 = sub nsw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = add i64 32, %8
  %10 = trunc i64 %9 to i32
  %11 = call i64 @allocate(i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %1, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @this_state, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @nshifts, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  %22 = load i64*, i64** @shiftset, align 8
  store i64* %22, i64** %2, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %3, align 8
  %26 = load i64*, i64** @shiftset, align 8
  %27 = load i32, i32* @nshifts, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64* %29, i64** %4, align 8
  br label %30

30:                                               ; preds = %34, %0
  %31 = load i64*, i64** %2, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = icmp ult i64* %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i64*, i64** %2, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %2, align 8
  %37 = load i64, i64* %35, align 8
  %38 = load i64*, i64** %3, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %3, align 8
  store i64 %37, i64* %38, align 8
  br label %30

40:                                               ; preds = %30
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @last_shift, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @last_shift, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** @last_shift, align 8
  br label %51

48:                                               ; preds = %40
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** @first_shift, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %50, %struct.TYPE_5__** @last_shift, align 8
  br label %51

51:                                               ; preds = %48, %43
  ret void
}

declare dso_local i64 @allocate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
