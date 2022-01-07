; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_daio_mgr_dao_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_daio_mgr_dao_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daio_mgr_ctrl_blk = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ATXCTL_NUC = common dso_local global i32 0, align 4
@ATXCTL_CD = common dso_local global i32 0, align 4
@ATXCTL_LIV = common dso_local global i32 0, align 4
@ATXCTL_RIV = common dso_local global i32 0, align 4
@ATXCTL_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @daio_mgr_dao_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_mgr_dao_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.daio_mgr_ctrl_blk*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.daio_mgr_ctrl_blk*
  store %struct.daio_mgr_ctrl_blk* %9, %struct.daio_mgr_ctrl_blk** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %110

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 7
  switch i32 %14, label %51 [
    i32 1, label %15
    i32 2, label %24
    i32 4, label %33
    i32 8, label %42
  ]

15:                                               ; preds = %12
  %16 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %17 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* @ATXCTL_NUC, align 4
  %23 = call i32 @set_field(i32* %21, i32 %22, i32 0)
  br label %52

24:                                               ; preds = %12
  %25 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %26 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* @ATXCTL_NUC, align 4
  %32 = call i32 @set_field(i32* %30, i32 %31, i32 1)
  br label %52

33:                                               ; preds = %12
  %34 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %35 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* @ATXCTL_NUC, align 4
  %41 = call i32 @set_field(i32* %39, i32 %40, i32 2)
  br label %52

42:                                               ; preds = %12
  %43 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %44 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* @ATXCTL_NUC, align 4
  %50 = call i32 @set_field(i32* %48, i32 %49, i32 3)
  br label %52

51:                                               ; preds = %12
  br label %52

52:                                               ; preds = %51, %42, %33, %24, %15
  %53 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %54 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* @ATXCTL_CD, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 7
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @set_field(i32* %58, i32 %59, i32 %64)
  %66 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %67 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* @ATXCTL_LIV, align 4
  %73 = load i32, i32* %6, align 4
  %74 = lshr i32 %73, 4
  %75 = and i32 %74, 1
  %76 = call i32 @set_field(i32* %71, i32 %72, i32 %75)
  %77 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %78 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* @ATXCTL_RIV, align 4
  %84 = load i32, i32* %6, align 4
  %85 = lshr i32 %84, 4
  %86 = and i32 %85, 1
  %87 = call i32 @set_field(i32* %82, i32 %83, i32 %86)
  %88 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %89 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* @ATXCTL_RAW, align 4
  %95 = load i32, i32* %6, align 4
  %96 = lshr i32 %95, 3
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 0, i32 0
  %101 = call i32 @set_field(i32* %93, i32 %94, i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = shl i32 1, %102
  %104 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %105 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 8
  br label %111

110:                                              ; preds = %3
  br label %111

111:                                              ; preds = %110, %52
  ret i32 0
}

declare dso_local i32 @set_field(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
