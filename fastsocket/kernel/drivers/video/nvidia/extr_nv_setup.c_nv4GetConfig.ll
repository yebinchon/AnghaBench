; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_setup.c_nv4GetConfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_setup.c_nv4GetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i32, i32, i32, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvidia_par*)* @nv4GetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv4GetConfig(%struct.nvidia_par* %0) #0 {
  %2 = alloca %struct.nvidia_par*, align 8
  store %struct.nvidia_par* %0, %struct.nvidia_par** %2, align 8
  %3 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %4 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @NV_RD32(i32 %5, i32 0)
  %7 = and i32 %6, 256
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %11 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NV_RD32(i32 %12, i32 0)
  %14 = ashr i32 %13, 12
  %15 = and i32 %14, 15
  %16 = mul nsw i32 %15, 1024
  %17 = mul nsw i32 %16, 2
  %18 = add nsw i32 %17, 2048
  %19 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %20 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %23 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @NV_RD32(i32 %24, i32 0)
  %26 = and i32 %25, 3
  switch i32 %26, label %37 [
    i32 0, label %27
    i32 1, label %30
    i32 2, label %33
    i32 3, label %36
  ]

27:                                               ; preds = %21
  %28 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %29 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %28, i32 0, i32 0
  store i32 32768, i32* %29, align 8
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %32 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %31, i32 0, i32 0
  store i32 4096, i32* %32, align 8
  br label %40

33:                                               ; preds = %21
  %34 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %35 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %34, i32 0, i32 0
  store i32 8192, i32* %35, align 8
  br label %40

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %21, %36
  %38 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %39 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %38, i32 0, i32 0
  store i32 16384, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %33, %30, %27
  br label %41

41:                                               ; preds = %40, %9
  %42 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %43 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @NV_RD32(i32 %44, i32 0)
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 14318, i32 13500
  %50 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %51 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %53 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7680
  %56 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %57 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %56, i32 0, i32 5
  store i32* %55, i32** %57, align 8
  %58 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %59 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %58, i32 0, i32 2
  store i32 12000, i32* %59, align 8
  %60 = load %struct.nvidia_par*, %struct.nvidia_par** %2, align 8
  %61 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %60, i32 0, i32 3
  store i32 350000, i32* %61, align 4
  ret void
}

declare dso_local i32 @NV_RD32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
