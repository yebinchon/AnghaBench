; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_stat.c_mon_stat_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_stat.c_mon_stat_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.mon_bus* }
%struct.mon_bus = type { i32, i32, i32 }
%struct.file = type { %struct.snap* }
%struct.snap = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@STAT_BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"nreaders %d events %u text_lost %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mon_stat_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_stat_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.mon_bus*, align 8
  %7 = alloca %struct.snap*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.snap* @kmalloc(i32 8, i32 %8)
  store %struct.snap* %9, %struct.snap** %7, align 8
  %10 = icmp eq %struct.snap* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.mon_bus*, %struct.mon_bus** %16, align 8
  store %struct.mon_bus* %17, %struct.mon_bus** %6, align 8
  %18 = load %struct.snap*, %struct.snap** %7, align 8
  %19 = getelementptr inbounds %struct.snap, %struct.snap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STAT_BUF_SIZE, align 4
  %22 = load %struct.mon_bus*, %struct.mon_bus** %6, align 8
  %23 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mon_bus*, %struct.mon_bus** %6, align 8
  %26 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mon_bus*, %struct.mon_bus** %6, align 8
  %29 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snprintf(i32 %20, i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30)
  %32 = load %struct.snap*, %struct.snap** %7, align 8
  %33 = getelementptr inbounds %struct.snap, %struct.snap* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.snap*, %struct.snap** %7, align 8
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 0
  store %struct.snap* %34, %struct.snap** %36, align 8
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %14, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.snap* @kmalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
