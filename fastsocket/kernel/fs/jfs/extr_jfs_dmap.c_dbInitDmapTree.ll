; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbInitDmapTree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbInitDmapTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmap = type { i32*, %struct.dmaptree }
%struct.dmaptree = type { i8*, i32*, i32, i8*, i8*, i8* }

@LPERDMAP = common dso_local global i32 0, align 4
@L2LPERDMAP = common dso_local global i32 0, align 4
@LEAFIND = common dso_local global i32 0, align 4
@BUDMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmap*)* @dbInitDmapTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbInitDmapTree(%struct.dmap* %0) #0 {
  %2 = alloca %struct.dmap*, align 8
  %3 = alloca %struct.dmaptree*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.dmap* %0, %struct.dmap** %2, align 8
  %6 = load %struct.dmap*, %struct.dmap** %2, align 8
  %7 = getelementptr inbounds %struct.dmap, %struct.dmap* %6, i32 0, i32 1
  store %struct.dmaptree* %7, %struct.dmaptree** %3, align 8
  %8 = load i32, i32* @LPERDMAP, align 4
  %9 = call i8* @cpu_to_le32(i32 %8)
  %10 = load %struct.dmaptree*, %struct.dmaptree** %3, align 8
  %11 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %10, i32 0, i32 5
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @L2LPERDMAP, align 4
  %13 = call i8* @cpu_to_le32(i32 %12)
  %14 = load %struct.dmaptree*, %struct.dmaptree** %3, align 8
  %15 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @LEAFIND, align 4
  %17 = call i8* @cpu_to_le32(i32 %16)
  %18 = load %struct.dmaptree*, %struct.dmaptree** %3, align 8
  %19 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = call i8* @cpu_to_le32(i32 4)
  %21 = load %struct.dmaptree*, %struct.dmaptree** %3, align 8
  %22 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @BUDMIN, align 4
  %24 = load %struct.dmaptree*, %struct.dmaptree** %3, align 8
  %25 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dmaptree*, %struct.dmaptree** %3, align 8
  %27 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.dmaptree*, %struct.dmaptree** %3, align 8
  %30 = getelementptr inbounds %struct.dmaptree, %struct.dmaptree* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @le32_to_cpu(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  store i32* %34, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %49, %1
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @LPERDMAP, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.dmap*, %struct.dmap** %2, align 8
  %41 = getelementptr inbounds %struct.dmap, %struct.dmap* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @dbMaxBud(i32* %45)
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %4, align 8
  store i32 %46, i32* %47, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %35

52:                                               ; preds = %35
  %53 = load %struct.dmaptree*, %struct.dmaptree** %3, align 8
  %54 = call i32 @dbInitTree(%struct.dmaptree* %53)
  ret i32 %54
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @dbMaxBud(i32*) #1

declare dso_local i32 @dbInitTree(%struct.dmaptree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
