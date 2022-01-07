; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_init_lockres.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_init_lockres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, i32, i32, i64, i32, i32, i32, %struct.dlm_ctxt*, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64 }

@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@DLM_LOCK_RES_IN_PROGRESS = common dso_local global i32 0, align 4
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i8*, i32)* @dlm_init_lockres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_init_lockres(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %11 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %10, i32 0, i32 19
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @memcpy(i8* %15, i8* %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %21 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %20, i32 0, i32 19
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @dlm_lockid_hash(i8* %23, i32 %24)
  %26 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %27 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %26, i32 0, i32 19
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %30 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %29, i32 0, i32 18
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %33 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %32, i32 0, i32 5
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %36 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %35, i32 0, i32 17
  %37 = call i32 @INIT_HLIST_NODE(i32* %36)
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %39 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %38, i32 0, i32 16
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %42 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %41, i32 0, i32 15
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %45 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %44, i32 0, i32 14
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %48 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %47, i32 0, i32 13
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %51 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %50, i32 0, i32 12
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %54 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %53, i32 0, i32 11
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %57 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %56, i32 0, i32 2
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %60 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %59, i32 0, i32 10
  %61 = call i32 @atomic_set(i32* %60, i32 0)
  %62 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %63 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %62, i32 0, i32 9
  store i64 0, i64* %63, align 8
  %64 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %65 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %64, i32 0, i32 8
  store i64 0, i64* %65, align 8
  %66 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %67 = call i32 @dlm_grab(%struct.dlm_ctxt* %66)
  %68 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %69 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %70 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %69, i32 0, i32 7
  store %struct.dlm_ctxt* %68, %struct.dlm_ctxt** %70, align 8
  %71 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %72 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %71, i32 0, i32 6
  %73 = call i32 @kref_init(i32* %72)
  %74 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %75 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %74, i32 0, i32 3
  %76 = call i32 @atomic_inc(i32* %75)
  %77 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %78 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %77, i32 0, i32 2
  %79 = call i32 @atomic_inc(i32* %78)
  %80 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %81 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %80, i32 0, i32 5
  %82 = call i32 @spin_lock(i32* %81)
  %83 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %84 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %85 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %86 = call i32 @dlm_set_lockres_owner(%struct.dlm_ctxt* %83, %struct.dlm_lock_resource* %84, i32 %85)
  %87 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %88 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %87, i32 0, i32 5
  %89 = call i32 @spin_unlock(i32* %88)
  %90 = load i32, i32* @DLM_LOCK_RES_IN_PROGRESS, align 4
  %91 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %92 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %94 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %93, i32 0, i32 3
  store i64 0, i64* %94, align 8
  %95 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %96 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %99 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %98, i32 0, i32 2
  %100 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %101 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %100, i32 0, i32 1
  %102 = call i32 @list_add_tail(i32* %99, i32* %101)
  %103 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %104 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %103, i32 0, i32 0
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %107 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DLM_LVB_LEN, align 4
  %110 = call i32 @memset(i32 %108, i32 0, i32 %109)
  %111 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %112 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @memset(i32 %113, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dlm_lockid_hash(i8*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_set_lockres_owner(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
