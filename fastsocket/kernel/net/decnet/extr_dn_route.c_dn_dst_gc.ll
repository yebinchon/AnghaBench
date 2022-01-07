; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_dst_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_dst_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.dn_route* }
%struct.dn_route = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.dn_route*, i32 }
%struct.dst_ops = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@dn_rt_hash_mask = common dso_local global i32 0, align 4
@dn_rt_hash_table = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_ops*)* @dn_dst_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_dst_gc(%struct.dst_ops* %0) #0 {
  %2 = alloca %struct.dst_ops*, align 8
  %3 = alloca %struct.dn_route*, align 8
  %4 = alloca %struct.dn_route**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.dst_ops* %0, %struct.dst_ops** %2, align 8
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i32, i32* @HZ, align 4
  %10 = mul nsw i32 10, %9
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %74, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @dn_rt_hash_mask, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %77

16:                                               ; preds = %12
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store %struct.dn_route** %27, %struct.dn_route*** %4, align 8
  br label %28

28:                                               ; preds = %49, %16
  %29 = load %struct.dn_route**, %struct.dn_route*** %4, align 8
  %30 = load %struct.dn_route*, %struct.dn_route** %29, align 8
  store %struct.dn_route* %30, %struct.dn_route** %3, align 8
  %31 = icmp ne %struct.dn_route* %30, null
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %34 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %42 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %40, %45
  %47 = load i64, i64* %7, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %39, %32
  %50 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %51 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store %struct.dn_route** %53, %struct.dn_route*** %4, align 8
  br label %28

54:                                               ; preds = %39
  %55 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %56 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.dn_route*, %struct.dn_route** %58, align 8
  %60 = load %struct.dn_route**, %struct.dn_route*** %4, align 8
  store %struct.dn_route* %59, %struct.dn_route** %60, align 8
  %61 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %62 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store %struct.dn_route* null, %struct.dn_route** %64, align 8
  %65 = load %struct.dn_route*, %struct.dn_route** %3, align 8
  %66 = call i32 @dnrt_drop(%struct.dn_route* %65)
  br label %67

67:                                               ; preds = %54, %28
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_bh(i32* %72)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %12

77:                                               ; preds = %12
  ret i32 0
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @dnrt_drop(%struct.dn_route*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
