; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_src_mgr_commit_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_src_mgr_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.src_mgr_ctrl_blk = type { %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SRCENBSTAT = common dso_local global i32 0, align 4
@SRCENBS = common dso_local global i64 0, align 8
@SRCENB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i8*)* @src_mgr_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_mgr_commit_write(%struct.hw* %0, i8* %1) #0 {
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.src_mgr_ctrl_blk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.src_mgr_ctrl_blk*
  store %struct.src_mgr_ctrl_blk* %9, %struct.src_mgr_ctrl_blk** %5, align 8
  %10 = load %struct.src_mgr_ctrl_blk*, %struct.src_mgr_ctrl_blk** %5, align 8
  %11 = getelementptr inbounds %struct.src_mgr_ctrl_blk, %struct.src_mgr_ctrl_blk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %21, %16
  %18 = load %struct.hw*, %struct.hw** %3, align 8
  %19 = load i32, i32* @SRCENBSTAT, align 4
  %20 = call i32 @hw_read_20kx(%struct.hw* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %17, label %25

25:                                               ; preds = %21
  %26 = load %struct.hw*, %struct.hw** %3, align 8
  %27 = load i64, i64* @SRCENBS, align 8
  %28 = load %struct.src_mgr_ctrl_blk*, %struct.src_mgr_ctrl_blk** %5, align 8
  %29 = getelementptr inbounds %struct.src_mgr_ctrl_blk, %struct.src_mgr_ctrl_blk* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @hw_write_20kx(%struct.hw* %26, i64 %27, i32 %30)
  %32 = load %struct.src_mgr_ctrl_blk*, %struct.src_mgr_ctrl_blk** %5, align 8
  %33 = getelementptr inbounds %struct.src_mgr_ctrl_blk, %struct.src_mgr_ctrl_blk* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %25, %2
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %73, %36
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %76

40:                                               ; preds = %37
  %41 = load %struct.src_mgr_ctrl_blk*, %struct.src_mgr_ctrl_blk** %5, align 8
  %42 = getelementptr inbounds %struct.src_mgr_ctrl_blk, %struct.src_mgr_ctrl_blk* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %40
  %50 = load %struct.hw*, %struct.hw** %3, align 8
  %51 = load i64, i64* @SRCENB, align 8
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %52, 256
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = load %struct.src_mgr_ctrl_blk*, %struct.src_mgr_ctrl_blk** %5, align 8
  %57 = getelementptr inbounds %struct.src_mgr_ctrl_blk, %struct.src_mgr_ctrl_blk* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @hw_write_20kx(%struct.hw* %50, i64 %55, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 1, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.src_mgr_ctrl_blk*, %struct.src_mgr_ctrl_blk** %5, align 8
  %68 = getelementptr inbounds %struct.src_mgr_ctrl_blk, %struct.src_mgr_ctrl_blk* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %66
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %49, %40
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %37

76:                                               ; preds = %37
  ret i32 0
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
