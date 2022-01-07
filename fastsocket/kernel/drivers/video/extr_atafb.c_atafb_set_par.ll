; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_atafb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_atafb.c_atafb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*, %struct.atafb_par*)*, i32 (i32*, %struct.atafb_par*)* }
%struct.atafb_par = type { i32 }
%struct.fb_info = type { i32, i32, i32, i64 }

@fbhw = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @atafb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atafb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.atafb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.atafb_par*
  store %struct.atafb_par* %7, %struct.atafb_par** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fbhw, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (i32*, %struct.atafb_par*)*, i32 (i32*, %struct.atafb_par*)** %9, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 2
  %13 = load %struct.atafb_par*, %struct.atafb_par** %3, align 8
  %14 = call i32 %10(i32* %12, %struct.atafb_par* %13)
  %15 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fbhw, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32*, %struct.atafb_par*)*, i32 (i32*, %struct.atafb_par*)** %19, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = load %struct.atafb_par*, %struct.atafb_par** %3, align 8
  %24 = call i32 %20(i32* %22, %struct.atafb_par* %23)
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load %struct.atafb_par*, %struct.atafb_par** %3, align 8
  %29 = call i32 @ata_set_par(%struct.atafb_par* %28)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ata_set_par(%struct.atafb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
