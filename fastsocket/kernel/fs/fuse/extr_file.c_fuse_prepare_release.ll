; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_prepare_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_prepare_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file = type { i32, i32, i32, i32, i32, %struct.fuse_req*, %struct.fuse_conn* }
%struct.fuse_req = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.fuse_release_in* }
%struct.fuse_release_in = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.fuse_release_in }
%struct.fuse_conn = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_file*, i32, i32)* @fuse_prepare_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_prepare_release(%struct.fuse_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fuse_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_req*, align 8
  %9 = alloca %struct.fuse_release_in*, align 8
  store %struct.fuse_file* %0, %struct.fuse_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %11 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %10, i32 0, i32 6
  %12 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  store %struct.fuse_conn* %12, %struct.fuse_conn** %7, align 8
  %13 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %13, i32 0, i32 5
  %15 = load %struct.fuse_req*, %struct.fuse_req** %14, align 8
  store %struct.fuse_req* %15, %struct.fuse_req** %8, align 8
  %16 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %17 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store %struct.fuse_release_in* %19, %struct.fuse_release_in** %9, align 8
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %23, i32 0, i32 4
  %25 = call i32 @list_del(i32* %24)
  %26 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %27 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %26, i32 0, i32 3
  %28 = call i32 @RB_EMPTY_NODE(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %3
  %31 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %32 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %31, i32 0, i32 3
  %33 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %34 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %33, i32 0, i32 1
  %35 = call i32 @rb_erase(i32* %32, i32* %34)
  br label %36

36:                                               ; preds = %30, %3
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %38 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %41 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %40, i32 0, i32 2
  %42 = call i32 @wake_up_interruptible_sync(i32* %41)
  %43 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %44 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fuse_release_in*, %struct.fuse_release_in** %9, align 8
  %47 = getelementptr inbounds %struct.fuse_release_in, %struct.fuse_release_in* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.fuse_release_in*, %struct.fuse_release_in** %9, align 8
  %50 = getelementptr inbounds %struct.fuse_release_in, %struct.fuse_release_in* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %53 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load %struct.fuse_file*, %struct.fuse_file** %4, align 8
  %57 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %60 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %64 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %67 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 8, i32* %71, align 8
  %72 = load %struct.fuse_release_in*, %struct.fuse_release_in** %9, align 8
  %73 = load %struct.fuse_req*, %struct.fuse_req** %8, align 8
  %74 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  store %struct.fuse_release_in* %72, %struct.fuse_release_in** %78, align 8
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
