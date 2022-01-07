; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_src_rsc_uninit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_src_rsc_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src = type { i64, i32, i32*, i32*, i32 }
%struct.src_mgr = type { i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*, %struct.src.0*)* }
%struct.src.0 = type opaque

@MEMRD = common dso_local global i64 0, align 8
@NUM_SRCMODES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.src*, %struct.src_mgr*)* @src_rsc_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_rsc_uninit(%struct.src* %0, %struct.src_mgr* %1) #0 {
  %3 = alloca %struct.src*, align 8
  %4 = alloca %struct.src_mgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.src*, align 8
  store %struct.src* %0, %struct.src** %3, align 8
  store %struct.src_mgr* %1, %struct.src_mgr** %4, align 8
  %8 = load i64, i64* @MEMRD, align 8
  %9 = load %struct.src*, %struct.src** %3, align 8
  %10 = getelementptr inbounds %struct.src, %struct.src* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.src*, %struct.src** %3, align 8
  %15 = getelementptr inbounds %struct.src, %struct.src* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  br label %18

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 1, %17 ]
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %20 = load %struct.src*, %struct.src** %3, align 8
  store %struct.src* %20, %struct.src** %7, align 8
  br label %21

21:                                               ; preds = %45, %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load %struct.src_mgr*, %struct.src_mgr** %4, align 8
  %27 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %26, i32 0, i32 1
  %28 = load i32 (%struct.src_mgr*, %struct.src.0*)*, i32 (%struct.src_mgr*, %struct.src.0*)** %27, align 8
  %29 = load %struct.src_mgr*, %struct.src_mgr** %4, align 8
  %30 = load %struct.src*, %struct.src** %7, align 8
  %31 = bitcast %struct.src* %30 to %struct.src.0*
  %32 = call i32 %28(%struct.src_mgr* %29, %struct.src.0* %31)
  %33 = load %struct.src*, %struct.src** %7, align 8
  %34 = getelementptr inbounds %struct.src, %struct.src* %33, i32 0, i32 4
  %35 = call i32 @rsc_uninit(i32* %34)
  %36 = load %struct.src*, %struct.src** %7, align 8
  %37 = getelementptr inbounds %struct.src, %struct.src* %36, i32 0, i32 1
  store i32 0, i32* %37, align 8
  %38 = load %struct.src*, %struct.src** %7, align 8
  %39 = getelementptr inbounds %struct.src, %struct.src* %38, i32 0, i32 3
  store i32* null, i32** %39, align 8
  %40 = load i64, i64* @NUM_SRCMODES, align 8
  %41 = load %struct.src*, %struct.src** %7, align 8
  %42 = getelementptr inbounds %struct.src, %struct.src* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.src*, %struct.src** %7, align 8
  %44 = getelementptr inbounds %struct.src, %struct.src* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %25
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load %struct.src*, %struct.src** %7, align 8
  %49 = getelementptr inbounds %struct.src, %struct.src* %48, i32 1
  store %struct.src* %49, %struct.src** %7, align 8
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.src_mgr*, %struct.src_mgr** %4, align 8
  %52 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %51, i32 0, i32 0
  %53 = load i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*)** %52, align 8
  %54 = load %struct.src_mgr*, %struct.src_mgr** %4, align 8
  %55 = call i32 %53(%struct.src_mgr* %54)
  ret i32 0
}

declare dso_local i32 @rsc_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
