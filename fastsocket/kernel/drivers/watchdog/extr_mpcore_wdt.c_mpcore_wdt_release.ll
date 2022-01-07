; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpcore_wdt.c_mpcore_wdt_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_mpcore_wdt.c_mpcore_wdt_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.mpcore_wdt* }
%struct.mpcore_wdt = type { i32, i32, i32 }

@KERN_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unexpected close, not stopping watchdog!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mpcore_wdt_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpcore_wdt_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.mpcore_wdt*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %7, align 8
  store %struct.mpcore_wdt* %8, %struct.mpcore_wdt** %5, align 8
  %9 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %5, align 8
  %10 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 42
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %5, align 8
  %15 = call i32 @mpcore_wdt_stop(%struct.mpcore_wdt* %14)
  br label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @KERN_CRIT, align 4
  %18 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %5, align 8
  %19 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_printk(i32 %17, i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %5, align 8
  %23 = call i32 @mpcore_wdt_keepalive(%struct.mpcore_wdt* %22)
  br label %24

24:                                               ; preds = %16, %13
  %25 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %5, align 8
  %26 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %25, i32 0, i32 1
  %27 = call i32 @clear_bit(i32 0, i32* %26)
  %28 = load %struct.mpcore_wdt*, %struct.mpcore_wdt** %5, align 8
  %29 = getelementptr inbounds %struct.mpcore_wdt, %struct.mpcore_wdt* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  ret i32 0
}

declare dso_local i32 @mpcore_wdt_stop(%struct.mpcore_wdt*) #1

declare dso_local i32 @dev_printk(i32, i32, i8*) #1

declare dso_local i32 @mpcore_wdt_keepalive(%struct.mpcore_wdt*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
