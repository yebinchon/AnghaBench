; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_random32.c_prandom_bytes_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_random32.c_prandom_bytes_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rnd_state = type { i32 }

@BITS_PER_BYTE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prandom_bytes_state(%struct.rnd_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rnd_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.rnd_state* %0, %struct.rnd_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %43, %3
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @round_down(i32 %15, i32 1)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %13
  %19 = load %struct.rnd_state*, %struct.rnd_state** %4, align 8
  %20 = call zeroext i8 @prandom32(%struct.rnd_state* %19)
  store i8 %20, i8* %9, align 1
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %39, %18
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 1
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i8, i8* %9, align 1
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  store i8 %26, i8* %32, align 1
  %33 = load i8, i8* @BITS_PER_BYTE, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i32
  %37 = ashr i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %21

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 1
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %8, align 4
  br label %13

48:                                               ; preds = %13
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load %struct.rnd_state*, %struct.rnd_state** %4, align 8
  %54 = call zeroext i8 @prandom32(%struct.rnd_state* %53)
  store i8 %54, i8* %11, align 1
  br label %55

55:                                               ; preds = %71, %52
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i8, i8* %11, align 1
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 %60, i8* %64, align 1
  %65 = load i8, i8* @BITS_PER_BYTE, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* %11, align 1
  %68 = zext i8 %67 to i32
  %69 = ashr i32 %68, %66
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %11, align 1
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %55

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %48
  ret void
}

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local zeroext i8 @prandom32(%struct.rnd_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
