; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_dev-ioctl.c_autofs_dev_ioctl_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.autofs_sb_info = type { i64 }
%struct.autofs_dev_ioctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.autofs_sb_info*, %struct.autofs_dev_ioctl*)* @autofs_dev_ioctl_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dev_ioctl_timeout(%struct.file* %0, %struct.autofs_sb_info* %1, %struct.autofs_dev_ioctl* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.autofs_sb_info*, align 8
  %6 = alloca %struct.autofs_dev_ioctl*, align 8
  %7 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.autofs_sb_info* %1, %struct.autofs_sb_info** %5, align 8
  store %struct.autofs_dev_ioctl* %2, %struct.autofs_dev_ioctl** %6, align 8
  %8 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %9 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HZ, align 8
  %16 = udiv i64 %14, %15
  %17 = load %struct.autofs_dev_ioctl*, %struct.autofs_dev_ioctl** %6, align 8
  %18 = getelementptr inbounds %struct.autofs_dev_ioctl, %struct.autofs_dev_ioctl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @HZ, align 8
  %22 = mul i64 %20, %21
  %23 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %5, align 8
  %24 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
