; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_garbage.c_unix_get_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_garbage.c_unix_get_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.socket = type { %struct.TYPE_6__*, %struct.sock* }
%struct.TYPE_6__ = type { i64 }

@PF_UNIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @unix_get_socket(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  store %struct.sock* null, %struct.sock** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %4, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @S_ISSOCK(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.socket* @SOCKET_I(%struct.inode* %19)
  store %struct.socket* %20, %struct.socket** %5, align 8
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 1
  %23 = load %struct.sock*, %struct.sock** %22, align 8
  store %struct.sock* %23, %struct.sock** %6, align 8
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = icmp ne %struct.sock* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.socket*, %struct.socket** %5, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.socket*, %struct.socket** %5, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PF_UNIX, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %40, %struct.sock** %3, align 8
  br label %41

41:                                               ; preds = %39, %31, %26, %18
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.sock*, %struct.sock** %3, align 8
  ret %struct.sock* %43
}

declare dso_local i64 @S_ISSOCK(i32) #1

declare dso_local %struct.socket* @SOCKET_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
