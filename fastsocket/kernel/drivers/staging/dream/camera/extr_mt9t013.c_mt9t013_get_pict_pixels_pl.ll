; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_get_pict_pixels_pl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_get_pict_pixels_pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@mt9t013_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@RES_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mt9t013_get_pict_pixels_pl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t013_get_pict_pixels_pl() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mt9t013_regs, i32 0, i32 0), align 8
  %2 = load i64, i64* @RES_CAPTURE, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i64 %2
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
