; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_sysv.h_fs16_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_sysv.h_fs16_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i64 }

@BYTESEX_BE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysv_sb_info*, i32*, i32)* @fs16_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs16_add(%struct.sysv_sb_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %8 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BYTESEX_BE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @le16_add_cpu(i32* %13, i32 %14)
  br label %20

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @be16_add_cpu(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  ret i32 %22
}

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
