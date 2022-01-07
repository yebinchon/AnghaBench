; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_fs.c_jffs2_flash_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_fs.c_jffs2_flash_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jffs2_flash_cleanup(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca %struct.jffs2_sb_info*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %2, align 8
  %3 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %4 = call i64 @jffs2_cleanmarker_oob(%struct.jffs2_sb_info* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %8 = call i32 @jffs2_nand_flash_cleanup(%struct.jffs2_sb_info* %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %11 = call i64 @jffs2_dataflash(%struct.jffs2_sb_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %15 = call i32 @jffs2_dataflash_cleanup(%struct.jffs2_sb_info* %14)
  br label %16

16:                                               ; preds = %13, %9
  %17 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %18 = call i64 @jffs2_nor_wbuf_flash(%struct.jffs2_sb_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %22 = call i32 @jffs2_nor_wbuf_flash_cleanup(%struct.jffs2_sb_info* %21)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %25 = call i64 @jffs2_ubivol(%struct.jffs2_sb_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %29 = call i32 @jffs2_ubivol_cleanup(%struct.jffs2_sb_info* %28)
  br label %30

30:                                               ; preds = %27, %23
  ret void
}

declare dso_local i64 @jffs2_cleanmarker_oob(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_nand_flash_cleanup(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_dataflash(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_dataflash_cleanup(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_nor_wbuf_flash(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_nor_wbuf_flash_cleanup(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_ubivol(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_ubivol_cleanup(%struct.jffs2_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
