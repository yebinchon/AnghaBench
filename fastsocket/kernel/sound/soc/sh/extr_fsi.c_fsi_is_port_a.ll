; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_is_port_a.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/sh/extr_fsi.c_fsi_is_port_a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.fsi_priv }
%struct.fsi_priv = type { i32 }

@master = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_priv*)* @fsi_is_port_a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_is_port_a(%struct.fsi_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_priv*, align 8
  store %struct.fsi_priv* %0, %struct.fsi_priv** %3, align 8
  %4 = load %struct.fsi_priv*, %struct.fsi_priv** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @master, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = icmp eq %struct.fsi_priv* %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
