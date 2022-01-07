; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_random32.c_prandom32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_random32.c_prandom32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rnd_state = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prandom32(%struct.rnd_state* %0) #0 {
  %2 = alloca %struct.rnd_state*, align 8
  store %struct.rnd_state* %0, %struct.rnd_state** %2, align 8
  %3 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %4 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = and i64 %6, 4294967294
  %8 = shl i64 %7, 12
  %9 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %10 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 13
  %13 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %14 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = xor i32 %12, %15
  %17 = ashr i32 %16, 19
  %18 = sext i32 %17 to i64
  %19 = xor i64 %8, %18
  %20 = trunc i64 %19 to i32
  %21 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %22 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %24 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = and i64 %26, 4294967288
  %28 = shl i64 %27, 4
  %29 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %30 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 2
  %33 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %34 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %32, %35
  %37 = ashr i32 %36, 25
  %38 = sext i32 %37 to i64
  %39 = xor i64 %28, %38
  %40 = trunc i64 %39 to i32
  %41 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %42 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %44 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = and i64 %46, 4294967280
  %48 = shl i64 %47, 17
  %49 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %50 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 3
  %53 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %54 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %52, %55
  %57 = ashr i32 %56, 11
  %58 = sext i32 %57 to i64
  %59 = xor i64 %48, %58
  %60 = trunc i64 %59 to i32
  %61 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %62 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %64 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %67 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %65, %68
  %70 = load %struct.rnd_state*, %struct.rnd_state** %2, align 8
  %71 = getelementptr inbounds %struct.rnd_state, %struct.rnd_state* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %69, %72
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
