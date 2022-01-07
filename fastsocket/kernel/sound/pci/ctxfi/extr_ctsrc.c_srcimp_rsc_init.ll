; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_srcimp_rsc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_srcimp_rsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.srcimp = type { %struct.TYPE_7__, %struct.srcimp_mgr*, i32*, i32, i32* }
%struct.srcimp_desc = type { i32 }
%struct.srcimp_mgr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SRCIMP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@srcimp_basic_rsc_ops = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@srcimp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srcimp*, %struct.srcimp_desc*, %struct.srcimp_mgr*)* @srcimp_rsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcimp_rsc_init(%struct.srcimp* %0, %struct.srcimp_desc* %1, %struct.srcimp_mgr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.srcimp*, align 8
  %6 = alloca %struct.srcimp_desc*, align 8
  %7 = alloca %struct.srcimp_mgr*, align 8
  %8 = alloca i32, align 4
  store %struct.srcimp* %0, %struct.srcimp** %5, align 8
  store %struct.srcimp_desc* %1, %struct.srcimp_desc** %6, align 8
  store %struct.srcimp_mgr* %2, %struct.srcimp_mgr** %7, align 8
  %9 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %10 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %9, i32 0, i32 0
  %11 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %12 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SRCIMP, align 4
  %17 = load %struct.srcimp_desc*, %struct.srcimp_desc** %6, align 8
  %18 = getelementptr inbounds %struct.srcimp_desc, %struct.srcimp_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %21 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rsc_init(%struct.TYPE_7__* %10, i32 %15, i32 %16, i32 %19, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %4, align 4
  br label %70

29:                                               ; preds = %3
  %30 = load %struct.srcimp_desc*, %struct.srcimp_desc** %6, align 8
  %31 = getelementptr inbounds %struct.srcimp_desc, %struct.srcimp_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @kzalloc(i32 %35, i32 %36)
  %38 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %39 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %41 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %65

47:                                               ; preds = %29
  %48 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %49 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store %struct.TYPE_8__* @srcimp_basic_rsc_ops, %struct.TYPE_8__** %50, align 8
  %51 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %52 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %51, i32 0, i32 2
  store i32* @srcimp_ops, i32** %52, align 8
  %53 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %54 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %55 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %54, i32 0, i32 1
  store %struct.srcimp_mgr* %53, %struct.srcimp_mgr** %55, align 8
  %56 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %57 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %60, align 8
  %62 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %63 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %62, i32 0, i32 0
  %64 = call i32 %61(%struct.TYPE_7__* %63)
  store i32 0, i32* %4, align 4
  br label %70

65:                                               ; preds = %44
  %66 = load %struct.srcimp*, %struct.srcimp** %5, align 8
  %67 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %66, i32 0, i32 0
  %68 = call i32 @rsc_uninit(%struct.TYPE_7__* %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %47, %27
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @rsc_init(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @rsc_uninit(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
