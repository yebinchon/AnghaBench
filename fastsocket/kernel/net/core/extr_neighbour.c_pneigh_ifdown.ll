; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_pneigh_ifdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_pneigh_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i32 (%struct.pneigh_entry*)*, %struct.pneigh_entry** }
%struct.pneigh_entry = type { %struct.pneigh_entry*, %struct.net_device* }
%struct.net_device = type { i32 }

@PNEIGH_HASHMASK = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.neigh_table*, %struct.net_device*)* @pneigh_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pneigh_ifdown(%struct.neigh_table* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.neigh_table*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pneigh_entry*, align 8
  %6 = alloca %struct.pneigh_entry**, align 8
  %7 = alloca i64, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %66, %2
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @PNEIGH_HASHMASK, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %69

12:                                               ; preds = %8
  %13 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %14 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %13, i32 0, i32 1
  %15 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.pneigh_entry*, %struct.pneigh_entry** %15, i64 %16
  store %struct.pneigh_entry** %17, %struct.pneigh_entry*** %6, align 8
  br label %18

18:                                               ; preds = %62, %56, %12
  %19 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %6, align 8
  %20 = load %struct.pneigh_entry*, %struct.pneigh_entry** %19, align 8
  store %struct.pneigh_entry* %20, %struct.pneigh_entry** %5, align 8
  %21 = icmp ne %struct.pneigh_entry* %20, null
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = icmp ne %struct.net_device* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %27 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %26, i32 0, i32 1
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = icmp eq %struct.net_device* %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %25, %22
  %32 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %33 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %32, i32 0, i32 0
  %34 = load %struct.pneigh_entry*, %struct.pneigh_entry** %33, align 8
  %35 = load %struct.pneigh_entry**, %struct.pneigh_entry*** %6, align 8
  store %struct.pneigh_entry* %34, %struct.pneigh_entry** %35, align 8
  %36 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %37 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %36, i32 0, i32 0
  %38 = load i32 (%struct.pneigh_entry*)*, i32 (%struct.pneigh_entry*)** %37, align 8
  %39 = icmp ne i32 (%struct.pneigh_entry*)* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.neigh_table*, %struct.neigh_table** %3, align 8
  %42 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %41, i32 0, i32 0
  %43 = load i32 (%struct.pneigh_entry*)*, i32 (%struct.pneigh_entry*)** %42, align 8
  %44 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %45 = call i32 %43(%struct.pneigh_entry* %44)
  br label %46

46:                                               ; preds = %40, %31
  %47 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %48 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %47, i32 0, i32 1
  %49 = load %struct.net_device*, %struct.net_device** %48, align 8
  %50 = icmp ne %struct.net_device* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %53 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %52, i32 0, i32 1
  %54 = load %struct.net_device*, %struct.net_device** %53, align 8
  %55 = call i32 @dev_put(%struct.net_device* %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %58 = call i32 @pneigh_net(%struct.pneigh_entry* %57)
  %59 = call i32 @release_net(i32 %58)
  %60 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %61 = call i32 @kfree(%struct.pneigh_entry* %60)
  br label %18

62:                                               ; preds = %25
  %63 = load %struct.pneigh_entry*, %struct.pneigh_entry** %5, align 8
  %64 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %63, i32 0, i32 0
  store %struct.pneigh_entry** %64, %struct.pneigh_entry*** %6, align 8
  br label %18

65:                                               ; preds = %18
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %8

69:                                               ; preds = %8
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  ret i32 %71
}

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @release_net(i32) #1

declare dso_local i32 @pneigh_net(%struct.pneigh_entry*) #1

declare dso_local i32 @kfree(%struct.pneigh_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
