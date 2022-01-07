; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_node_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_dcore.c_dst_node_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_node = type { %struct.dst_state*, i64, %struct.TYPE_2__*, i64 }
%struct.dst_state = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@dst_hash_lock = common dso_local global i32 0, align 4
@dst_index_idr = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_node*)* @dst_node_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dst_node_cleanup(%struct.dst_node* %0) #0 {
  %2 = alloca %struct.dst_node*, align 8
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dst_node* %0, %struct.dst_node** %2, align 8
  %4 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %5 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %4, i32 0, i32 0
  %6 = load %struct.dst_state*, %struct.dst_state** %5, align 8
  store %struct.dst_state* %6, %struct.dst_state** %3, align 8
  %7 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %8 = icmp ne %struct.dst_state* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %12 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %17 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @blk_cleanup_queue(i64 %18)
  %20 = call i32 @mutex_lock(i32* @dst_hash_lock)
  %21 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %22 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @idr_remove(i32* @dst_index_idr, i32 %25)
  %27 = call i32 @mutex_unlock(i32* @dst_hash_lock)
  %28 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %29 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @put_disk(%struct.TYPE_2__* %30)
  br label %32

32:                                               ; preds = %15, %10
  %33 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %34 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %39 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @sync_blockdev(i64 %40)
  %42 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %43 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @FMODE_READ, align 4
  %46 = load i32, i32* @FMODE_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @blkdev_put(i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %37, %32
  %50 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %51 = call i32 @dst_state_lock(%struct.dst_state* %50)
  %52 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %53 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %55 = call i32 @dst_state_exit_connected(%struct.dst_state* %54)
  %56 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %57 = call i32 @dst_state_unlock(%struct.dst_state* %56)
  %58 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %59 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %58, i32 0, i32 1
  %60 = call i32 @wake_up(i32* %59)
  %61 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %62 = call i32 @dst_state_put(%struct.dst_state* %61)
  %63 = load %struct.dst_node*, %struct.dst_node** %2, align 8
  %64 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %63, i32 0, i32 0
  store %struct.dst_state* null, %struct.dst_state** %64, align 8
  br label %65

65:                                               ; preds = %49, %9
  ret void
}

declare dso_local i32 @blk_cleanup_queue(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_2__*) #1

declare dso_local i32 @sync_blockdev(i64) #1

declare dso_local i32 @blkdev_put(i64, i32) #1

declare dso_local i32 @dst_state_lock(%struct.dst_state*) #1

declare dso_local i32 @dst_state_exit_connected(%struct.dst_state*) #1

declare dso_local i32 @dst_state_unlock(%struct.dst_state*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dst_state_put(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
