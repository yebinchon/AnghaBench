; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vnode.c_afs_vnode_set_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vnode.c_afs_vnode_set_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_server = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s{%x:%u.%u},%x,%u\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"USING SERVER: %08x\0A\00", align 1
@afs_sync_call = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_vnode_set_lock(%struct.afs_vnode* %0, %struct.key* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_server*, align 8
  %9 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %11 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %23 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %27 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.key*, %struct.key** %6, align 8
  %31 = call i32 @key_serial(%struct.key* %30)
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @_enter(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25, i32 %29, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %53, %3
  %35 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %36 = call %struct.afs_server* @afs_volume_pick_fileserver(%struct.afs_vnode* %35)
  store %struct.afs_server* %36, %struct.afs_server** %8, align 8
  %37 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %38 = call i64 @IS_ERR(%struct.afs_server* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %70

41:                                               ; preds = %34
  %42 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %43 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohl(i32 %45)
  %47 = call i32 @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %49 = load %struct.key*, %struct.key** %6, align 8
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @afs_fs_set_lock(%struct.afs_server* %48, %struct.key* %49, %struct.afs_vnode* %50, i32 %51, i32* @afs_sync_call)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %41
  %54 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %55 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @afs_volume_release_fileserver(%struct.afs_vnode* %54, %struct.afs_server* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %34, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %65 = call i32 @afs_put_server(%struct.afs_server* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %73

70:                                               ; preds = %40
  %71 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %72 = call i32 @PTR_ERR(%struct.afs_server* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.afs_server* @afs_volume_pick_fileserver(%struct.afs_vnode*) #1

declare dso_local i64 @IS_ERR(%struct.afs_server*) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @afs_fs_set_lock(%struct.afs_server*, %struct.key*, %struct.afs_vnode*, i32, i32*) #1

declare dso_local i32 @afs_volume_release_fileserver(%struct.afs_vnode*, %struct.afs_server*, i32) #1

declare dso_local i32 @afs_put_server(%struct.afs_server*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.afs_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
