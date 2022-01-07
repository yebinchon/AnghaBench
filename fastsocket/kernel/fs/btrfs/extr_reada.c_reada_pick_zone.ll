; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_pick_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_pick_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { %struct.reada_zone*, i32, i32 }
%struct.reada_zone = type { i32, i64, i32, i32, i64 }

@reada_zone_release = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_device*)* @reada_pick_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reada_pick_zone(%struct.btrfs_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_device*, align 8
  %4 = alloca %struct.reada_zone*, align 8
  %5 = alloca %struct.reada_zone*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.reada_zone*, align 8
  store %struct.btrfs_device* %0, %struct.btrfs_device** %3, align 8
  store %struct.reada_zone* null, %struct.reada_zone** %4, align 8
  store %struct.reada_zone* null, %struct.reada_zone** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %11, i32 0, i32 0
  %13 = load %struct.reada_zone*, %struct.reada_zone** %12, align 8
  %14 = icmp ne %struct.reada_zone* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %16, i32 0, i32 0
  %18 = load %struct.reada_zone*, %struct.reada_zone** %17, align 8
  %19 = call i32 @reada_peer_zones_set_lock(%struct.reada_zone* %18, i32 0)
  %20 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %20, i32 0, i32 0
  %22 = load %struct.reada_zone*, %struct.reada_zone** %21, align 8
  %23 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %22, i32 0, i32 2
  %24 = load i32, i32* @reada_zone_release, align 4
  %25 = call i32 @kref_put(i32* %23, i32 %24)
  %26 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %26, i32 0, i32 0
  store %struct.reada_zone* null, %struct.reada_zone** %27, align 8
  br label %28

28:                                               ; preds = %15, %1
  br label %29

29:                                               ; preds = %28, %74
  %30 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %31 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %30, i32 0, i32 2
  %32 = bitcast %struct.reada_zone** %10 to i8**
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @radix_tree_gang_lookup(i32* %31, i8** %32, i64 %33, i32 1)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %75

38:                                               ; preds = %29
  %39 = load %struct.reada_zone*, %struct.reada_zone** %10, align 8
  %40 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %8, align 8
  %46 = load %struct.reada_zone*, %struct.reada_zone** %10, align 8
  %47 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %38
  %51 = load %struct.reada_zone*, %struct.reada_zone** %10, align 8
  %52 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.reada_zone*, %struct.reada_zone** %10, align 8
  %58 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  %60 = load %struct.reada_zone*, %struct.reada_zone** %10, align 8
  store %struct.reada_zone* %60, %struct.reada_zone** %5, align 8
  br label %61

61:                                               ; preds = %56, %50
  br label %74

62:                                               ; preds = %38
  %63 = load %struct.reada_zone*, %struct.reada_zone** %10, align 8
  %64 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.reada_zone*, %struct.reada_zone** %10, align 8
  %70 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %6, align 8
  %72 = load %struct.reada_zone*, %struct.reada_zone** %10, align 8
  store %struct.reada_zone* %72, %struct.reada_zone** %4, align 8
  br label %73

73:                                               ; preds = %68, %62
  br label %74

74:                                               ; preds = %73, %61
  br label %29

75:                                               ; preds = %37
  %76 = load %struct.reada_zone*, %struct.reada_zone** %4, align 8
  %77 = icmp ne %struct.reada_zone* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.reada_zone*, %struct.reada_zone** %4, align 8
  %80 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %81 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %80, i32 0, i32 0
  store %struct.reada_zone* %79, %struct.reada_zone** %81, align 8
  br label %91

82:                                               ; preds = %75
  %83 = load %struct.reada_zone*, %struct.reada_zone** %5, align 8
  %84 = icmp ne %struct.reada_zone* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.reada_zone*, %struct.reada_zone** %5, align 8
  %87 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %88 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %87, i32 0, i32 0
  store %struct.reada_zone* %86, %struct.reada_zone** %88, align 8
  br label %90

89:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %108

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %78
  %92 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %93 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %92, i32 0, i32 0
  %94 = load %struct.reada_zone*, %struct.reada_zone** %93, align 8
  %95 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %98 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %100 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %99, i32 0, i32 0
  %101 = load %struct.reada_zone*, %struct.reada_zone** %100, align 8
  %102 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %101, i32 0, i32 2
  %103 = call i32 @kref_get(i32* %102)
  %104 = load %struct.btrfs_device*, %struct.btrfs_device** %3, align 8
  %105 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %104, i32 0, i32 0
  %106 = load %struct.reada_zone*, %struct.reada_zone** %105, align 8
  %107 = call i32 @reada_peer_zones_set_lock(%struct.reada_zone* %106, i32 1)
  store i32 1, i32* %2, align 4
  br label %108

108:                                              ; preds = %91, %89
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @reada_peer_zones_set_lock(%struct.reada_zone*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @radix_tree_gang_lookup(i32*, i8**, i64, i32) #1

declare dso_local i32 @kref_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
