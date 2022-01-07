; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_iostat.h_nfs_inc_server_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_iostat.h_nfs_inc_server_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_iostats = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*, i32)* @nfs_inc_server_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_inc_server_stats(%struct.nfs_server* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_iostats*, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @get_cpu()
  store i32 %7, i32* %6, align 4
  %8 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %9 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.nfs_iostats* @per_cpu_ptr(i32 %10, i32 %11)
  store %struct.nfs_iostats* %12, %struct.nfs_iostats** %5, align 8
  %13 = load %struct.nfs_iostats*, %struct.nfs_iostats** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_iostats, %struct.nfs_iostats* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = call i32 (...) @put_cpu()
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
