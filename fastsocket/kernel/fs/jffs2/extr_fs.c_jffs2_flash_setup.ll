; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_fs.c_jffs2_flash_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_fs.c_jffs2_flash_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*)* @jffs2_flash_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_flash_setup(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %6 = call i64 @jffs2_cleanmarker_oob(%struct.jffs2_sb_info* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %10 = call i32 @jffs2_nand_flash_setup(%struct.jffs2_sb_info* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %18 = call i64 @jffs2_dataflash(%struct.jffs2_sb_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %22 = call i32 @jffs2_dataflash_setup(%struct.jffs2_sb_info* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %54

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %16
  %29 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %30 = call i64 @jffs2_nor_wbuf_flash(%struct.jffs2_sb_info* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %34 = call i32 @jffs2_nor_wbuf_flash_setup(%struct.jffs2_sb_info* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %42 = call i64 @jffs2_ubivol(%struct.jffs2_sb_info* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %46 = call i32 @jffs2_ubivol_setup(%struct.jffs2_sb_info* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %49, %37, %25, %13
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @jffs2_cleanmarker_oob(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_nand_flash_setup(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_dataflash(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_dataflash_setup(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_nor_wbuf_flash(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_nor_wbuf_flash_setup(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_ubivol(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_ubivol_setup(%struct.jffs2_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
