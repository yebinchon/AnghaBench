; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vnode.c_afs_vnode_extend_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vnode.c_afs_vnode_extend_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_6__, %struct.TYPE_10__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.key = type { i32 }
%struct.afs_server = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"%s{%x:%u.%u},%x\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"USING SERVER: %08x\0A\00", align 1
@afs_sync_call = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_vnode_extend_lock(%struct.afs_vnode* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_vnode*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca %struct.afs_server*, align 8
  %7 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %8 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %9 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %21 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %25 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.key*, %struct.key** %5, align 8
  %29 = call i32 @key_serial(%struct.key* %28)
  %30 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %49, %2
  %32 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %33 = call %struct.afs_server* @afs_volume_pick_fileserver(%struct.afs_vnode* %32)
  store %struct.afs_server* %33, %struct.afs_server** %6, align 8
  %34 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %35 = call i64 @IS_ERR(%struct.afs_server* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %66

38:                                               ; preds = %31
  %39 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %40 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  %44 = call i32 @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %46 = load %struct.key*, %struct.key** %5, align 8
  %47 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %48 = call i32 @afs_fs_extend_lock(%struct.afs_server* %45, %struct.key* %46, %struct.afs_vnode* %47, i32* @afs_sync_call)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %51 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @afs_volume_release_fileserver(%struct.afs_vnode* %50, %struct.afs_server* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %31, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %61 = call i32 @afs_put_server(%struct.afs_server* %60)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %69

66:                                               ; preds = %37
  %67 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %68 = call i32 @PTR_ERR(%struct.afs_server* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.afs_server* @afs_volume_pick_fileserver(%struct.afs_vnode*) #1

declare dso_local i64 @IS_ERR(%struct.afs_server*) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @afs_fs_extend_lock(%struct.afs_server*, %struct.key*, %struct.afs_vnode*, i32*) #1

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
