; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mulaw.c_cvt_s16_to_native.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_mulaw.c_cvt_s16_to_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mulaw_priv = type { i64, i64, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mulaw_priv*, i8*, i32)* @cvt_s16_to_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvt_s16_to_native(%struct.mulaw_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.mulaw_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mulaw_priv* %0, %struct.mulaw_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mulaw_priv*, %struct.mulaw_priv** %4, align 8
  %8 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = xor i32 %10, %9
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mulaw_priv*, %struct.mulaw_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @swab16(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = load %struct.mulaw_priv*, %struct.mulaw_priv** %4, align 8
  %21 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mulaw_priv*, %struct.mulaw_priv** %4, align 8
  %24 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.mulaw_priv*, %struct.mulaw_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @memset(i8* %28, i32 0, i64 %31)
  br label %33

33:                                               ; preds = %27, %19
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.mulaw_priv*, %struct.mulaw_priv** %4, align 8
  %36 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  %40 = bitcast i32* %6 to i8*
  %41 = load %struct.mulaw_priv*, %struct.mulaw_priv** %4, align 8
  %42 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %40, i64 %44
  %46 = load %struct.mulaw_priv*, %struct.mulaw_priv** %4, align 8
  %47 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @memcpy(i8* %39, i8* %45, i64 %48)
  ret void
}

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
