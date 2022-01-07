; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_dsk4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_dsk4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vblk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vblk_disk }
%struct.vblk_disk = type { i32 }

@VBLK_SIZE_DSK4 = common dso_local global i64 0, align 8
@GUID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.vblk*)* @ldm_parse_dsk4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_parse_dsk4(i32* %0, i32 %1, %struct.vblk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vblk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vblk_disk*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vblk* %2, %struct.vblk** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.vblk*, %struct.vblk** %7, align 8
  %16 = icmp ne %struct.vblk* %15, null
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ true, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ldm_relative(i32* %22, i32 %23, i32 24, i32 0)
  store i32 %24, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @ldm_relative(i32* %25, i32 %26, i32 24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %59

33:                                               ; preds = %18
  %34 = load i64, i64* @VBLK_SIZE_DSK4, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 20
  %42 = call i32 @get_unaligned_be32(i32* %41)
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %59

45:                                               ; preds = %33
  %46 = load %struct.vblk*, %struct.vblk** %7, align 8
  %47 = getelementptr inbounds %struct.vblk, %struct.vblk* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.vblk_disk* %48, %struct.vblk_disk** %11, align 8
  %49 = load %struct.vblk_disk*, %struct.vblk_disk** %11, align 8
  %50 = getelementptr inbounds %struct.vblk_disk, %struct.vblk_disk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 24
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @GUID_SIZE, align 4
  %58 = call i32 @memcpy(i32 %51, i32* %56, i32 %57)
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %45, %44, %32
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldm_relative(i32*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
