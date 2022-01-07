; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_create_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_kmemleak.c_create_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }
%struct.kmemleak_object = type { i32, i64, i64, i32, i32, i32, i32, %struct.prio_tree_node, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.prio_tree_node = type { i64, i64 }

@object_cache = common dso_local global i32 0, align 4
@GFP_KMEMLEAK_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Cannot allocate a kmemleak_object structure\0A\00", align 1
@OBJECT_ALLOCATED = common dso_local global i32 0, align 4
@OBJECT_NEW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"hardirq\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"softirq\00", align 1
@current = common dso_local global %struct.TYPE_2__* null, align 8
@kmemleak_lock = common dso_local global i32 0, align 4
@min_addr = common dso_local global i32 0, align 4
@max_addr = common dso_local global i32 0, align 4
@object_tree_root = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"Cannot insert 0x%lx into the object search tree (already existing)\0A\00", align 1
@object_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kmemleak_object* (i64, i64, i32, i32)* @create_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kmemleak_object* @create_object(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kmemleak_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.kmemleak_object*, align 8
  %12 = alloca %struct.prio_tree_node*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @object_cache, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @GFP_KMEMLEAK_MASK, align 4
  %16 = and i32 %14, %15
  %17 = call %struct.kmemleak_object* @kmem_cache_alloc(i32 %13, i32 %16)
  store %struct.kmemleak_object* %17, %struct.kmemleak_object** %11, align 8
  %18 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %19 = icmp ne %struct.kmemleak_object* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = call i32 (i8*, ...) @kmemleak_stop(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store %struct.kmemleak_object* null, %struct.kmemleak_object** %5, align 8
  br label %149

22:                                               ; preds = %4
  %23 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %24 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %23, i32 0, i32 5
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %27 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %26, i32 0, i32 15
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %30 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %29, i32 0, i32 14
  %31 = call i32 @INIT_HLIST_HEAD(i32* %30)
  %32 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %33 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %32, i32 0, i32 6
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %36 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %35, i32 0, i32 13
  %37 = call i32 @atomic_set(i32* %36, i32 1)
  %38 = load i32, i32* @OBJECT_ALLOCATED, align 4
  %39 = load i32, i32* @OBJECT_NEW, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %42 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %45 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %48 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %51 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %53 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %52, i32 0, i32 4
  store i32 -1, i32* %53, align 4
  %54 = load i32, i32* @jiffies, align 4
  %55 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %56 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = call i64 (...) @in_irq()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %22
  %60 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %61 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %60, i32 0, i32 11
  store i64 0, i64* %61, align 8
  %62 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %63 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @strncpy(i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %90

66:                                               ; preds = %22
  %67 = call i64 (...) @in_softirq()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %71 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %70, i32 0, i32 11
  store i64 0, i64* %71, align 8
  %72 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %73 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @strncpy(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %89

76:                                               ; preds = %66
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %81 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %80, i32 0, i32 11
  store i64 %79, i64* %81, align 8
  %82 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %83 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %82, i32 0, i32 10
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strncpy(i32 %84, i8* %87, i32 4)
  br label %89

89:                                               ; preds = %76, %69
  br label %90

90:                                               ; preds = %89, %59
  %91 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %92 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @__save_stack_trace(i32 %93)
  %95 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %96 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %98 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %97, i32 0, i32 7
  %99 = call i32 @INIT_PRIO_TREE_NODE(%struct.prio_tree_node* %98)
  %100 = load i64, i64* %6, align 8
  %101 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %102 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.prio_tree_node, %struct.prio_tree_node* %102, i32 0, i32 0
  store i64 %100, i64* %103, align 8
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = add i64 %104, %105
  %107 = sub i64 %106, 1
  %108 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %109 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.prio_tree_node, %struct.prio_tree_node* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @write_lock_irqsave(i32* @kmemleak_lock, i64 %111)
  %113 = load i32, i32* @min_addr, align 4
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @min(i32 %113, i64 %114)
  store i32 %115, i32* @min_addr, align 4
  %116 = load i32, i32* @max_addr, align 4
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %7, align 8
  %119 = add i64 %117, %118
  %120 = call i32 @max(i32 %116, i64 %119)
  store i32 %120, i32* @max_addr, align 4
  %121 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %122 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %121, i32 0, i32 7
  %123 = call %struct.prio_tree_node* @prio_tree_insert(i32* @object_tree_root, %struct.prio_tree_node* %122)
  store %struct.prio_tree_node* %123, %struct.prio_tree_node** %12, align 8
  %124 = load %struct.prio_tree_node*, %struct.prio_tree_node** %12, align 8
  %125 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %126 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %125, i32 0, i32 7
  %127 = icmp ne %struct.prio_tree_node* %124, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %90
  %129 = load i64, i64* %6, align 8
  %130 = call i32 (i8*, ...) @kmemleak_stop(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i64 %129)
  %131 = load i64, i64* %6, align 8
  %132 = call %struct.kmemleak_object* @lookup_object(i64 %131, i32 1)
  store %struct.kmemleak_object* %132, %struct.kmemleak_object** %11, align 8
  %133 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %134 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %133, i32 0, i32 6
  %135 = call i32 @spin_lock(i32* %134)
  %136 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %137 = call i32 @dump_object_info(%struct.kmemleak_object* %136)
  %138 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %139 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %138, i32 0, i32 6
  %140 = call i32 @spin_unlock(i32* %139)
  br label %145

141:                                              ; preds = %90
  %142 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  %143 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %142, i32 0, i32 5
  %144 = call i32 @list_add_tail_rcu(i32* %143, i32* @object_list)
  br label %145

145:                                              ; preds = %141, %128
  %146 = load i64, i64* %10, align 8
  %147 = call i32 @write_unlock_irqrestore(i32* @kmemleak_lock, i64 %146)
  %148 = load %struct.kmemleak_object*, %struct.kmemleak_object** %11, align 8
  store %struct.kmemleak_object* %148, %struct.kmemleak_object** %5, align 8
  br label %149

149:                                              ; preds = %145, %20
  %150 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  ret %struct.kmemleak_object* %150
}

declare dso_local %struct.kmemleak_object* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @kmemleak_stop(i8*, ...) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @in_irq(...) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i64 @in_softirq(...) #1

declare dso_local i32 @__save_stack_trace(i32) #1

declare dso_local i32 @INIT_PRIO_TREE_NODE(%struct.prio_tree_node*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local %struct.prio_tree_node* @prio_tree_insert(i32*, %struct.prio_tree_node*) #1

declare dso_local %struct.kmemleak_object* @lookup_object(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dump_object_info(%struct.kmemleak_object*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
