; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_security.c_afs_check_permit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_security.c_afs_check_permit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { %struct.TYPE_10__, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.key* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.key = type { i32 }
%struct.afs_permits = type { i32, %struct.afs_permit* }
%struct.afs_permit = type { i32, %struct.key* }

@.str = private unnamed_addr constant [11 x i8] c"{%x:%u},%x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c" = %ld\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"anon\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"found in cache\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"no valid permit\00", align 1
@AFS_VNODE_CB_BROKEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" = 0 [access %x]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_vnode*, %struct.key*, i32*)* @afs_check_permit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_check_permit(%struct.afs_vnode* %0, %struct.key* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.afs_permits*, align 8
  %9 = alloca %struct.afs_permit*, align 8
  %10 = alloca %struct.afs_vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %5, align 8
  store %struct.key* %1, %struct.key** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %19 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.key*, %struct.key** %6, align 8
  %23 = call i32 @key_serial(%struct.key* %22)
  %24 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %23)
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %26 = load %struct.key*, %struct.key** %6, align 8
  %27 = call %struct.afs_vnode* @afs_get_auth_inode(%struct.afs_vnode* %25, %struct.key* %26)
  store %struct.afs_vnode* %27, %struct.afs_vnode** %10, align 8
  %28 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %29 = call i64 @IS_ERR(%struct.afs_vnode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load i32*, i32** %7, align 8
  store i32 0, i32* %32, align 4
  %33 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %34 = call i32 @PTR_ERR(%struct.afs_vnode* %33)
  %35 = call i32 @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %37 = call i32 @PTR_ERR(%struct.afs_vnode* %36)
  store i32 %37, i32* %4, align 4
  br label %136

38:                                               ; preds = %3
  %39 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %40 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @S_ISDIR(i32 %42)
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load %struct.key*, %struct.key** %6, align 8
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.key*, %struct.key** %51, align 8
  %53 = icmp eq %struct.key* %45, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %38
  %55 = call i32 @_debug(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %57 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  store i32 1, i32* %11, align 4
  br label %100

61:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  %62 = call i32 (...) @rcu_read_lock()
  %63 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %64 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.afs_permits* @rcu_dereference(i32 %65)
  store %struct.afs_permits* %66, %struct.afs_permits** %8, align 8
  %67 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %68 = icmp ne %struct.afs_permits* %67, null
  br i1 %68, label %69, label %98

69:                                               ; preds = %61
  %70 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %71 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %70, i32 0, i32 1
  %72 = load %struct.afs_permit*, %struct.afs_permit** %71, align 8
  store %struct.afs_permit* %72, %struct.afs_permit** %9, align 8
  %73 = load %struct.afs_permits*, %struct.afs_permits** %8, align 8
  %74 = getelementptr inbounds %struct.afs_permits, %struct.afs_permits* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %94, %69
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load %struct.afs_permit*, %struct.afs_permit** %9, align 8
  %81 = getelementptr inbounds %struct.afs_permit, %struct.afs_permit* %80, i32 0, i32 1
  %82 = load %struct.key*, %struct.key** %81, align 8
  %83 = load %struct.key*, %struct.key** %6, align 8
  %84 = icmp eq %struct.key* %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = call i32 @_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.afs_permit*, %struct.afs_permit** %9, align 8
  %88 = getelementptr inbounds %struct.afs_permit, %struct.afs_permit* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  store i32 1, i32* %11, align 4
  br label %97

91:                                               ; preds = %79
  %92 = load %struct.afs_permit*, %struct.afs_permit** %9, align 8
  %93 = getelementptr inbounds %struct.afs_permit, %struct.afs_permit* %92, i32 1
  store %struct.afs_permit* %93, %struct.afs_permit** %9, align 8
  br label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %12, align 4
  br label %76

97:                                               ; preds = %85, %76
  br label %98

98:                                               ; preds = %97, %61
  %99 = call i32 (...) @rcu_read_unlock()
  br label %100

100:                                              ; preds = %98, %54
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %129, label %103

103:                                              ; preds = %100
  %104 = call i32 @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @AFS_VNODE_CB_BROKEN, align 4
  %106 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %107 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %106, i32 0, i32 2
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  %109 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %110 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %111 = load %struct.key*, %struct.key** %6, align 8
  %112 = call i32 @afs_vnode_fetch_status(%struct.afs_vnode* %109, %struct.afs_vnode* %110, %struct.key* %111)
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %103
  %116 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %117 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %116, i32 0, i32 0
  %118 = call i32 @iput(%struct.TYPE_10__* %117)
  %119 = load i32*, i32** %7, align 8
  store i32 0, i32* %119, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %4, align 4
  br label %136

123:                                              ; preds = %103
  %124 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %125 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %123, %100
  %130 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %131 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %130, i32 0, i32 0
  %132 = call i32 @iput(%struct.TYPE_10__* %131)
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %129, %115, %31
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.afs_vnode* @afs_get_auth_inode(%struct.afs_vnode*, %struct.key*) #1

declare dso_local i64 @IS_ERR(%struct.afs_vnode*) #1

declare dso_local i32 @_leave(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.afs_vnode*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @_debug(i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.afs_permits* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @afs_vnode_fetch_status(%struct.afs_vnode*, %struct.afs_vnode*, %struct.key*) #1

declare dso_local i32 @iput(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
