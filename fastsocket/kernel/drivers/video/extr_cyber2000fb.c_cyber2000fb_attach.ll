; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cyberpro_info = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32 }

@int_cfb_info = common dso_local global %struct.TYPE_6__* null, align 8
@cyber2000fb_enable_extregs = common dso_local global i32 0, align 4
@cyber2000fb_disable_extregs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyber2000fb_attach(%struct.cyberpro_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cyberpro_info*, align 8
  %4 = alloca i32, align 4
  store %struct.cyberpro_info* %0, %struct.cyberpro_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %49

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %12 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %17 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %23 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %30 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @cyber2000fb_enable_extregs, align 4
  %32 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %33 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @cyber2000fb_disable_extregs, align 4
  %35 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %36 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %38 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %39 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %38, i32 0, i32 1
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %41 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @strlcpy(i32 %42, i32 %47, i32 4)
  br label %49

49:                                               ; preds = %7, %2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %51 = icmp ne %struct.TYPE_6__* %50, null
  %52 = zext i1 %51 to i32
  ret i32 %52
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
