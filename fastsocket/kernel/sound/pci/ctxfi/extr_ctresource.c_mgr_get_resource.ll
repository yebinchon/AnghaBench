; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctresource.c_mgr_get_resource.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctresource.c_mgr_get_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsc_mgr = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgr_get_resource(%struct.rsc_mgr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rsc_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.rsc_mgr* %0, %struct.rsc_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %11 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ugt i32 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %19 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %22 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @get_resource(i32 %20, i32 %23, i32 %24, i32* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.rsc_mgr*, %struct.rsc_mgr** %5, align 8
  %32 = getelementptr inbounds %struct.rsc_mgr, %struct.rsc_mgr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %17
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %14
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @get_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
