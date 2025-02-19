; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_update_balloon_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/virtio/extr_virtio_balloon.c_update_balloon_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i32 }
%struct.sysinfo = type { i64, i64 }

@NR_VM_EVENT_ITEMS = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_SWAP_IN = common dso_local global i32 0, align 4
@PSWPIN = common dso_local global i64 0, align 8
@VIRTIO_BALLOON_S_SWAP_OUT = common dso_local global i32 0, align 4
@PSWPOUT = common dso_local global i64 0, align 8
@VIRTIO_BALLOON_S_MAJFLT = common dso_local global i32 0, align 4
@PGMAJFAULT = common dso_local global i64 0, align 8
@VIRTIO_BALLOON_S_MINFLT = common dso_local global i32 0, align 4
@PGFAULT = common dso_local global i64 0, align 8
@VIRTIO_BALLOON_S_MEMFREE = common dso_local global i32 0, align 4
@VIRTIO_BALLOON_S_MEMTOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_balloon*)* @update_balloon_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_balloon_stats(%struct.virtio_balloon* %0) #0 {
  %2 = alloca %struct.virtio_balloon*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sysinfo, align 8
  %6 = alloca i32, align 4
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %2, align 8
  %7 = load i32, i32* @NR_VM_EVENT_ITEMS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i64, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %11 = call i32 @all_vm_events(i64* %10)
  %12 = call i32 @si_meminfo(%struct.sysinfo* %5)
  %13 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @VIRTIO_BALLOON_S_SWAP_IN, align 4
  %17 = load i64, i64* @PSWPIN, align 8
  %18 = getelementptr inbounds i64, i64* %10, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @pages_to_bytes(i64 %19)
  %21 = call i32 @update_stat(%struct.virtio_balloon* %13, i32 %14, i32 %16, i64 %20)
  %22 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @VIRTIO_BALLOON_S_SWAP_OUT, align 4
  %26 = load i64, i64* @PSWPOUT, align 8
  %27 = getelementptr inbounds i64, i64* %10, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @pages_to_bytes(i64 %28)
  %30 = call i32 @update_stat(%struct.virtio_balloon* %22, i32 %23, i32 %25, i64 %29)
  %31 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @VIRTIO_BALLOON_S_MAJFLT, align 4
  %35 = load i64, i64* @PGMAJFAULT, align 8
  %36 = getelementptr inbounds i64, i64* %10, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @update_stat(%struct.virtio_balloon* %31, i32 %32, i32 %34, i64 %37)
  %39 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @VIRTIO_BALLOON_S_MINFLT, align 4
  %43 = load i64, i64* @PGFAULT, align 8
  %44 = getelementptr inbounds i64, i64* %10, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @update_stat(%struct.virtio_balloon* %39, i32 %40, i32 %42, i64 %45)
  %47 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @VIRTIO_BALLOON_S_MEMFREE, align 4
  %51 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @pages_to_bytes(i64 %52)
  %54 = call i32 @update_stat(%struct.virtio_balloon* %47, i32 %48, i32 %50, i64 %53)
  %55 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @VIRTIO_BALLOON_S_MEMTOT, align 4
  %59 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %5, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @pages_to_bytes(i64 %60)
  %62 = call i32 @update_stat(%struct.virtio_balloon* %55, i32 %56, i32 %58, i64 %61)
  %63 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %63)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @all_vm_events(i64*) #2

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #2

declare dso_local i32 @update_stat(%struct.virtio_balloon*, i32, i32, i64) #2

declare dso_local i64 @pages_to_bytes(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
