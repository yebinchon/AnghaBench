; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_src_mgr_dsb_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_src_mgr_dsb_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src_mgr_ctrl_blk = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @src_mgr_dsb_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_mgr_dsb_src(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = urem i32 %5, 32
  %7 = shl i32 1, %6
  %8 = xor i32 %7, -1
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.src_mgr_ctrl_blk*
  %11 = getelementptr inbounds %struct.src_mgr_ctrl_blk, %struct.src_mgr_ctrl_blk* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = udiv i32 %13, 32
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %8
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %4, align 4
  %20 = udiv i32 %19, 32
  %21 = shl i32 1, %20
  %22 = load i8*, i8** %3, align 8
  %23 = bitcast i8* %22 to %struct.src_mgr_ctrl_blk*
  %24 = getelementptr inbounds %struct.src_mgr_ctrl_blk, %struct.src_mgr_ctrl_blk* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %21
  store i32 %27, i32* %25, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
