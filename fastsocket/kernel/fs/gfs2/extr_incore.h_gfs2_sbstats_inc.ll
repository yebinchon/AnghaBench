; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_incore.h_gfs2_sbstats_inc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_incore.h_gfs2_sbstats_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { %struct.TYPE_5__, %struct.gfs2_sbd* }
%struct.TYPE_5__ = type { i64 }
%struct.gfs2_sbd = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_glock*, i32)* @gfs2_sbstats_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_sbstats_inc(%struct.gfs2_glock* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %7 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %6, i32 0, i32 1
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %5, align 8
  %9 = call i32 (...) @preempt_disable()
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_6__* @this_cpu_ptr(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = call i32 (...) @preempt_enable()
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local %struct.TYPE_6__* @this_cpu_ptr(i32) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
