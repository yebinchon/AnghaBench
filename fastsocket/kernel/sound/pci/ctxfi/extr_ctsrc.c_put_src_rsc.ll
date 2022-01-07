; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_put_src_rsc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_put_src_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src_mgr = type { i32, i32 }
%struct.src = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)* }

@MEMRD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.src_mgr*, %struct.src*)* @put_src_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_src_rsc(%struct.src_mgr* %0, %struct.src* %1) #0 {
  %3 = alloca %struct.src_mgr*, align 8
  %4 = alloca %struct.src*, align 8
  %5 = alloca i64, align 8
  store %struct.src_mgr* %0, %struct.src_mgr** %3, align 8
  store %struct.src* %1, %struct.src** %4, align 8
  %6 = load %struct.src_mgr*, %struct.src_mgr** %3, align 8
  %7 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.src*, %struct.src** %4, align 8
  %11 = getelementptr inbounds %struct.src, %struct.src* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %14, align 8
  %16 = load %struct.src*, %struct.src** %4, align 8
  %17 = getelementptr inbounds %struct.src, %struct.src* %16, i32 0, i32 2
  %18 = call i32 %15(%struct.TYPE_6__* %17)
  %19 = load i64, i64* @MEMRD, align 8
  %20 = load %struct.src*, %struct.src** %4, align 8
  %21 = getelementptr inbounds %struct.src, %struct.src* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %2
  %25 = load %struct.src_mgr*, %struct.src_mgr** %3, align 8
  %26 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %25, i32 0, i32 1
  %27 = load %struct.src*, %struct.src** %4, align 8
  %28 = getelementptr inbounds %struct.src, %struct.src* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.src*, %struct.src** %4, align 8
  %31 = getelementptr inbounds %struct.src, %struct.src* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %34, align 8
  %36 = load %struct.src*, %struct.src** %4, align 8
  %37 = getelementptr inbounds %struct.src, %struct.src* %36, i32 0, i32 2
  %38 = call i32 %35(%struct.TYPE_6__* %37)
  %39 = call i32 @mgr_put_resource(i32* %26, i32 %29, i32 %38)
  br label %53

40:                                               ; preds = %2
  %41 = load %struct.src_mgr*, %struct.src_mgr** %3, align 8
  %42 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %41, i32 0, i32 1
  %43 = load %struct.src*, %struct.src** %4, align 8
  %44 = getelementptr inbounds %struct.src, %struct.src* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %47, align 8
  %49 = load %struct.src*, %struct.src** %4, align 8
  %50 = getelementptr inbounds %struct.src, %struct.src* %49, i32 0, i32 2
  %51 = call i32 %48(%struct.TYPE_6__* %50)
  %52 = call i32 @mgr_put_resource(i32* %42, i32 1, i32 %51)
  br label %53

53:                                               ; preds = %40, %24
  %54 = load %struct.src_mgr*, %struct.src_mgr** %3, align 8
  %55 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %54, i32 0, i32 0
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  %58 = load %struct.src*, %struct.src** %4, align 8
  %59 = load %struct.src_mgr*, %struct.src_mgr** %3, align 8
  %60 = call i32 @src_rsc_uninit(%struct.src* %58, %struct.src_mgr* %59)
  %61 = load %struct.src*, %struct.src** %4, align 8
  %62 = call i32 @kfree(%struct.src* %61)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mgr_put_resource(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @src_rsc_uninit(%struct.src*, %struct.src_mgr*) #1

declare dso_local i32 @kfree(%struct.src*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
