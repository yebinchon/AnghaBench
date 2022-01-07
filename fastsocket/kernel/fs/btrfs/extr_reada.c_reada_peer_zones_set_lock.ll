; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_peer_zones_set_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_reada.c_reada_peer_zones_set_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reada_zone = type { i64, i32, i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reada_zone*, i32)* @reada_peer_zones_set_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reada_peer_zones_set_lock(%struct.reada_zone* %0, i32 %1) #0 {
  %3 = alloca %struct.reada_zone*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.reada_zone*, align 8
  store %struct.reada_zone* %0, %struct.reada_zone** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.reada_zone*, %struct.reada_zone** %3, align 8
  %9 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %45, %2
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.reada_zone*, %struct.reada_zone** %3, align 8
  %16 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %13
  %20 = load %struct.reada_zone*, %struct.reada_zone** %3, align 8
  %21 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call %struct.reada_zone* @radix_tree_lookup(i32* %27, i64 %28)
  store %struct.reada_zone* %29, %struct.reada_zone** %7, align 8
  %30 = load %struct.reada_zone*, %struct.reada_zone** %7, align 8
  %31 = icmp ne %struct.reada_zone* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %19
  %33 = load %struct.reada_zone*, %struct.reada_zone** %7, align 8
  %34 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.reada_zone*, %struct.reada_zone** %3, align 8
  %37 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.reada_zone*, %struct.reada_zone** %7, align 8
  %43 = getelementptr inbounds %struct.reada_zone, %struct.reada_zone* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %40, %32, %19
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %13

48:                                               ; preds = %13
  ret void
}

declare dso_local %struct.reada_zone* @radix_tree_lookup(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
