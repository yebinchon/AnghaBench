; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_idmap_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_nfs_idmap_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap = type { i32, i32, i32, %struct.TYPE_2__*, %struct.rpc_pipe_msg }
%struct.TYPE_2__ = type { i32 }
%struct.rpc_pipe_msg = type { i32, i32, i32, %struct.rpc_pipe_msg*, i32, i32, i32 }
%struct.idmap_hashtable = type { i32 }
%struct.idmap_msg = type { i32, i32, i32, %struct.idmap_msg*, i32, i32, i32 }
%struct.idmap_hashent = type { i32 }

@wq = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IDMAP_NAMESZ = common dso_local global i64 0, align 8
@IDMAP_CONV_NAMETOID = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@IDMAP_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idmap*, %struct.idmap_hashtable*, i8*, i64, i32*)* @nfs_idmap_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_idmap_id(%struct.idmap* %0, %struct.idmap_hashtable* %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.idmap*, align 8
  %8 = alloca %struct.idmap_hashtable*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rpc_pipe_msg, align 8
  %13 = alloca %struct.idmap_msg*, align 8
  %14 = alloca %struct.idmap_hashent*, align 8
  %15 = alloca i32, align 4
  store %struct.idmap* %0, %struct.idmap** %7, align 8
  store %struct.idmap_hashtable* %1, %struct.idmap_hashtable** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @wq, align 4
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @DECLARE_WAITQUEUE(i32 %16, i32 %17)
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %15, align 4
  %21 = load %struct.idmap*, %struct.idmap** %7, align 8
  %22 = getelementptr inbounds %struct.idmap, %struct.idmap* %21, i32 0, i32 4
  %23 = bitcast %struct.rpc_pipe_msg* %22 to %struct.idmap_msg*
  store %struct.idmap_msg* %23, %struct.idmap_msg** %13, align 8
  br label %24

24:                                               ; preds = %39, %5
  %25 = load i64, i64* %10, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %142

30:                                               ; preds = %24
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %42

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %10, align 8
  br label %24

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @IDMAP_NAMESZ, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %142

49:                                               ; preds = %42
  %50 = load %struct.idmap*, %struct.idmap** %7, align 8
  %51 = getelementptr inbounds %struct.idmap, %struct.idmap* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.idmap*, %struct.idmap** %7, align 8
  %54 = getelementptr inbounds %struct.idmap, %struct.idmap* %53, i32 0, i32 1
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %8, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call %struct.idmap_hashent* @idmap_lookup_name(%struct.idmap_hashtable* %56, i8* %57, i64 %58)
  store %struct.idmap_hashent* %59, %struct.idmap_hashent** %14, align 8
  %60 = load %struct.idmap_hashent*, %struct.idmap_hashent** %14, align 8
  %61 = icmp ne %struct.idmap_hashent* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load %struct.idmap_hashent*, %struct.idmap_hashent** %14, align 8
  %64 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %15, align 4
  br label %131

67:                                               ; preds = %49
  %68 = load %struct.idmap_msg*, %struct.idmap_msg** %13, align 8
  %69 = bitcast %struct.idmap_msg* %68 to %struct.rpc_pipe_msg*
  %70 = call i32 @memset(%struct.rpc_pipe_msg* %69, i32 0, i32 40)
  %71 = load %struct.idmap_msg*, %struct.idmap_msg** %13, align 8
  %72 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @memcpy(i32 %73, i8* %74, i64 %75)
  %77 = load %struct.idmap_hashtable*, %struct.idmap_hashtable** %8, align 8
  %78 = getelementptr inbounds %struct.idmap_hashtable, %struct.idmap_hashtable* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.idmap_msg*, %struct.idmap_msg** %13, align 8
  %81 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @IDMAP_CONV_NAMETOID, align 4
  %83 = load %struct.idmap_msg*, %struct.idmap_msg** %13, align 8
  %84 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = call i32 @memset(%struct.rpc_pipe_msg* %12, i32 0, i32 40)
  %86 = load %struct.idmap_msg*, %struct.idmap_msg** %13, align 8
  %87 = bitcast %struct.idmap_msg* %86 to %struct.rpc_pipe_msg*
  %88 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %12, i32 0, i32 3
  store %struct.rpc_pipe_msg* %87, %struct.rpc_pipe_msg** %88, align 8
  %89 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %12, i32 0, i32 0
  store i32 40, i32* %89, align 8
  %90 = load %struct.idmap*, %struct.idmap** %7, align 8
  %91 = getelementptr inbounds %struct.idmap, %struct.idmap* %90, i32 0, i32 2
  %92 = call i32 @add_wait_queue(i32* %91, i32* @wq)
  %93 = load %struct.idmap*, %struct.idmap** %7, align 8
  %94 = getelementptr inbounds %struct.idmap, %struct.idmap* %93, i32 0, i32 3
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @rpc_queue_upcall(i32 %97, %struct.rpc_pipe_msg* %12)
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %67
  %101 = load %struct.idmap*, %struct.idmap** %7, align 8
  %102 = getelementptr inbounds %struct.idmap, %struct.idmap* %101, i32 0, i32 2
  %103 = call i32 @remove_wait_queue(i32* %102, i32* @wq)
  br label %131

104:                                              ; preds = %67
  %105 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %106 = call i32 @set_current_state(i32 %105)
  %107 = load %struct.idmap*, %struct.idmap** %7, align 8
  %108 = getelementptr inbounds %struct.idmap, %struct.idmap* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = call i32 (...) @schedule()
  %111 = load i32, i32* @TASK_RUNNING, align 4
  %112 = call i32 @__set_current_state(i32 %111)
  %113 = load %struct.idmap*, %struct.idmap** %7, align 8
  %114 = getelementptr inbounds %struct.idmap, %struct.idmap* %113, i32 0, i32 2
  %115 = call i32 @remove_wait_queue(i32* %114, i32* @wq)
  %116 = load %struct.idmap*, %struct.idmap** %7, align 8
  %117 = getelementptr inbounds %struct.idmap, %struct.idmap* %116, i32 0, i32 1
  %118 = call i32 @mutex_lock(i32* %117)
  %119 = load %struct.idmap_msg*, %struct.idmap_msg** %13, align 8
  %120 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IDMAP_STATUS_SUCCESS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %104
  %126 = load %struct.idmap_msg*, %struct.idmap_msg** %13, align 8
  %127 = getelementptr inbounds %struct.idmap_msg, %struct.idmap_msg* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %11, align 8
  store i32 %128, i32* %129, align 4
  store i32 0, i32* %15, align 4
  br label %130

130:                                              ; preds = %125, %104
  br label %131

131:                                              ; preds = %130, %100, %62
  %132 = load %struct.idmap_msg*, %struct.idmap_msg** %13, align 8
  %133 = bitcast %struct.idmap_msg* %132 to %struct.rpc_pipe_msg*
  %134 = call i32 @memset(%struct.rpc_pipe_msg* %133, i32 0, i32 40)
  %135 = load %struct.idmap*, %struct.idmap** %7, align 8
  %136 = getelementptr inbounds %struct.idmap, %struct.idmap* %135, i32 0, i32 1
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load %struct.idmap*, %struct.idmap** %7, align 8
  %139 = getelementptr inbounds %struct.idmap, %struct.idmap* %138, i32 0, i32 0
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %131, %46, %27
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.idmap_hashent* @idmap_lookup_name(%struct.idmap_hashtable*, i8*, i64) #1

declare dso_local i32 @memset(%struct.rpc_pipe_msg*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @rpc_queue_upcall(i32, %struct.rpc_pipe_msg*) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
