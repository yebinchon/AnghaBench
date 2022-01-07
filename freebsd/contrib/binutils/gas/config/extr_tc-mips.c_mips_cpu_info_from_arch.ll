; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_cpu_info_from_arch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_cpu_info_from_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_cpu_info = type { i32, i32* }

@mips_cpu_info_table = common dso_local global %struct.mips_cpu_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mips_cpu_info* (i32)* @mips_cpu_info_from_arch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mips_cpu_info* @mips_cpu_info_from_arch(i32 %0) #0 {
  %2 = alloca %struct.mips_cpu_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** @mips_cpu_info_table, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %6, i64 %8
  %10 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %5
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** @mips_cpu_info_table, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %15, i64 %17
  %19 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %14, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** @mips_cpu_info_table, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %23, i64 %25
  store %struct.mips_cpu_info* %26, %struct.mips_cpu_info** %2, align 8
  br label %32

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %5
  store %struct.mips_cpu_info* null, %struct.mips_cpu_info** %2, align 8
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %2, align 8
  ret %struct.mips_cpu_info* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
