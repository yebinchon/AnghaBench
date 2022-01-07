; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_dgr4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_dgr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vblk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vblk_dgrp }
%struct.vblk_dgrp = type { i32 }

@VBLK_FLAG_DGR4_IDS = common dso_local global i32 0, align 4
@VBLK_SIZE_DGR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.vblk*)* @ldm_parse_dgr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_parse_dgr4(i32* %0, i32 %1, %struct.vblk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vblk*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vblk_dgrp*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vblk* %2, %struct.vblk** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.vblk*, %struct.vblk** %7, align 8
  %19 = icmp ne %struct.vblk* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ true, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ldm_relative(i32* %25, i32 %26, i32 24, i32 0)
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ldm_relative(i32* %28, i32 %29, i32 24, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 18
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VBLK_FLAG_DGR4_IDS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %21
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @ldm_relative(i32* %39, i32 %40, i32 68, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @ldm_relative(i32* %43, i32 %44, i32 68, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %13, align 4
  br label %50

48:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %48, %38
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %77

54:                                               ; preds = %50
  %55 = load i64, i64* @VBLK_SIZE_DGR4, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 20
  %63 = call i32 @get_unaligned_be32(i32* %62)
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %77

66:                                               ; preds = %54
  %67 = load %struct.vblk*, %struct.vblk** %7, align 8
  %68 = getelementptr inbounds %struct.vblk, %struct.vblk* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.vblk_dgrp* %69, %struct.vblk_dgrp** %14, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 24
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %76 = call i32 @ldm_get_vstr(i32* %74, i8* %75, i32 64)
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %66, %65, %53
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldm_relative(i32*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @ldm_get_vstr(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
