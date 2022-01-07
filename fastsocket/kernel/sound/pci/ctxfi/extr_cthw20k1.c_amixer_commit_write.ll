; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_amixer_commit_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_amixer_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.amixer_rsc_ctrl_blk = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@AMOPLO = common dso_local global i64 0, align 8
@AMOPHI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i8*)* @amixer_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amixer_commit_write(%struct.hw* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.amixer_rsc_ctrl_blk*, align 8
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.amixer_rsc_ctrl_blk*
  store %struct.amixer_rsc_ctrl_blk* %9, %struct.amixer_rsc_ctrl_blk** %7, align 8
  %10 = load %struct.amixer_rsc_ctrl_blk*, %struct.amixer_rsc_ctrl_blk** %7, align 8
  %11 = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, %struct.amixer_rsc_ctrl_blk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %3
  %17 = load %struct.amixer_rsc_ctrl_blk*, %struct.amixer_rsc_ctrl_blk** %7, align 8
  %18 = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, %struct.amixer_rsc_ctrl_blk* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %16, %3
  %24 = load %struct.hw*, %struct.hw** %4, align 8
  %25 = load i64, i64* @AMOPLO, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul i32 %26, 8
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = load %struct.amixer_rsc_ctrl_blk*, %struct.amixer_rsc_ctrl_blk** %7, align 8
  %31 = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, %struct.amixer_rsc_ctrl_blk* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hw_write_20kx(%struct.hw* %24, i64 %29, i32 %32)
  %34 = load %struct.amixer_rsc_ctrl_blk*, %struct.amixer_rsc_ctrl_blk** %7, align 8
  %35 = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, %struct.amixer_rsc_ctrl_blk* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.hw*, %struct.hw** %4, align 8
  %39 = load i64, i64* @AMOPHI, align 8
  %40 = load i32, i32* %5, align 4
  %41 = mul i32 %40, 8
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = load %struct.amixer_rsc_ctrl_blk*, %struct.amixer_rsc_ctrl_blk** %7, align 8
  %45 = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, %struct.amixer_rsc_ctrl_blk* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @hw_write_20kx(%struct.hw* %38, i64 %43, i32 %46)
  %48 = load %struct.amixer_rsc_ctrl_blk*, %struct.amixer_rsc_ctrl_blk** %7, align 8
  %49 = getelementptr inbounds %struct.amixer_rsc_ctrl_blk, %struct.amixer_rsc_ctrl_blk* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %23, %16
  ret i32 0
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
