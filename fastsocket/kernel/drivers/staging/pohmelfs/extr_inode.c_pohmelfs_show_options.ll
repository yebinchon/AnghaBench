; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { i32 }
%struct.pohmelfs_sb = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c",idx=%u\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c",trans_scan_timeout=%u\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c",drop_scan_timeout=%u\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c",wait_on_page_timeout=%u\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c",trans_retries=%u\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c",crypto_thread_num=%u\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c",trans_max_pages=%u\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c",mcache_timeout=%u\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c",crypto_fail_unsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @pohmelfs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.pohmelfs_sb*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %6 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %7 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.pohmelfs_sb* @POHMELFS_SB(i32 %8)
  store %struct.pohmelfs_sb* %9, %struct.pohmelfs_sb** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %12 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %17 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @jiffies_to_msecs(i32 %18)
  %20 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %23 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @jiffies_to_msecs(i32 %24)
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %29 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @jiffies_to_msecs(i32 %30)
  %32 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %35 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %40 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %45 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %50 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @jiffies_to_msecs(i32 %51)
  %53 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %5, align 8
  %55 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %2
  %59 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %2
  ret i32 0
}

declare dso_local %struct.pohmelfs_sb* @POHMELFS_SB(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
