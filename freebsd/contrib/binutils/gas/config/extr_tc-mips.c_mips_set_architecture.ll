; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_set_architecture.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_mips_set_architecture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.mips_cpu_info = type { i32, i32 }

@file_mips_arch = common dso_local global i32 0, align 4
@mips_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_cpu_info*)* @mips_set_architecture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_set_architecture(%struct.mips_cpu_info* %0) #0 {
  %2 = alloca %struct.mips_cpu_info*, align 8
  store %struct.mips_cpu_info* %0, %struct.mips_cpu_info** %2, align 8
  %3 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %2, align 8
  %4 = icmp ne %struct.mips_cpu_info* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %2, align 8
  %7 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* @file_mips_arch, align 4
  %9 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %2, align 8
  %10 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 1), align 4
  %12 = load %struct.mips_cpu_info*, %struct.mips_cpu_info** %2, align 8
  %13 = getelementptr inbounds %struct.mips_cpu_info, %struct.mips_cpu_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mips_opts, i32 0, i32 0), align 4
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
