; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_set_disksize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_set_disksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { i64 }

@.str = private unnamed_addr constant [109 x i8] c"disk size not provided. You can use disksize_kb module param to specify size.\0AUsing default: (%u%% of RAM).\0A\00", align 1
@default_disksize_perc_ram = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [292 x i8] c"There is little point creating a zram of greater than twice the size of memory since we expect a 2:1 compression ratio. Note that zram uses about 0.1%% of the size of the disk when not in use so a huge zram is wasteful.\0A\09Memory Size: %zu kB\0A\09Size you selected: %llu kB\0AContinuing anyway ...\0A\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zram*, i64)* @zram_set_disksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zram_set_disksize(%struct.zram* %0, i64 %1) #0 {
  %3 = alloca %struct.zram*, align 8
  %4 = alloca i64, align 8
  store %struct.zram* %0, %struct.zram** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.zram*, %struct.zram** %3, align 8
  %6 = getelementptr inbounds %struct.zram, %struct.zram* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* @default_disksize_perc_ram, align 8
  %11 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i64, i64* @default_disksize_perc_ram, align 8
  %13 = load i64, i64* %4, align 8
  %14 = udiv i64 %13, 100
  %15 = mul i64 %12, %14
  %16 = load %struct.zram*, %struct.zram** %3, align 8
  %17 = getelementptr inbounds %struct.zram, %struct.zram* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %18

18:                                               ; preds = %9, %2
  %19 = load %struct.zram*, %struct.zram** %3, align 8
  %20 = getelementptr inbounds %struct.zram, %struct.zram* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = mul i64 2, %22
  %24 = icmp ugt i64 %21, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = lshr i64 %26, 10
  %28 = load %struct.zram*, %struct.zram** %3, align 8
  %29 = getelementptr inbounds %struct.zram, %struct.zram* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 (i8*, i64, ...) @pr_info(i8* getelementptr inbounds ([292 x i8], [292 x i8]* @.str.1, i64 0, i64 0), i64 %27, i64 %30)
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i32, i32* @PAGE_MASK, align 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.zram*, %struct.zram** %3, align 8
  %36 = getelementptr inbounds %struct.zram, %struct.zram* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, %34
  store i64 %38, i64* %36, align 8
  ret void
}

declare dso_local i32 @pr_info(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
