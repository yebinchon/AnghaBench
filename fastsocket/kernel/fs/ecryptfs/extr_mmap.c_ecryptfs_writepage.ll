; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_mmap.c_ecryptfs_writepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_mmap.c_ecryptfs_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.writeback_control = type { i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Error encrypting page (upper index [0x%.16x])\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @ecryptfs_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i32 @ecryptfs_encrypt_page(%struct.page* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* @KERN_WARNING, align 4
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = getelementptr inbounds %struct.page, %struct.page* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ecryptfs_printk(i32 %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.page*, %struct.page** %3, align 8
  %17 = call i32 @ClearPageUptodate(%struct.page* %16)
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = call i32 @SetPageUptodate(%struct.page* %19)
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @unlock_page(%struct.page* %21)
  br label %23

23:                                               ; preds = %18, %10
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @ecryptfs_encrypt_page(%struct.page*) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*, i32) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
