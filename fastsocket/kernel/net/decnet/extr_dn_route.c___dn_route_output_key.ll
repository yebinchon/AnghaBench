; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c___dn_route_output_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c___dn_route_output_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dst_entry = type { i32 }
%struct.flowi = type { i64, i64, i64, i64 }
%struct.dn_route = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.dst_entry }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64 }

@MSG_TRYHARD = common dso_local global i32 0, align 4
@dn_rt_hash_table = common dso_local global %struct.TYPE_6__* null, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_entry**, %struct.flowi*, i32)* @__dn_route_output_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dn_route_output_key(%struct.dst_entry** %0, %struct.flowi* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dst_entry**, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dn_route*, align 8
  store %struct.dst_entry** %0, %struct.dst_entry*** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.flowi*, %struct.flowi** %6, align 8
  %11 = getelementptr inbounds %struct.flowi, %struct.flowi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.flowi*, %struct.flowi** %6, align 8
  %14 = getelementptr inbounds %struct.flowi, %struct.flowi* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dn_hash(i64 %12, i64 %15)
  store i32 %16, i32* %8, align 4
  store %struct.dn_route* null, %struct.dn_route** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MSG_TRYHARD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %96, label %21

21:                                               ; preds = %3
  %22 = call i32 (...) @rcu_read_lock_bh()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.dn_route* @rcu_dereference(i32 %28)
  store %struct.dn_route* %29, %struct.dn_route** %9, align 8
  br label %30

30:                                               ; preds = %87, %21
  %31 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %32 = icmp ne %struct.dn_route* %31, null
  br i1 %32, label %33, label %94

33:                                               ; preds = %30
  %34 = load %struct.flowi*, %struct.flowi** %6, align 8
  %35 = getelementptr inbounds %struct.flowi, %struct.flowi* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %38 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %33
  %43 = load %struct.flowi*, %struct.flowi** %6, align 8
  %44 = getelementptr inbounds %struct.flowi, %struct.flowi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %47 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %45, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %42
  %52 = load %struct.flowi*, %struct.flowi** %6, align 8
  %53 = getelementptr inbounds %struct.flowi, %struct.flowi* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %56 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %51
  %61 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %62 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %68 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.flowi*, %struct.flowi** %6, align 8
  %72 = getelementptr inbounds %struct.flowi, %struct.flowi* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %66
  %76 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %77 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* @jiffies, align 4
  %80 = call i32 @dst_use(%struct.dst_entry* %78, i32 %79)
  %81 = call i32 (...) @rcu_read_unlock_bh()
  %82 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %83 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load %struct.dst_entry**, %struct.dst_entry*** %5, align 8
  store %struct.dst_entry* %84, %struct.dst_entry** %85, align 8
  store i32 0, i32* %4, align 4
  br label %101

86:                                               ; preds = %66, %60, %51, %42, %33
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.dn_route*, %struct.dn_route** %9, align 8
  %89 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.dn_route* @rcu_dereference(i32 %92)
  store %struct.dn_route* %93, %struct.dn_route** %9, align 8
  br label %30

94:                                               ; preds = %30
  %95 = call i32 (...) @rcu_read_unlock_bh()
  br label %96

96:                                               ; preds = %94, %3
  %97 = load %struct.dst_entry**, %struct.dst_entry*** %5, align 8
  %98 = load %struct.flowi*, %struct.flowi** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @dn_route_output_slow(%struct.dst_entry** %97, %struct.flowi* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %96, %75
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @dn_hash(i64, i64) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.dn_route* @rcu_dereference(i32) #1

declare dso_local i32 @dst_use(%struct.dst_entry*, i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @dn_route_output_slow(%struct.dst_entry**, %struct.flowi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
