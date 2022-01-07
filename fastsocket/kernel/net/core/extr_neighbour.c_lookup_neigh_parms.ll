; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_lookup_neigh_parms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_lookup_neigh_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_parms = type { %struct.TYPE_2__*, %struct.neigh_parms* }
%struct.TYPE_2__ = type { i32 }
%struct.neigh_table = type { %struct.neigh_parms }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.neigh_parms* (%struct.neigh_table*, %struct.net*, i32)* @lookup_neigh_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.neigh_parms* @lookup_neigh_parms(%struct.neigh_table* %0, %struct.net* %1, i32 %2) #0 {
  %4 = alloca %struct.neigh_parms*, align 8
  %5 = alloca %struct.neigh_table*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.neigh_parms*, align 8
  store %struct.neigh_table* %0, %struct.neigh_table** %5, align 8
  store %struct.net* %1, %struct.net** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.neigh_table*, %struct.neigh_table** %5, align 8
  %10 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %9, i32 0, i32 0
  store %struct.neigh_parms* %10, %struct.neigh_parms** %8, align 8
  br label %11

11:                                               ; preds = %44, %3
  %12 = load %struct.neigh_parms*, %struct.neigh_parms** %8, align 8
  %13 = icmp ne %struct.neigh_parms* %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  %15 = load %struct.neigh_parms*, %struct.neigh_parms** %8, align 8
  %16 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.neigh_parms*, %struct.neigh_parms** %8, align 8
  %21 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load %struct.neigh_parms*, %struct.neigh_parms** %8, align 8
  %29 = call i32 @neigh_parms_net(%struct.neigh_parms* %28)
  %30 = load %struct.net*, %struct.net** %6, align 8
  %31 = call i64 @net_eq(i32 %29, %struct.net* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %27, %19, %14
  %34 = load %struct.neigh_parms*, %struct.neigh_parms** %8, align 8
  %35 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = icmp ne %struct.TYPE_2__* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38, %27
  %42 = load %struct.neigh_parms*, %struct.neigh_parms** %8, align 8
  store %struct.neigh_parms* %42, %struct.neigh_parms** %4, align 8
  br label %49

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.neigh_parms*, %struct.neigh_parms** %8, align 8
  %46 = getelementptr inbounds %struct.neigh_parms, %struct.neigh_parms* %45, i32 0, i32 1
  %47 = load %struct.neigh_parms*, %struct.neigh_parms** %46, align 8
  store %struct.neigh_parms* %47, %struct.neigh_parms** %8, align 8
  br label %11

48:                                               ; preds = %11
  store %struct.neigh_parms* null, %struct.neigh_parms** %4, align 8
  br label %49

49:                                               ; preds = %48, %41
  %50 = load %struct.neigh_parms*, %struct.neigh_parms** %4, align 8
  ret %struct.neigh_parms* %50
}

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @neigh_parms_net(%struct.neigh_parms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
