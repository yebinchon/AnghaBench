; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_iostat.h_nfs_add_server_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_iostat.h_nfs_add_server_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_iostats = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*, i32, i64)* @nfs_add_server_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_add_server_stats(%struct.nfs_server* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfs_iostats*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @get_cpu()
  store i32 %9, i32* %8, align 4
  %10 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %11 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.nfs_iostats* @per_cpu_ptr(i32 %12, i32 %13)
  store %struct.nfs_iostats* %14, %struct.nfs_iostats** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.nfs_iostats*, %struct.nfs_iostats** %7, align 8
  %17 = getelementptr inbounds %struct.nfs_iostats, %struct.nfs_iostats* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %15
  store i64 %23, i64* %21, align 8
  %24 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local %struct.nfs_iostats* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
