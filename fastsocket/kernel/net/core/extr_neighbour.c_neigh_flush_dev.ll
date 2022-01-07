; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_flush_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_flush_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32, %struct.neighbour** }
%struct.neighbour = type { i32, i32, i32, i32, i32, i32, %struct.neighbour*, %struct.net_device* }
%struct.net_device = type { i32 }

@neigh_blackhole = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@NUD_NOARP = common dso_local global i32 0, align 4
@NUD_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"neigh %p is stray.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neigh_table*, %struct.net_device*)* @neigh_flush_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_flush_dev(%struct.neigh_table* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.neigh_table*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.neighbour*, align 8
  %7 = alloca %struct.neighbour**, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %84, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %11 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %8
  %15 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %16 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %15, i32 0, i32 1
  %17 = load %struct.neighbour**, %struct.neighbour*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.neighbour*, %struct.neighbour** %17, i64 %19
  store %struct.neighbour** %20, %struct.neighbour*** %7, align 8
  br label %21

21:                                               ; preds = %77, %34, %14
  %22 = load %struct.neighbour**, %struct.neighbour*** %7, align 8
  %23 = load %struct.neighbour*, %struct.neighbour** %22, align 8
  store %struct.neighbour* %23, %struct.neighbour** %6, align 8
  %24 = icmp ne %struct.neighbour* %23, null
  br i1 %24, label %25, label %83

25:                                               ; preds = %21
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %30 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %29, i32 0, i32 7
  %31 = load %struct.net_device*, %struct.net_device** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = icmp ne %struct.net_device* %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %36 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %35, i32 0, i32 6
  store %struct.neighbour** %36, %struct.neighbour*** %7, align 8
  br label %21

37:                                               ; preds = %28, %25
  %38 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %39 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %38, i32 0, i32 6
  %40 = load %struct.neighbour*, %struct.neighbour** %39, align 8
  %41 = load %struct.neighbour**, %struct.neighbour*** %7, align 8
  store %struct.neighbour* %40, %struct.neighbour** %41, align 8
  %42 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %43 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %42, i32 0, i32 2
  %44 = call i32 @write_lock(i32* %43)
  %45 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %46 = call i32 @neigh_del_timer(%struct.neighbour* %45)
  %47 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %48 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %50 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %49, i32 0, i32 5
  %51 = call i32 @atomic_read(i32* %50)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %77

53:                                               ; preds = %37
  %54 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %55 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %54, i32 0, i32 4
  %56 = call i32 @skb_queue_purge(i32* %55)
  %57 = load i32, i32* @neigh_blackhole, align 4
  %58 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %59 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %61 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NUD_VALID, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %53
  %67 = load i32, i32* @NUD_NOARP, align 4
  %68 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %69 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %74

70:                                               ; preds = %53
  %71 = load i32, i32* @NUD_NONE, align 4
  %72 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %73 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %76 = call i32 @NEIGH_PRINTK2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.neighbour* %75)
  br label %77

77:                                               ; preds = %74, %37
  %78 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %79 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %78, i32 0, i32 2
  %80 = call i32 @write_unlock(i32* %79)
  %81 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %82 = call i32 @neigh_cleanup_and_release(%struct.neighbour* %81)
  br label %21

83:                                               ; preds = %21
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %8

87:                                               ; preds = %8
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @neigh_del_timer(%struct.neighbour*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @NEIGH_PRINTK2(i8*, %struct.neighbour*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @neigh_cleanup_and_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
