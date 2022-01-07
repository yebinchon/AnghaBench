; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsock_d_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsock_d_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.dentry = type { i8*, i32, i32*, %struct.inode*, i32*, i32*, %struct.TYPE_4__, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_3__ }
%struct.inode = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8*, i32, i32 }
%struct.qstr = type { i32, i32, i32 }

@dentry_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\09Allocat dentry 0x%p\0A\00", align 1
@DNAME_INLINE_LEN = common dso_local global i32 0, align 4
@DCACHE_UNHASHED = common dso_local global i32 0, align 4
@DCACHE_FASTSOCKET = common dso_local global i32 0, align 4
@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@fastsockfs_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.socket*, %struct.dentry*, %struct.qstr*)* @fsock_d_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fsock_d_alloc(%struct.socket* %0, %struct.dentry* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %11 = load i32, i32* @dentry_cache, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.dentry* @kmem_cache_alloc(i32 %11, i32 %12)
  store %struct.dentry* %13, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %133

17:                                               ; preds = %3
  %18 = load i32, i32* @DEBUG, align 4
  %19 = load %struct.dentry*, %struct.dentry** %8, align 8
  %20 = call i32 @DPRINTK(i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.dentry* %19)
  %21 = load %struct.qstr*, %struct.qstr** %7, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DNAME_INLINE_LEN, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %17
  %28 = load %struct.qstr*, %struct.qstr** %7, align 8
  %29 = getelementptr inbounds %struct.qstr, %struct.qstr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i8* @kmalloc(i32 %31, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @dentry_cache, align 4
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = call i32 @kmem_cache_free(i32 %37, %struct.dentry* %38)
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %133

40:                                               ; preds = %27
  br label %45

41:                                               ; preds = %17
  %42 = load %struct.dentry*, %struct.dentry** %8, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %9, align 8
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 14
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load %struct.qstr*, %struct.qstr** %7, align 8
  %51 = getelementptr inbounds %struct.qstr, %struct.qstr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dentry*, %struct.dentry** %8, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 14
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.qstr*, %struct.qstr** %7, align 8
  %57 = getelementptr inbounds %struct.qstr, %struct.qstr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dentry*, %struct.dentry** %8, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 14
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i32 %58, i32* %61, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.qstr*, %struct.qstr** %7, align 8
  %64 = getelementptr inbounds %struct.qstr, %struct.qstr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qstr*, %struct.qstr** %7, align 8
  %67 = getelementptr inbounds %struct.qstr, %struct.qstr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i8* %62, i32 %65, i32 %68)
  %70 = load i8*, i8** %9, align 8
  %71 = load %struct.qstr*, %struct.qstr** %7, align 8
  %72 = getelementptr inbounds %struct.qstr, %struct.qstr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  store i8 0, i8* %75, align 1
  %76 = load %struct.dentry*, %struct.dentry** %8, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 13
  %78 = call i32 @atomic_set(i32* %77, i32 1)
  %79 = load i32, i32* @DCACHE_UNHASHED, align 4
  %80 = load %struct.dentry*, %struct.dentry** %8, align 8
  %81 = getelementptr inbounds %struct.dentry, %struct.dentry* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.dentry*, %struct.dentry** %8, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 12
  %84 = call i32 @spin_lock_init(i32* %83)
  %85 = load %struct.dentry*, %struct.dentry** %8, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 3
  store %struct.inode* null, %struct.inode** %86, align 8
  %87 = load %struct.dentry*, %struct.dentry** %8, align 8
  %88 = getelementptr inbounds %struct.dentry, %struct.dentry* %87, i32 0, i32 4
  store i32* null, i32** %88, align 8
  %89 = load %struct.dentry*, %struct.dentry** %8, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 5
  store i32* null, i32** %90, align 8
  %91 = load %struct.dentry*, %struct.dentry** %8, align 8
  %92 = getelementptr inbounds %struct.dentry, %struct.dentry* %91, i32 0, i32 2
  store i32* null, i32** %92, align 8
  %93 = load %struct.dentry*, %struct.dentry** %8, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 11
  store i32* null, i32** %94, align 8
  %95 = load %struct.dentry*, %struct.dentry** %8, align 8
  %96 = getelementptr inbounds %struct.dentry, %struct.dentry* %95, i32 0, i32 10
  %97 = call i32 @INIT_HLIST_NODE(i32* %96)
  %98 = load %struct.dentry*, %struct.dentry** %8, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 9
  %100 = call i32 @INIT_LIST_HEAD(i32* %99)
  %101 = load %struct.dentry*, %struct.dentry** %8, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 8
  %103 = call i32 @INIT_LIST_HEAD(i32* %102)
  %104 = load %struct.dentry*, %struct.dentry** %8, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 7
  %106 = call i32 @INIT_LIST_HEAD(i32* %105)
  %107 = load %struct.dentry*, %struct.dentry** %8, align 8
  %108 = getelementptr inbounds %struct.dentry, %struct.dentry* %107, i32 0, i32 6
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @INIT_LIST_HEAD(i32* %109)
  %111 = load %struct.socket*, %struct.socket** %5, align 8
  %112 = call %struct.inode* @SOCK_INODE(%struct.socket* %111)
  store %struct.inode* %112, %struct.inode** %10, align 8
  %113 = load %struct.inode*, %struct.inode** %10, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.dentry*, %struct.dentry** %8, align 8
  %117 = getelementptr inbounds %struct.dentry, %struct.dentry* %116, i32 0, i32 5
  store i32* %115, i32** %117, align 8
  %118 = load %struct.dentry*, %struct.dentry** %8, align 8
  %119 = getelementptr inbounds %struct.dentry, %struct.dentry* %118, i32 0, i32 4
  store i32* null, i32** %119, align 8
  %120 = load i32, i32* @DCACHE_FASTSOCKET, align 4
  %121 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.dentry*, %struct.dentry** %8, align 8
  %124 = getelementptr inbounds %struct.dentry, %struct.dentry* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.inode*, %struct.inode** %10, align 8
  %128 = load %struct.dentry*, %struct.dentry** %8, align 8
  %129 = getelementptr inbounds %struct.dentry, %struct.dentry* %128, i32 0, i32 3
  store %struct.inode* %127, %struct.inode** %129, align 8
  %130 = load %struct.dentry*, %struct.dentry** %8, align 8
  %131 = getelementptr inbounds %struct.dentry, %struct.dentry* %130, i32 0, i32 2
  store i32* @fastsockfs_dentry_operations, i32** %131, align 8
  %132 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %132, %struct.dentry** %4, align 8
  br label %133

133:                                              ; preds = %45, %36, %16
  %134 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %134
}

declare dso_local %struct.dentry* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @DPRINTK(i32, i8*, %struct.dentry*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dentry*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.inode* @SOCK_INODE(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
