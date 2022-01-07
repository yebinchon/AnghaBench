; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_netfs.h_netfs_convert_root_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_netfs.h_netfs_convert_root_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfs_root_capabilities = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfs_root_capabilities*)* @netfs_convert_root_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netfs_convert_root_capabilities(%struct.netfs_root_capabilities* %0) #0 {
  %2 = alloca %struct.netfs_root_capabilities*, align 8
  store %struct.netfs_root_capabilities* %0, %struct.netfs_root_capabilities** %2, align 8
  %3 = load %struct.netfs_root_capabilities*, %struct.netfs_root_capabilities** %2, align 8
  %4 = getelementptr inbounds %struct.netfs_root_capabilities, %struct.netfs_root_capabilities* %3, i32 0, i32 3
  %5 = load i8*, i8** %4, align 8
  %6 = call i8* @__cpu_to_be64(i8* %5)
  %7 = load %struct.netfs_root_capabilities*, %struct.netfs_root_capabilities** %2, align 8
  %8 = getelementptr inbounds %struct.netfs_root_capabilities, %struct.netfs_root_capabilities* %7, i32 0, i32 3
  store i8* %6, i8** %8, align 8
  %9 = load %struct.netfs_root_capabilities*, %struct.netfs_root_capabilities** %2, align 8
  %10 = getelementptr inbounds %struct.netfs_root_capabilities, %struct.netfs_root_capabilities* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @__cpu_to_be64(i8* %11)
  %13 = load %struct.netfs_root_capabilities*, %struct.netfs_root_capabilities** %2, align 8
  %14 = getelementptr inbounds %struct.netfs_root_capabilities, %struct.netfs_root_capabilities* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.netfs_root_capabilities*, %struct.netfs_root_capabilities** %2, align 8
  %16 = getelementptr inbounds %struct.netfs_root_capabilities, %struct.netfs_root_capabilities* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @__cpu_to_be64(i8* %17)
  %19 = load %struct.netfs_root_capabilities*, %struct.netfs_root_capabilities** %2, align 8
  %20 = getelementptr inbounds %struct.netfs_root_capabilities, %struct.netfs_root_capabilities* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.netfs_root_capabilities*, %struct.netfs_root_capabilities** %2, align 8
  %22 = getelementptr inbounds %struct.netfs_root_capabilities, %struct.netfs_root_capabilities* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @__cpu_to_be64(i8* %23)
  %25 = load %struct.netfs_root_capabilities*, %struct.netfs_root_capabilities** %2, align 8
  %26 = getelementptr inbounds %struct.netfs_root_capabilities, %struct.netfs_root_capabilities* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  ret void
}

declare dso_local i8* @__cpu_to_be64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
