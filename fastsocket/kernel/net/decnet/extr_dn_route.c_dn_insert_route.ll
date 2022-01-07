; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_insert_route.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_route.c_dn_insert_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.dn_route* }
%struct.dn_route = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.dn_route* }

@jiffies = common dso_local global i64 0, align 8
@dn_rt_hash_table = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_route*, i32, %struct.dn_route**)* @dn_insert_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_insert_route(%struct.dn_route* %0, i32 %1, %struct.dn_route** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_route*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_route**, align 8
  %8 = alloca %struct.dn_route*, align 8
  %9 = alloca %struct.dn_route**, align 8
  %10 = alloca i64, align 8
  store %struct.dn_route* %0, %struct.dn_route** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dn_route** %2, %struct.dn_route*** %7, align 8
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store %struct.dn_route** %16, %struct.dn_route*** %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock_bh(i32* %21)
  br label %23

23:                                               ; preds = %76, %3
  %24 = load %struct.dn_route**, %struct.dn_route*** %9, align 8
  %25 = load %struct.dn_route*, %struct.dn_route** %24, align 8
  store %struct.dn_route* %25, %struct.dn_route** %8, align 8
  %26 = icmp ne %struct.dn_route* %25, null
  br i1 %26, label %27, label %81

27:                                               ; preds = %23
  %28 = load %struct.dn_route*, %struct.dn_route** %8, align 8
  %29 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %28, i32 0, i32 1
  %30 = load %struct.dn_route*, %struct.dn_route** %5, align 8
  %31 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %30, i32 0, i32 1
  %32 = call i64 @compare_keys(i32* %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %27
  %35 = load %struct.dn_route*, %struct.dn_route** %8, align 8
  %36 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.dn_route*, %struct.dn_route** %38, align 8
  %40 = load %struct.dn_route**, %struct.dn_route*** %9, align 8
  store %struct.dn_route* %39, %struct.dn_route** %40, align 8
  %41 = load %struct.dn_route*, %struct.dn_route** %8, align 8
  %42 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.dn_route*, %struct.dn_route** %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.dn_route*, %struct.dn_route** %50, align 8
  %52 = call i32 @rcu_assign_pointer(%struct.dn_route* %45, %struct.dn_route* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.dn_route*, %struct.dn_route** %57, align 8
  %59 = load %struct.dn_route*, %struct.dn_route** %8, align 8
  %60 = call i32 @rcu_assign_pointer(%struct.dn_route* %58, %struct.dn_route* %59)
  %61 = load %struct.dn_route*, %struct.dn_route** %8, align 8
  %62 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @dst_use(%struct.TYPE_5__* %63, i64 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %67 = load i32, i32* %6, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_bh(i32* %70)
  %72 = load %struct.dn_route*, %struct.dn_route** %5, align 8
  %73 = call i32 @dnrt_drop(%struct.dn_route* %72)
  %74 = load %struct.dn_route*, %struct.dn_route** %8, align 8
  %75 = load %struct.dn_route**, %struct.dn_route*** %7, align 8
  store %struct.dn_route* %74, %struct.dn_route** %75, align 8
  store i32 0, i32* %4, align 4
  br label %115

76:                                               ; preds = %27
  %77 = load %struct.dn_route*, %struct.dn_route** %8, align 8
  %78 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store %struct.dn_route** %80, %struct.dn_route*** %9, align 8
  br label %23

81:                                               ; preds = %23
  %82 = load %struct.dn_route*, %struct.dn_route** %5, align 8
  %83 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load %struct.dn_route*, %struct.dn_route** %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load %struct.dn_route*, %struct.dn_route** %91, align 8
  %93 = call i32 @rcu_assign_pointer(%struct.dn_route* %86, %struct.dn_route* %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %95 = load i32, i32* %6, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load %struct.dn_route*, %struct.dn_route** %98, align 8
  %100 = load %struct.dn_route*, %struct.dn_route** %5, align 8
  %101 = call i32 @rcu_assign_pointer(%struct.dn_route* %99, %struct.dn_route* %100)
  %102 = load %struct.dn_route*, %struct.dn_route** %5, align 8
  %103 = getelementptr inbounds %struct.dn_route, %struct.dn_route* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @dst_use(%struct.TYPE_5__* %104, i64 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dn_rt_hash_table, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock_bh(i32* %111)
  %113 = load %struct.dn_route*, %struct.dn_route** %5, align 8
  %114 = load %struct.dn_route**, %struct.dn_route*** %7, align 8
  store %struct.dn_route* %113, %struct.dn_route** %114, align 8
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %81, %34
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @compare_keys(i32*, i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.dn_route*, %struct.dn_route*) #1

declare dso_local i32 @dst_use(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dnrt_drop(%struct.dn_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
