; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_map.c_scan_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_map.c_scan_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adfs_sb_info = type { i32, i32, %struct.adfs_discmap* }
%struct.adfs_discmap = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adfs_sb_info*, i32, i32, i32)* @scan_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_map(%struct.adfs_sb_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adfs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.adfs_discmap*, align 8
  %12 = alloca %struct.adfs_discmap*, align 8
  %13 = alloca i32, align 4
  store %struct.adfs_sb_info* %0, %struct.adfs_sb_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %15 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %18 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %17, i32 0, i32 2
  %19 = load %struct.adfs_discmap*, %struct.adfs_discmap** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %19, i64 %21
  store %struct.adfs_discmap* %22, %struct.adfs_discmap** %11, align 8
  %23 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %24 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %27 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %26, i32 0, i32 2
  %28 = load %struct.adfs_discmap*, %struct.adfs_discmap** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %28, i64 %30
  store %struct.adfs_discmap* %31, %struct.adfs_discmap** %12, align 8
  br label %32

32:                                               ; preds = %51, %4
  %33 = load %struct.adfs_discmap*, %struct.adfs_discmap** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @lookup_zone(%struct.adfs_discmap* %33, i32 %34, i32 %35, i32* %9)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %56

40:                                               ; preds = %32
  %41 = load %struct.adfs_discmap*, %struct.adfs_discmap** %11, align 8
  %42 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %41, i32 1
  store %struct.adfs_discmap* %42, %struct.adfs_discmap** %11, align 8
  %43 = load %struct.adfs_discmap*, %struct.adfs_discmap** %11, align 8
  %44 = load %struct.adfs_discmap*, %struct.adfs_discmap** %12, align 8
  %45 = icmp eq %struct.adfs_discmap* %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %6, align 8
  %48 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %47, i32 0, i32 2
  %49 = load %struct.adfs_discmap*, %struct.adfs_discmap** %48, align 8
  store %struct.adfs_discmap* %49, %struct.adfs_discmap** %11, align 8
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, -1
  store i32 %53, i32* %7, align 4
  %54 = icmp ugt i32 %53, 0
  br i1 %54, label %32, label %55

55:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %72

56:                                               ; preds = %39
  %57 = load %struct.adfs_discmap*, %struct.adfs_discmap** %11, align 8
  %58 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  %64 = load %struct.adfs_discmap*, %struct.adfs_discmap** %11, align 8
  %65 = getelementptr inbounds %struct.adfs_discmap, %struct.adfs_discmap* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %56, %55
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @lookup_zone(%struct.adfs_discmap*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
