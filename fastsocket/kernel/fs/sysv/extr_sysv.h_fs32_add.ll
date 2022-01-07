; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_sysv.h_fs32_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_sysv.h_fs32_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i64 }

@BYTESEX_PDP = common dso_local global i64 0, align 8
@BYTESEX_LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysv_sb_info*, i32*, i32)* @fs32_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs32_add(%struct.sysv_sb_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %8 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BYTESEX_PDP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @PDP_swab(i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i64 @PDP_swab(i64 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = bitcast i32* %21 to i64*
  store i64 %20, i64* %22, align 8
  br label %38

23:                                               ; preds = %3
  %24 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %25 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BYTESEX_LE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @le32_add_cpu(i32* %30, i32 %31)
  br label %37

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @be32_add_cpu(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %12
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

declare dso_local i64 @PDP_swab(i64) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
