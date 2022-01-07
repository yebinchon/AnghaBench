; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ak4xxx.c_snd_ice1712_akm4xxx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ak4xxx.c_snd_ice1712_akm4xxx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i64*, %struct.TYPE_2__, %struct.snd_ice1712**, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32* }
%struct.snd_ak4xxx_private = type { i32 }
%struct.snd_ice1712 = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_ice1712_akm4xxx_lock = common dso_local global i32* null, align 8
@snd_ice1712_akm4xxx_unlock = common dso_local global i32* null, align 8
@snd_ice1712_akm4xxx_write = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ice1712_akm4xxx_init(%struct.snd_akm4xxx* %0, %struct.snd_akm4xxx* %1, %struct.snd_ak4xxx_private* %2, %struct.snd_ice1712* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_akm4xxx*, align 8
  %7 = alloca %struct.snd_akm4xxx*, align 8
  %8 = alloca %struct.snd_ak4xxx_private*, align 8
  %9 = alloca %struct.snd_ice1712*, align 8
  %10 = alloca %struct.snd_ak4xxx_private*, align 8
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %6, align 8
  store %struct.snd_akm4xxx* %1, %struct.snd_akm4xxx** %7, align 8
  store %struct.snd_ak4xxx_private* %2, %struct.snd_ak4xxx_private** %8, align 8
  store %struct.snd_ice1712* %3, %struct.snd_ice1712** %9, align 8
  %11 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %8, align 8
  %12 = icmp ne %struct.snd_ak4xxx_private* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_ak4xxx_private* @kmalloc(i32 4, i32 %14)
  store %struct.snd_ak4xxx_private* %15, %struct.snd_ak4xxx_private** %10, align 8
  %16 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %10, align 8
  %17 = icmp eq %struct.snd_ak4xxx_private* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %83

21:                                               ; preds = %13
  %22 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %10, align 8
  %23 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %8, align 8
  %24 = bitcast %struct.snd_ak4xxx_private* %22 to i8*
  %25 = bitcast %struct.snd_ak4xxx_private* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  br label %27

26:                                               ; preds = %4
  store %struct.snd_ak4xxx_private* null, %struct.snd_ak4xxx_private** %10, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %29 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %7, align 8
  %30 = bitcast %struct.snd_akm4xxx* %28 to i8*
  %31 = bitcast %struct.snd_akm4xxx* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 48, i1 false)
  %32 = load %struct.snd_ice1712*, %struct.snd_ice1712** %9, align 8
  %33 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %36 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.snd_ak4xxx_private*, %struct.snd_ak4xxx_private** %10, align 8
  %38 = ptrtoint %struct.snd_ak4xxx_private* %37 to i64
  %39 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %40 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %38, i64* %42, align 8
  %43 = load %struct.snd_ice1712*, %struct.snd_ice1712** %9, align 8
  %44 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %45 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %44, i32 0, i32 2
  %46 = load %struct.snd_ice1712**, %struct.snd_ice1712*** %45, align 8
  %47 = getelementptr inbounds %struct.snd_ice1712*, %struct.snd_ice1712** %46, i64 0
  store %struct.snd_ice1712* %43, %struct.snd_ice1712** %47, align 8
  %48 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %49 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %27
  %54 = load i32*, i32** @snd_ice1712_akm4xxx_lock, align 8
  %55 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %56 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32* %54, i32** %57, align 8
  br label %58

58:                                               ; preds = %53, %27
  %59 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %60 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load i32*, i32** @snd_ice1712_akm4xxx_unlock, align 8
  %66 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %67 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32* %65, i32** %68, align 8
  br label %69

69:                                               ; preds = %64, %58
  %70 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %71 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load i32*, i32** @snd_ice1712_akm4xxx_write, align 8
  %77 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %78 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32* %76, i32** %79, align 8
  br label %80

80:                                               ; preds = %75, %69
  %81 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %6, align 8
  %82 = call i32 @snd_akm4xxx_init(%struct.snd_akm4xxx* %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %18
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.snd_ak4xxx_private* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_akm4xxx_init(%struct.snd_akm4xxx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
