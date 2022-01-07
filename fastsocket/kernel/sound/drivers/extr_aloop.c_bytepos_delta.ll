; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_bytepos_delta.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/extr_aloop.c_bytepos_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loopback_pcm = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loopback_pcm*, i32)* @bytepos_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytepos_delta(%struct.loopback_pcm* %0, i32 %1) #0 {
  %3 = alloca %struct.loopback_pcm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.loopback_pcm* %0, %struct.loopback_pcm** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %8 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %9 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @byte_pos(%struct.loopback_pcm* %7, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %14 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul i32 %12, %15
  %17 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %18 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %22 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %23 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @byte_pos(%struct.loopback_pcm* %21, i32 %24)
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %31 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %36 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %2
  %41 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %42 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %41, i32 0, i32 2
  store i32 0, i32* %42, align 4
  %43 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %44 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %47 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp uge i32 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %40
  %51 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %52 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %55 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = urem i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.loopback_pcm*, %struct.loopback_pcm** %3, align 8
  %59 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %58, i32 0, i32 4
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %40
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @byte_pos(%struct.loopback_pcm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
