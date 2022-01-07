; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioctl.c_fiemap_check_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioctl.c_fiemap_check_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiemap_extent_info = type { i32 }

@FIEMAP_FLAGS_COMPAT = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiemap_check_flags(%struct.fiemap_extent_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fiemap_extent_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fiemap_extent_info* %0, %struct.fiemap_extent_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %4, align 8
  %8 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FIEMAP_FLAGS_COMPAT, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %9, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %4, align 8
  %20 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @EBADR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
