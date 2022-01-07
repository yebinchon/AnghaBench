; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.rtable* }
%struct.rtable = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rtable* }

@rt_hash_table = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rtable*)* @rt_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_del(i32 %0, %struct.rtable* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtable*, align 8
  %5 = alloca %struct.rtable**, align 8
  %6 = alloca %struct.rtable*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rtable* %1, %struct.rtable** %4, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt_hash_table, align 8
  %8 = load i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.rtable** %11, %struct.rtable*** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @rt_hash_lock_addr(i32 %12)
  %14 = call i32 @spin_lock_bh(i32 %13)
  %15 = load %struct.rtable*, %struct.rtable** %4, align 8
  %16 = call i32 @ip_rt_put(%struct.rtable* %15)
  br label %17

17:                                               ; preds = %38, %29, %2
  %18 = load %struct.rtable**, %struct.rtable*** %5, align 8
  %19 = load %struct.rtable*, %struct.rtable** %18, align 8
  store %struct.rtable* %19, %struct.rtable** %6, align 8
  %20 = icmp ne %struct.rtable* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %17
  %22 = load %struct.rtable*, %struct.rtable** %6, align 8
  %23 = load %struct.rtable*, %struct.rtable** %4, align 8
  %24 = icmp eq %struct.rtable* %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.rtable*, %struct.rtable** %6, align 8
  %27 = call i64 @rt_is_expired(%struct.rtable* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25, %21
  %30 = load %struct.rtable*, %struct.rtable** %6, align 8
  %31 = getelementptr inbounds %struct.rtable, %struct.rtable* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.rtable*, %struct.rtable** %33, align 8
  %35 = load %struct.rtable**, %struct.rtable*** %5, align 8
  store %struct.rtable* %34, %struct.rtable** %35, align 8
  %36 = load %struct.rtable*, %struct.rtable** %6, align 8
  %37 = call i32 @rt_free(%struct.rtable* %36)
  br label %17

38:                                               ; preds = %25
  %39 = load %struct.rtable*, %struct.rtable** %6, align 8
  %40 = getelementptr inbounds %struct.rtable, %struct.rtable* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store %struct.rtable** %42, %struct.rtable*** %5, align 8
  br label %17

43:                                               ; preds = %17
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @rt_hash_lock_addr(i32 %44)
  %46 = call i32 @spin_unlock_bh(i32 %45)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @rt_hash_lock_addr(i32) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i64 @rt_is_expired(%struct.rtable*) #1

declare dso_local i32 @rt_free(%struct.rtable*) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
