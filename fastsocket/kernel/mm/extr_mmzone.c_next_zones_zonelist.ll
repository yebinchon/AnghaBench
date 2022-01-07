; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmzone.c_next_zones_zonelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mmzone.c_next_zones_zonelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoneref = type { i64 }
%struct.zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zoneref* @next_zones_zonelist(%struct.zoneref* %0, i32 %1, i32* %2, %struct.zone** %3) #0 {
  %5 = alloca %struct.zoneref*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.zone**, align 8
  store %struct.zoneref* %0, %struct.zoneref** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.zone** %3, %struct.zone*** %8, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %20, %14
  %16 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %17 = call i32 @zonelist_zone_idx(%struct.zoneref* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %22 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %21, i32 1
  store %struct.zoneref* %22, %struct.zoneref** %5, align 8
  br label %15

23:                                               ; preds = %15
  br label %49

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %27 = call i32 @zonelist_zone_idx(%struct.zoneref* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %32 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @zref_in_nodemask(%struct.zoneref* %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  br label %43

43:                                               ; preds = %41, %25
  %44 = phi i1 [ true, %25 ], [ %42, %41 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %47 = getelementptr inbounds %struct.zoneref, %struct.zoneref* %46, i32 1
  store %struct.zoneref* %47, %struct.zoneref** %5, align 8
  br label %25

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %23
  %50 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  %51 = call %struct.zone* @zonelist_zone(%struct.zoneref* %50)
  %52 = load %struct.zone**, %struct.zone*** %8, align 8
  store %struct.zone* %51, %struct.zone** %52, align 8
  %53 = load %struct.zoneref*, %struct.zoneref** %5, align 8
  ret %struct.zoneref* %53
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @zonelist_zone_idx(%struct.zoneref*) #1

declare dso_local i32 @zref_in_nodemask(%struct.zoneref*, i32*) #1

declare dso_local %struct.zone* @zonelist_zone(%struct.zoneref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
