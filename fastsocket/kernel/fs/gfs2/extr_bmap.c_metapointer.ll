; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_metapointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_bmap.c_metapointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metapath = type { i32*, %struct.buffer_head** }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.metapath*)* @metapointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @metapointer(i32 %0, %struct.metapath* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.metapath*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.metapath* %1, %struct.metapath** %4, align 8
  %7 = load %struct.metapath*, %struct.metapath** %4, align 8
  %8 = getelementptr inbounds %struct.metapath, %struct.metapath* %7, i32 0, i32 1
  %9 = load %struct.buffer_head**, %struct.buffer_head*** %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %9, i64 %11
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  store %struct.buffer_head* %13, %struct.buffer_head** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = icmp ugt i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i64 4, i64 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.metapath*, %struct.metapath** %4, align 8
  %27 = getelementptr inbounds %struct.metapath, %struct.metapath* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %25, i64 %33
  ret i32* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
