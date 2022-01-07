; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_real.c_real_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64*, i32, i32 }

@SIGSZ = common dso_local global i64 0, align 8
@HOST_BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @real_hash(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 2
  %14 = or i32 %9, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %42 [
    i32 128, label %18
    i32 131, label %18
    i32 129, label %20
    i32 130, label %26
  ]

18:                                               ; preds = %1, %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %72

20:                                               ; preds = %1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = call i32 @REAL_EXP(%struct.TYPE_4__* %21)
  %23 = shl i32 %22, 3
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = xor i32 %32, -1
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %72

41:                                               ; preds = %34
  br label %44

42:                                               ; preds = %1
  %43 = call i32 (...) @gcc_unreachable()
  br label %44

44:                                               ; preds = %42, %41, %20
  store i64 0, i64* %5, align 8
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @SIGSZ, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @HOST_BITS_PER_LONG, align 4
  %59 = sdiv i32 %58, 2
  %60 = zext i32 %59 to i64
  %61 = lshr i64 %57, %60
  %62 = xor i64 %56, %61
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = xor i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %49
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %45

70:                                               ; preds = %45
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %39, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @REAL_EXP(%struct.TYPE_4__*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
