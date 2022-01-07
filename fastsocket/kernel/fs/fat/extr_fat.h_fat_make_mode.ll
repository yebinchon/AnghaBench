; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fat.h_fat_make_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fat.h_fat_make_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdos_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ATTR_RO = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdos_sb_info*, i32, i32)* @fat_make_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_make_mode(%struct.msdos_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msdos_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @ATTR_RO, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ATTR_DIR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %19 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17, %12
  %24 = load i32, i32* @S_IWUGO, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %17, %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ATTR_DIR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %36 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %34, %39
  %41 = load i32, i32* @S_IFDIR, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %28
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %46 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %44, %49
  %51 = load i32, i32* @S_IFREG, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %33
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
