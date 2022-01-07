; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_mkdir_populate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_mkdir_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.qstr*, i32, i8*, i32 (%struct.dentry*, i8*)*, i8*)* @rpc_mkdir_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @rpc_mkdir_populate(%struct.dentry* %0, %struct.qstr* %1, i32 %2, i8* %3, i32 (%struct.dentry*, i8*)* %4, i8* %5) #0 {
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32 (%struct.dentry*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store %struct.qstr* %1, %struct.qstr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 (%struct.dentry*, i8*)* %4, i32 (%struct.dentry*, i8*)** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %14, align 8
  %19 = load %struct.inode*, %struct.inode** %14, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* @I_MUTEX_PARENT, align 4
  %22 = call i32 @mutex_lock_nested(i32* %20, i32 %21)
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = load %struct.qstr*, %struct.qstr** %8, align 8
  %25 = call %struct.dentry* @__rpc_lookup_create_exclusive(%struct.dentry* %23, %struct.qstr* %24)
  store %struct.dentry* %25, %struct.dentry** %13, align 8
  %26 = load %struct.dentry*, %struct.dentry** %13, align 8
  %27 = call i64 @IS_ERR(%struct.dentry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  br label %52

30:                                               ; preds = %6
  %31 = load %struct.inode*, %struct.inode** %14, align 8
  %32 = load %struct.dentry*, %struct.dentry** %13, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @__rpc_mkdir(%struct.inode* %31, %struct.dentry* %32, i32 %33, i32* null, i8* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %61

39:                                               ; preds = %30
  %40 = load i32 (%struct.dentry*, i8*)*, i32 (%struct.dentry*, i8*)** %11, align 8
  %41 = icmp ne i32 (%struct.dentry*, i8*)* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32 (%struct.dentry*, i8*)*, i32 (%struct.dentry*, i8*)** %11, align 8
  %44 = load %struct.dentry*, %struct.dentry** %13, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 %43(%struct.dentry* %44, i8* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %57

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %39
  br label %52

52:                                               ; preds = %61, %51, %29
  %53 = load %struct.inode*, %struct.inode** %14, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.dentry*, %struct.dentry** %13, align 8
  ret %struct.dentry* %56

57:                                               ; preds = %49
  %58 = load %struct.inode*, %struct.inode** %14, align 8
  %59 = load %struct.dentry*, %struct.dentry** %13, align 8
  %60 = call i32 @__rpc_rmdir(%struct.inode* %58, %struct.dentry* %59)
  br label %61

61:                                               ; preds = %57, %38
  %62 = load i32, i32* %15, align 4
  %63 = call %struct.dentry* @ERR_PTR(i32 %62)
  store %struct.dentry* %63, %struct.dentry** %13, align 8
  br label %52
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.dentry* @__rpc_lookup_create_exclusive(%struct.dentry*, %struct.qstr*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @__rpc_mkdir(%struct.inode*, %struct.dentry*, i32, i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__rpc_rmdir(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
