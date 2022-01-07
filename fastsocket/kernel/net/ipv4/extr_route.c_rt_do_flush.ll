; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_do_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_do_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.rtable* }
%struct.rtable = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rtable* }

@rt_hash_mask = common dso_local global i32 0, align 4
@rt_hash_table = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rt_do_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_do_flush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtable*, align 8
  %5 = alloca %struct.rtable*, align 8
  %6 = alloca %struct.rtable*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %62, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @rt_hash_mask, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %65

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = call i64 (...) @need_resched()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @cond_resched()
  br label %19

19:                                               ; preds = %17, %14, %11
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt_hash_table, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.rtable*, %struct.rtable** %24, align 8
  store %struct.rtable* %25, %struct.rtable** %4, align 8
  %26 = load %struct.rtable*, %struct.rtable** %4, align 8
  %27 = icmp ne %struct.rtable* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %62

29:                                               ; preds = %19
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @rt_hash_lock_addr(i32 %30)
  %32 = call i32 @spin_lock_bh(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt_hash_table, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.rtable*, %struct.rtable** %37, align 8
  store %struct.rtable* %38, %struct.rtable** %4, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rt_hash_table, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store %struct.rtable* null, %struct.rtable** %43, align 8
  store %struct.rtable* null, %struct.rtable** %6, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @rt_hash_lock_addr(i32 %44)
  %46 = call i32 @spin_unlock_bh(i32 %45)
  br label %47

47:                                               ; preds = %59, %29
  %48 = load %struct.rtable*, %struct.rtable** %4, align 8
  %49 = load %struct.rtable*, %struct.rtable** %6, align 8
  %50 = icmp ne %struct.rtable* %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load %struct.rtable*, %struct.rtable** %4, align 8
  %53 = getelementptr inbounds %struct.rtable, %struct.rtable* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.rtable*, %struct.rtable** %55, align 8
  store %struct.rtable* %56, %struct.rtable** %5, align 8
  %57 = load %struct.rtable*, %struct.rtable** %4, align 8
  %58 = call i32 @rt_free(%struct.rtable* %57)
  br label %59

59:                                               ; preds = %51
  %60 = load %struct.rtable*, %struct.rtable** %5, align 8
  store %struct.rtable* %60, %struct.rtable** %4, align 8
  br label %47

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %28
  %63 = load i32, i32* %3, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %7

65:                                               ; preds = %7
  ret void
}

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @spin_lock_bh(i32) #1

declare dso_local i32 @rt_hash_lock_addr(i32) #1

declare dso_local i32 @spin_unlock_bh(i32) #1

declare dso_local i32 @rt_free(%struct.rtable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
