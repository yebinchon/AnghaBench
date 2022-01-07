; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_parms_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_parms_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, %struct.neigh_parms }
%struct.neigh_parms = type { i32, i32, i64, %struct.neigh_parms* }

@neigh_rcu_free_parms = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"neigh_parms_release: not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @neigh_parms_release(%struct.neigh_table* %0, %struct.neigh_parms* %1) #0 {
  %3 = alloca %struct.neigh_table*, align 8
  %4 = alloca %struct.neigh_parms*, align 8
  %5 = alloca %struct.neigh_parms**, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %3, align 8
  store %struct.neigh_parms* %1, %struct.neigh_parms** %4, align 8
  %6 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %7 = icmp ne %struct.neigh_parms* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %10 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %11 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %10, i32 0, i32 1
  %12 = icmp eq %struct.neigh_parms* %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  br label %64

14:                                               ; preds = %8
  %15 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %16 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %15, i32 0, i32 0
  %17 = call i32 @write_lock_bh(i32* %16)
  %18 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %19 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %19, i32 0, i32 3
  store %struct.neigh_parms** %20, %struct.neigh_parms*** %5, align 8
  br label %21

21:                                               ; preds = %55, %14
  %22 = load %struct.neigh_parms**, %struct.neigh_parms*** %5, align 8
  %23 = load %struct.neigh_parms*, %struct.neigh_parms** %22, align 8
  %24 = icmp ne %struct.neigh_parms* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load %struct.neigh_parms**, %struct.neigh_parms*** %5, align 8
  %27 = load %struct.neigh_parms*, %struct.neigh_parms** %26, align 8
  %28 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %29 = icmp eq %struct.neigh_parms* %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %25
  %31 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %32 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %31, i32 0, i32 3
  %33 = load %struct.neigh_parms*, %struct.neigh_parms** %32, align 8
  %34 = load %struct.neigh_parms**, %struct.neigh_parms*** %5, align 8
  store %struct.neigh_parms* %33, %struct.neigh_parms** %34, align 8
  %35 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %36 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %38 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %37, i32 0, i32 0
  %39 = call i32 @write_unlock_bh(i32* %38)
  %40 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %41 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %30
  %45 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %46 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dev_put(i64 %47)
  br label %49

49:                                               ; preds = %44, %30
  %50 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  %51 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %50, i32 0, i32 1
  %52 = load i32, i32* @neigh_rcu_free_parms, align 4
  %53 = call i32 @call_rcu(i32* %51, i32 %52)
  br label %64

54:                                               ; preds = %25
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.neigh_parms**, %struct.neigh_parms*** %5, align 8
  %57 = load %struct.neigh_parms*, %struct.neigh_parms** %56, align 8
  %58 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %57, i32 0, i32 3
  store %struct.neigh_parms** %58, %struct.neigh_parms*** %5, align 8
  br label %21

59:                                               ; preds = %21
  %60 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %61 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %60, i32 0, i32 0
  %62 = call i32 @write_unlock_bh(i32* %61)
  %63 = call i32 @NEIGH_PRINTK1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %59, %49, %13
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @NEIGH_PRINTK1(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
