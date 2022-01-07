; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_info_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_info_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_4__, %struct.seq_file* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.seq_file = type { %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32 }
%struct.TYPE_6__ = type { %struct.rpc_clnt* }

@rpc_show_info = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @rpc_info_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_info_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store %struct.rpc_clnt* null, %struct.rpc_clnt** %5, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = load i32, i32* @rpc_show_info, align 4
  %10 = call i32 @single_open(%struct.file* %8, i32 %9, i32* null)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %65, label %13

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.seq_file*, %struct.seq_file** %15, align 8
  store %struct.seq_file* %16, %struct.seq_file** %7, align 8
  %17 = load %struct.file*, %struct.file** %4, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @d_unhashed(%struct.TYPE_5__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %13
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = call %struct.TYPE_6__* @RPC_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.rpc_clnt*, %struct.rpc_clnt** %32, align 8
  store %struct.rpc_clnt* %33, %struct.rpc_clnt** %5, align 8
  br label %34

34:                                               ; preds = %29, %13
  %35 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %36 = icmp ne %struct.rpc_clnt* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %39 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %38, i32 0, i32 0
  %40 = call i64 @atomic_inc_not_zero(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %50 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %51 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %50, i32 0, i32 0
  store %struct.rpc_clnt* %49, %struct.rpc_clnt** %51, align 8
  br label %64

52:                                               ; preds = %37, %34
  %53 = load %struct.file*, %struct.file** %4, align 8
  %54 = getelementptr inbounds %struct.file, %struct.file* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = load %struct.file*, %struct.file** %4, align 8
  %61 = call i32 @single_release(%struct.inode* %59, %struct.file* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %52, %42
  br label %65

65:                                               ; preds = %64, %2
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @single_open(%struct.file*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @d_unhashed(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_6__* @RPC_I(%struct.inode*) #1

declare dso_local i64 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @single_release(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
