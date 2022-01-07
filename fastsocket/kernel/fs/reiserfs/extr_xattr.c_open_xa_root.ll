; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_open_xa_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_open_xa_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.dentry* }

@ENODATA = common dso_local global i32 0, align 4
@I_MUTEX_XATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i32)* @open_xa_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @open_xa_root(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %6, align 8
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODATA, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.dentry* @ERR_PTR(i32 %19)
  store %struct.dentry* %20, %struct.dentry** %3, align 8
  br label %73

21:                                               ; preds = %2
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* @I_MUTEX_XATTR, align 4
  %27 = call i32 @mutex_lock_nested(i32* %25, i32 %26)
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = call %struct.TYPE_4__* @REISERFS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.dentry* @dget(i32 %31)
  store %struct.dentry* %32, %struct.dentry** %7, align 8
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = icmp ne %struct.dentry* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @ENODATA, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.dentry* @ERR_PTR(i32 %37)
  store %struct.dentry* %38, %struct.dentry** %7, align 8
  br label %66

39:                                               ; preds = %21
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %65, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENODATA, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @xattr_may_create(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = call i32 @xattr_mkdir(%struct.TYPE_3__* %53, %struct.dentry* %54, i32 448)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %44
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = call i32 @dput(%struct.dentry* %60)
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.dentry* @ERR_PTR(i32 %62)
  store %struct.dentry* %63, %struct.dentry** %7, align 8
  br label %64

64:                                               ; preds = %59, %56
  br label %65

65:                                               ; preds = %64, %39
  br label %66

66:                                               ; preds = %65, %35
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %72, %struct.dentry** %3, align 8
  br label %73

73:                                               ; preds = %66, %17
  %74 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %74
}

declare dso_local %struct.TYPE_4__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i64 @xattr_may_create(i32) #1

declare dso_local i32 @xattr_mkdir(%struct.TYPE_3__*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
