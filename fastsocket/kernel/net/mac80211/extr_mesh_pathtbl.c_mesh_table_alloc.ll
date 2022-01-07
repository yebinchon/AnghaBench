; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c_mesh_table_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c_mesh_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_table = type { i32, i32, i32, i32*, i32, i32, %struct.mesh_table* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mesh_table* (i32)* @mesh_table_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mesh_table* @mesh_table_alloc(i32 %0) #0 {
  %2 = alloca %struct.mesh_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mesh_table*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_ATOMIC, align 4
  %7 = call i8* @kmalloc(i32 40, i32 %6)
  %8 = bitcast i8* %7 to %struct.mesh_table*
  store %struct.mesh_table* %8, %struct.mesh_table** %5, align 8
  %9 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %10 = icmp ne %struct.mesh_table* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.mesh_table* null, %struct.mesh_table** %2, align 8
  br label %88

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.mesh_table* @kzalloc(i32 %17, i32 %18)
  %20 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %21 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %20, i32 0, i32 6
  store %struct.mesh_table* %19, %struct.mesh_table** %21, align 8
  %22 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %23 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %22, i32 0, i32 6
  %24 = load %struct.mesh_table*, %struct.mesh_table** %23, align 8
  %25 = icmp ne %struct.mesh_table* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %12
  %27 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %28 = call i32 @kfree(%struct.mesh_table* %27)
  store %struct.mesh_table* null, %struct.mesh_table** %2, align 8
  br label %88

29:                                               ; preds = %12
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i8* @kmalloc(i32 %34, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %39 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %38, i32 0, i32 3
  store i32* %37, i32** %39, align 8
  %40 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %41 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %29
  %45 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %46 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %45, i32 0, i32 6
  %47 = load %struct.mesh_table*, %struct.mesh_table** %46, align 8
  %48 = call i32 @kfree(%struct.mesh_table* %47)
  %49 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %50 = call i32 @kfree(%struct.mesh_table* %49)
  store %struct.mesh_table* null, %struct.mesh_table** %2, align 8
  br label %88

51:                                               ; preds = %29
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %54 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %3, align 4
  %56 = shl i32 1, %55
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %59 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %61 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %60, i32 0, i32 5
  %62 = call i32 @atomic_set(i32* %61, i32 0)
  %63 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %64 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %63, i32 0, i32 4
  %65 = call i32 @get_random_bytes(i32* %64, i32 4)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %80, %51
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %69 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sle i32 %67, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %74 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @spin_lock_init(i32* %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %66

83:                                               ; preds = %66
  %84 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  %85 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %84, i32 0, i32 2
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.mesh_table*, %struct.mesh_table** %5, align 8
  store %struct.mesh_table* %87, %struct.mesh_table** %2, align 8
  br label %88

88:                                               ; preds = %83, %44, %26, %11
  %89 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  ret %struct.mesh_table* %89
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.mesh_table* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mesh_table*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
