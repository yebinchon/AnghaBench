; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_vq_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_vq_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32 }
%struct.vhost_virtqueue = type { i32, i32, i32, i64, i32*, i64, i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i64, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_dev*, %struct.vhost_virtqueue*)* @vhost_vq_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_vq_reset(%struct.vhost_dev* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca %struct.vhost_dev*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  store %struct.vhost_dev* %0, %struct.vhost_dev** %3, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %4, align 8
  %5 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %6 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %8 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %7, i32 0, i32 24
  store i32* null, i32** %8, align 8
  %9 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %10 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %9, i32 0, i32 23
  store i32* null, i32** %10, align 8
  %11 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %12 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %11, i32 0, i32 22
  store i32* null, i32** %12, align 8
  %13 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %14 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %13, i32 0, i32 21
  store i64 0, i64* %14, align 8
  %15 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %16 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %15, i32 0, i32 20
  store i64 0, i64* %16, align 8
  %17 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %18 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %17, i32 0, i32 19
  store i64 0, i64* %18, align 8
  %19 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %20 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %19, i32 0, i32 18
  store i64 0, i64* %20, align 8
  %21 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %22 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %21, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %24 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %23, i32 0, i32 17
  store i64 0, i64* %24, align 8
  %25 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %26 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %28 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %27, i32 0, i32 3
  store i64 -1, i64* %28, align 8
  %29 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %30 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %29, i32 0, i32 16
  store i64 0, i64* %30, align 8
  %31 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %32 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %31, i32 0, i32 15
  store i64 0, i64* %32, align 8
  %33 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %34 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %33, i32 0, i32 14
  store i32* null, i32** %34, align 8
  %35 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %36 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %35, i32 0, i32 13
  store i32* null, i32** %36, align 8
  %37 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %38 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %37, i32 0, i32 12
  store i32* null, i32** %38, align 8
  %39 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %40 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %39, i32 0, i32 11
  store i32* null, i32** %40, align 8
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %42 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %41, i32 0, i32 10
  store i32* null, i32** %42, align 8
  %43 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %44 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %43, i32 0, i32 9
  store i32* null, i32** %44, align 8
  %45 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %46 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %45, i32 0, i32 8
  store i32* null, i32** %46, align 8
  %47 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %48 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %47, i32 0, i32 7
  store i32* null, i32** %48, align 8
  %49 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %50 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %52 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %54 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
