; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_blank_wstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_blank_wstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_wstat = type { i32*, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p9_wstat*)* @v9fs_blank_wstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v9fs_blank_wstat(%struct.p9_wstat* %0) #0 {
  %2 = alloca %struct.p9_wstat*, align 8
  store %struct.p9_wstat* %0, %struct.p9_wstat** %2, align 8
  %3 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %4 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %3, i32 0, i32 14
  store i32 -1, i32* %4, align 8
  %5 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %6 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %5, i32 0, i32 13
  store i32 -1, i32* %6, align 4
  %7 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %8 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %7, i32 0, i32 12
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store i32 -1, i32* %9, align 8
  %10 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %11 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %10, i32 0, i32 12
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 -1, i32* %12, align 4
  %13 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %14 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %13, i32 0, i32 12
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to i64*
  store i64 -1, i64* %16, align 8
  %17 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %18 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %17, i32 0, i32 11
  store i32 -1, i32* %18, align 4
  %19 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %20 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %19, i32 0, i32 10
  store i32 -1, i32* %20, align 8
  %21 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %22 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %21, i32 0, i32 9
  store i32 -1, i32* %22, align 4
  %23 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %24 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %23, i32 0, i32 8
  store i32 -1, i32* %24, align 8
  %25 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %26 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %25, i32 0, i32 7
  store i32* null, i32** %26, align 8
  %27 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %28 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %27, i32 0, i32 6
  store i32* null, i32** %28, align 8
  %29 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %30 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %29, i32 0, i32 5
  store i32* null, i32** %30, align 8
  %31 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %32 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %34 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %33, i32 0, i32 3
  store i32 -1, i32* %34, align 8
  %35 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %36 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %35, i32 0, i32 2
  store i32 -1, i32* %36, align 4
  %37 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %38 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %37, i32 0, i32 1
  store i32 -1, i32* %38, align 8
  %39 = load %struct.p9_wstat*, %struct.p9_wstat** %2, align 8
  %40 = getelementptr inbounds %struct.p9_wstat, %struct.p9_wstat* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
