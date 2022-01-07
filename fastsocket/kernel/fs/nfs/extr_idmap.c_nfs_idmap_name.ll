; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_idmap_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_idmap_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap = type { i32, i32, i32, %struct.TYPE_2__*, %struct.rpc_pipe_msg }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_pipe_msg = type { i32, i32, i32, %struct.rpc_pipe_msg*, i32, i32, i32 }
%struct.idmap_hashtable = type { i32 }
%struct.idmap_msg = type { i32, i32, i32, %struct.idmap_msg*, i32, i32, i32 }
%struct.idmap_hashent = type { i32, i32 }

@wq = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IDMAP_CONV_IDTONAME = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@IDMAP_STATUS_SUCCESS = common dso_local global i32 0, align 4
@IDMAP_NAMESZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap*, %struct.idmap_hashtable*, i32, i8*)* @nfs_idmap_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_idmap_name(%struct.idmap* %0, %struct.idmap_hashtable* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.idmap*, align 8
  %6 = alloca %struct.idmap_hashtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.rpc_pipe_msg, align 8
  %10 = alloca %struct.idmap_msg*, align 8
  %11 = alloca %struct.idmap_hashent*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.idmap* %0, %struct.idmap** %5, align 8
  store %struct.idmap_hashtable* %1, %struct.idmap_hashtable** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @wq, align 4
  %15 = load i32, i32* @current, align 4
  %16 = call i32 @DECLARE_WAITQUEUE(i32 %14, i32 %15)
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %12, align 4
  %19 = load %struct.idmap*, %struct.idmap** %5, align 8
  %20 = getelementptr inbounds %struct.idmap, %struct.idmap* %19, i32 0, i32 4
  %21 = bitcast %struct.rpc_pipe_msg* %20 to %struct.idmap_msg*
  store %struct.idmap_msg* %21, %struct.idmap_msg** %10, align 8
  %22 = load %struct.idmap*, %struct.idmap** %5, align 8
  %23 = getelementptr inbounds %struct.idmap, %struct.idmap* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.idmap*, %struct.idmap** %5, align 8
  %26 = getelementptr inbounds %struct.idmap, %struct.idmap* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.idmap_hashent* @idmap_lookup_id(%struct.idmap_hashtable* %28, i32 %29)
  store %struct.idmap_hashent* %30, %struct.idmap_hashent** %11, align 8
  %31 = load %struct.idmap_hashent*, %struct.idmap_hashent** %11, align 8
  %32 = icmp ne %struct.idmap_hashent* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.idmap_hashent*, %struct.idmap_hashent** %11, align 8
  %36 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.idmap_hashent*, %struct.idmap_hashent** %11, align 8
  %39 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i8* %34, i32 %37, i32 %40)
  %42 = load %struct.idmap_hashent*, %struct.idmap_hashent** %11, align 8
  %43 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %12, align 4
  br label %117

45:                                               ; preds = %4
  %46 = load %struct.idmap_msg*, %struct.idmap_msg** %10, align 8
  %47 = bitcast %struct.idmap_msg* %46 to %struct.rpc_pipe_msg*
  %48 = call i32 @memset(%struct.rpc_pipe_msg* %47, i32 0, i32 40)
  %49 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %6, align 8
  %50 = getelementptr inbounds %struct.idmap_hashtable, %struct.idmap_hashtable* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.idmap_msg*, %struct.idmap_msg** %10, align 8
  %53 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @IDMAP_CONV_IDTONAME, align 4
  %55 = load %struct.idmap_msg*, %struct.idmap_msg** %10, align 8
  %56 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.idmap_msg*, %struct.idmap_msg** %10, align 8
  %59 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = call i32 @memset(%struct.rpc_pipe_msg* %9, i32 0, i32 40)
  %61 = load %struct.idmap_msg*, %struct.idmap_msg** %10, align 8
  %62 = bitcast %struct.idmap_msg* %61 to %struct.rpc_pipe_msg*
  %63 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %9, i32 0, i32 3
  store %struct.rpc_pipe_msg* %62, %struct.rpc_pipe_msg** %63, align 8
  %64 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %9, i32 0, i32 0
  store i32 40, i32* %64, align 8
  %65 = load %struct.idmap*, %struct.idmap** %5, align 8
  %66 = getelementptr inbounds %struct.idmap, %struct.idmap* %65, i32 0, i32 2
  %67 = call i32 @add_wait_queue(i32* %66, i32* @wq)
  %68 = load %struct.idmap*, %struct.idmap** %5, align 8
  %69 = getelementptr inbounds %struct.idmap, %struct.idmap* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @rpc_queue_upcall(i32 %72, %struct.rpc_pipe_msg* %9)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %45
  %76 = load %struct.idmap*, %struct.idmap** %5, align 8
  %77 = getelementptr inbounds %struct.idmap, %struct.idmap* %76, i32 0, i32 2
  %78 = call i32 @remove_wait_queue(i32* %77, i32* @wq)
  br label %117

79:                                               ; preds = %45
  %80 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %81 = call i32 @set_current_state(i32 %80)
  %82 = load %struct.idmap*, %struct.idmap** %5, align 8
  %83 = getelementptr inbounds %struct.idmap, %struct.idmap* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  %85 = call i32 (...) @schedule()
  %86 = load i32, i32* @TASK_RUNNING, align 4
  %87 = call i32 @__set_current_state(i32 %86)
  %88 = load %struct.idmap*, %struct.idmap** %5, align 8
  %89 = getelementptr inbounds %struct.idmap, %struct.idmap* %88, i32 0, i32 2
  %90 = call i32 @remove_wait_queue(i32* %89, i32* @wq)
  %91 = load %struct.idmap*, %struct.idmap** %5, align 8
  %92 = getelementptr inbounds %struct.idmap, %struct.idmap* %91, i32 0, i32 1
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.idmap_msg*, %struct.idmap_msg** %10, align 8
  %95 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IDMAP_STATUS_SUCCESS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %79
  %101 = load %struct.idmap_msg*, %struct.idmap_msg** %10, align 8
  %102 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @IDMAP_NAMESZ, align 4
  %105 = call i32 @strnlen(i32 %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %117

108:                                              ; preds = %100
  %109 = load i8*, i8** %8, align 8
  %110 = load %struct.idmap_msg*, %struct.idmap_msg** %10, align 8
  %111 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @memcpy(i8* %109, i32 %112, i32 %113)
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %108, %79
  br label %117

117:                                              ; preds = %116, %107, %75, %33
  %118 = load %struct.idmap_msg*, %struct.idmap_msg** %10, align 8
  %119 = bitcast %struct.idmap_msg* %118 to %struct.rpc_pipe_msg*
  %120 = call i32 @memset(%struct.rpc_pipe_msg* %119, i32 0, i32 40)
  %121 = load %struct.idmap*, %struct.idmap** %5, align 8
  %122 = getelementptr inbounds %struct.idmap, %struct.idmap* %121, i32 0, i32 1
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load %struct.idmap*, %struct.idmap** %5, align 8
  %125 = getelementptr inbounds %struct.idmap, %struct.idmap* %124, i32 0, i32 0
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %12, align 4
  ret i32 %127
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.idmap_hashent* @idmap_lookup_id(%struct.idmap_hashtable*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.rpc_pipe_msg*, i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @rpc_queue_upcall(i32, %struct.rpc_pipe_msg*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @strnlen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
