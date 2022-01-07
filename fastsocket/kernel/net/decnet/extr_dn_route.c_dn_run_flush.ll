; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_run_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_run_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.dn_route = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dn_route* }
%struct.dst_entry = type { i32 }

@dn_rt_hash_mask = common dso_local global i32 0, align 4
@dn_rt_hash_table = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dn_run_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_run_flush(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dn_route*, align 8
  %5 = alloca %struct.dn_route*, align 8
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %52, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @dn_rt_hash_mask, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = call %struct.dn_route* @xchg(i32* %21, i32* null)
  store %struct.dn_route* %22, %struct.dn_route** %4, align 8
  %23 = icmp eq %struct.dn_route* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %10
  br label %45

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %42, %25
  %27 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %28 = icmp ne %struct.dn_route* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %31 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.dn_route*, %struct.dn_route** %33, align 8
  store %struct.dn_route* %34, %struct.dn_route** %5, align 8
  %35 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %36 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.dn_route* null, %struct.dn_route** %38, align 8
  %39 = load %struct.dn_route*, %struct.dn_route** %4, align 8
  %40 = bitcast %struct.dn_route* %39 to %struct.dst_entry*
  %41 = call i32 @dst_free(%struct.dst_entry* %40)
  br label %42

42:                                               ; preds = %29
  %43 = load %struct.dn_route*, %struct.dn_route** %5, align 8
  store %struct.dn_route* %43, %struct.dn_route** %4, align 8
  br label %26

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %6

55:                                               ; preds = %6
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.dn_route* @xchg(i32*, i32*) #1

declare dso_local i32 @dst_free(%struct.dst_entry*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
