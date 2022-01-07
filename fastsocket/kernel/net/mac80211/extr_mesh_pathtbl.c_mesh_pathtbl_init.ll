; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c_mesh_pathtbl_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_mesh_pathtbl.c_mesh_pathtbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_table = type { i8*, i8*, i32*, i32* }

@INIT_PATHS_SIZE_ORDER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mesh_path_node_free = common dso_local global i32 0, align 4
@mesh_path_node_copy = common dso_local global i32 0, align 4
@MEAN_CHAIN_LEN = common dso_local global i8* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@mesh_paths = common dso_local global i32 0, align 4
@mpp_paths = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_pathtbl_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mesh_table*, align 8
  %3 = alloca %struct.mesh_table*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @INIT_PATHS_SIZE_ORDER, align 4
  %6 = call %struct.mesh_table* @mesh_table_alloc(i32 %5)
  store %struct.mesh_table* %6, %struct.mesh_table** %2, align 8
  %7 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %8 = icmp ne %struct.mesh_table* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %80

12:                                               ; preds = %0
  %13 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %14 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %13, i32 0, i32 3
  store i32* @mesh_path_node_free, i32** %14, align 8
  %15 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %16 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %15, i32 0, i32 2
  store i32* @mesh_path_node_copy, i32** %16, align 8
  %17 = load i8*, i8** @MEAN_CHAIN_LEN, align 8
  %18 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %19 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call i8* @kzalloc(i32 4, i32 %20)
  %22 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %23 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %25 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %12
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %76

31:                                               ; preds = %12
  %32 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %33 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @INIT_HLIST_HEAD(i8* %34)
  %36 = load i32, i32* @INIT_PATHS_SIZE_ORDER, align 4
  %37 = call %struct.mesh_table* @mesh_table_alloc(i32 %36)
  store %struct.mesh_table* %37, %struct.mesh_table** %3, align 8
  %38 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %39 = icmp ne %struct.mesh_table* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %76

43:                                               ; preds = %31
  %44 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %45 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %44, i32 0, i32 3
  store i32* @mesh_path_node_free, i32** %45, align 8
  %46 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %47 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %46, i32 0, i32 2
  store i32* @mesh_path_node_copy, i32** %47, align 8
  %48 = load i8*, i8** @MEAN_CHAIN_LEN, align 8
  %49 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %50 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i8* @kzalloc(i32 4, i32 %51)
  %53 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %54 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %56 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %43
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %73

62:                                               ; preds = %43
  %63 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %64 = getelementptr inbounds %struct.mesh_table, %struct.mesh_table* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @INIT_HLIST_HEAD(i8* %65)
  %67 = load i32, i32* @mesh_paths, align 4
  %68 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %69 = call i32 @RCU_INIT_POINTER(i32 %67, %struct.mesh_table* %68)
  %70 = load i32, i32* @mpp_paths, align 4
  %71 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %72 = call i32 @RCU_INIT_POINTER(i32 %70, %struct.mesh_table* %71)
  store i32 0, i32* %1, align 4
  br label %80

73:                                               ; preds = %59
  %74 = load %struct.mesh_table*, %struct.mesh_table** %3, align 8
  %75 = call i32 @mesh_table_free(%struct.mesh_table* %74, i32 1)
  br label %76

76:                                               ; preds = %73, %40, %28
  %77 = load %struct.mesh_table*, %struct.mesh_table** %2, align 8
  %78 = call i32 @mesh_table_free(%struct.mesh_table* %77, i32 1)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %76, %62, %9
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local %struct.mesh_table* @mesh_table_alloc(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i8*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.mesh_table*) #1

declare dso_local i32 @mesh_table_free(%struct.mesh_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
