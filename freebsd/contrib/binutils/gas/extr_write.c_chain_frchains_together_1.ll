; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_chain_frchains_together_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_chain_frchains_together_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.frchain = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i64, %struct.frchain* }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, %struct.frchain*)* @chain_frchains_together_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @chain_frchains_together_1(i32 %0, %struct.frchain* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.frchain*, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.frchain* %1, %struct.frchain** %4, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %8, align 8
  br label %9

9:                                                ; preds = %60, %2
  %10 = load %struct.frchain*, %struct.frchain** %4, align 8
  %11 = icmp ne %struct.frchain* %10, null
  br i1 %11, label %12, label %64

12:                                               ; preds = %9
  %13 = load %struct.frchain*, %struct.frchain** %4, align 8
  %14 = getelementptr inbounds %struct.frchain, %struct.frchain* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.frchain*, %struct.frchain** %4, align 8
  %19 = getelementptr inbounds %struct.frchain, %struct.frchain* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %6, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.frchain*, %struct.frchain** %4, align 8
  %28 = getelementptr inbounds %struct.frchain, %struct.frchain* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %12
  %32 = load i32, i32* %3, align 4
  %33 = call %struct.TYPE_7__* @seg_info(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp eq %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.frchain*, %struct.frchain** %4, align 8
  %39 = getelementptr inbounds %struct.frchain, %struct.frchain* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call %struct.TYPE_7__* @seg_info(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %43, align 8
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.frchain*, %struct.frchain** %4, align 8
  %46 = getelementptr inbounds %struct.frchain, %struct.frchain* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.frchain*, %struct.frchain** %4, align 8
  %51 = getelementptr inbounds %struct.frchain, %struct.frchain* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call %struct.TYPE_7__* @seg_info(i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.frchain*, %struct.frchain** %4, align 8
  %57 = getelementptr inbounds %struct.frchain, %struct.frchain* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %8, align 8
  br label %59

59:                                               ; preds = %44, %12
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.frchain*, %struct.frchain** %4, align 8
  %62 = getelementptr inbounds %struct.frchain, %struct.frchain* %61, i32 0, i32 4
  %63 = load %struct.frchain*, %struct.frchain** %62, align 8
  store %struct.frchain* %63, %struct.frchain** %4, align 8
  br label %9

64:                                               ; preds = %9
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, %5
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  ret %struct.TYPE_5__* %77
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @seg_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
