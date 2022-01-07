; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_process_sample_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/wavefront/extr_wavefront_synth.c_process_sample_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @process_sample_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_sample_hdr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__, align 4
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  store i32* %5, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @demunge_int32(i32* %6, i32 4)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 8
  store i32 %7, i32* %8, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 4
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @demunge_int32(i32* %11, i32 4)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 7
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 4
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @demunge_int32(i32* %16, i32 4)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 6
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @demunge_int32(i32* %21, i32 4)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @demunge_int32(i32* %26, i32 3)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 16
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = bitcast %struct.TYPE_2__* %3 to i8*
  %49 = call i32 @memcpy(i32* %47, i8* %48, i32 36)
  ret void
}

declare dso_local i32 @demunge_int32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
