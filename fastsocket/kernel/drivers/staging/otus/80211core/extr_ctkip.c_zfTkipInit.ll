; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfTkipInit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfTkipInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsTkipSeed = type { i32, i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfTkipInit(i32* %0, i32* %1, %struct.zsTkipSeed* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.zsTkipSeed*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.zsTkipSeed* %2, %struct.zsTkipSeed** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %7, align 8
  %13 = bitcast %struct.zsTkipSeed* %12 to i32*
  %14 = call i32 @zfZeroMemory(i32* %13, i32 24)
  %15 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %7, align 8
  %16 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @zfMemoryCopy(i32 %17, i32* %18, i32 6)
  %20 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %7, align 8
  %21 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @zfMemoryCopy(i32 %22, i32* %23, i32 16)
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %8, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %8, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %50, %4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 4
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %41, 8
  %43 = shl i32 %40, %42
  %44 = load i8*, i8** %10, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %8, align 8
  %49 = load i32, i32* %47, align 4
  br label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %35

53:                                               ; preds = %35
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr i8, i8* %54, i64 1
  %56 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %7, align 8
  %57 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %7, align 8
  %60 = call i32 @zfTkipPhase1KeyMix(i8* %58, %struct.zsTkipSeed* %59)
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %7, align 8
  %63 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = load %struct.zsTkipSeed*, %struct.zsTkipSeed** %7, align 8
  %66 = getelementptr inbounds %struct.zsTkipSeed, %struct.zsTkipSeed* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  ret void
}

declare dso_local i32 @zfZeroMemory(i32*, i32) #1

declare dso_local i32 @zfMemoryCopy(i32, i32*, i32) #1

declare dso_local i32 @zfTkipPhase1KeyMix(i8*, %struct.zsTkipSeed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
