; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_node.c_tipc_node_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_node = type { i64, i32, %struct.tipc_node*, %struct.cluster*, i32, i32 }
%struct.cluster = type { i32 }

@node_create_lock = common dso_local global i32 0, align 4
@tipc_nodes = common dso_local global %struct.tipc_node* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Node creation failed, no memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tipc_node* @tipc_node_create(i64 %0) #0 {
  %2 = alloca %struct.tipc_node*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cluster*, align 8
  %5 = alloca %struct.tipc_node*, align 8
  %6 = alloca %struct.tipc_node**, align 8
  store i64 %0, i64* %3, align 8
  %7 = call i32 @spin_lock_bh(i32* @node_create_lock)
  %8 = load %struct.tipc_node*, %struct.tipc_node** @tipc_nodes, align 8
  store %struct.tipc_node* %8, %struct.tipc_node** %5, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %11 = icmp ne %struct.tipc_node* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %15 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %33

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %22 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call i32 @spin_unlock_bh(i32* @node_create_lock)
  %27 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  store %struct.tipc_node* %27, %struct.tipc_node** %2, align 8
  br label %100

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %31 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %30, i32 0, i32 2
  %32 = load %struct.tipc_node*, %struct.tipc_node** %31, align 8
  store %struct.tipc_node* %32, %struct.tipc_node** %5, align 8
  br label %9

33:                                               ; preds = %18, %9
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.tipc_node* @kzalloc(i32 40, i32 %34)
  store %struct.tipc_node* %35, %struct.tipc_node** %5, align 8
  %36 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %37 = icmp ne %struct.tipc_node* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = call i32 @spin_unlock_bh(i32* @node_create_lock)
  %40 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.tipc_node* null, %struct.tipc_node** %2, align 8
  br label %100

41:                                               ; preds = %33
  %42 = load i64, i64* %3, align 8
  %43 = call %struct.cluster* @tipc_cltr_find(i64 %42)
  store %struct.cluster* %43, %struct.cluster** %4, align 8
  %44 = load %struct.cluster*, %struct.cluster** %4, align 8
  %45 = icmp ne %struct.cluster* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %3, align 8
  %48 = call %struct.cluster* @tipc_cltr_create(i64 %47)
  store %struct.cluster* %48, %struct.cluster** %4, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load %struct.cluster*, %struct.cluster** %4, align 8
  %51 = icmp ne %struct.cluster* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = call i32 @spin_unlock_bh(i32* @node_create_lock)
  %54 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %55 = call i32 @kfree(%struct.tipc_node* %54)
  store %struct.tipc_node* null, %struct.tipc_node** %2, align 8
  br label %100

56:                                               ; preds = %49
  %57 = load i64, i64* %3, align 8
  %58 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %59 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %61 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %60, i32 0, i32 5
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %64 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %63, i32 0, i32 4
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.cluster*, %struct.cluster** %4, align 8
  %67 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %68 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %67, i32 0, i32 3
  store %struct.cluster* %66, %struct.cluster** %68, align 8
  %69 = load %struct.cluster*, %struct.cluster** %4, align 8
  %70 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %71 = call i32 @tipc_cltr_attach_node(%struct.cluster* %69, %struct.tipc_node* %70)
  %72 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %73 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %72, i32 0, i32 1
  store i32 -1, i32* %73, align 8
  store %struct.tipc_node** @tipc_nodes, %struct.tipc_node*** %6, align 8
  br label %74

74:                                               ; preds = %91, %56
  %75 = load %struct.tipc_node**, %struct.tipc_node*** %6, align 8
  %76 = load %struct.tipc_node*, %struct.tipc_node** %75, align 8
  %77 = icmp ne %struct.tipc_node* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load i64, i64* %3, align 8
  %80 = load %struct.tipc_node**, %struct.tipc_node*** %6, align 8
  %81 = load %struct.tipc_node*, %struct.tipc_node** %80, align 8
  %82 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %79, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load %struct.tipc_node**, %struct.tipc_node*** %6, align 8
  %87 = load %struct.tipc_node*, %struct.tipc_node** %86, align 8
  %88 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %89 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %88, i32 0, i32 2
  store %struct.tipc_node* %87, %struct.tipc_node** %89, align 8
  br label %95

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.tipc_node**, %struct.tipc_node*** %6, align 8
  %93 = load %struct.tipc_node*, %struct.tipc_node** %92, align 8
  %94 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %93, i32 0, i32 2
  store %struct.tipc_node** %94, %struct.tipc_node*** %6, align 8
  br label %74

95:                                               ; preds = %85, %74
  %96 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  %97 = load %struct.tipc_node**, %struct.tipc_node*** %6, align 8
  store %struct.tipc_node* %96, %struct.tipc_node** %97, align 8
  %98 = call i32 @spin_unlock_bh(i32* @node_create_lock)
  %99 = load %struct.tipc_node*, %struct.tipc_node** %5, align 8
  store %struct.tipc_node* %99, %struct.tipc_node** %2, align 8
  br label %100

100:                                              ; preds = %95, %52, %38, %25
  %101 = load %struct.tipc_node*, %struct.tipc_node** %2, align 8
  ret %struct.tipc_node* %101
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.tipc_node* @kzalloc(i32, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.cluster* @tipc_cltr_find(i64) #1

declare dso_local %struct.cluster* @tipc_cltr_create(i64) #1

declare dso_local i32 @kfree(%struct.tipc_node*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tipc_cltr_attach_node(%struct.cluster*, %struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
