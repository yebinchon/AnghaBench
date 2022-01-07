; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_reiserfs_lookup_privroot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_reiserfs_lookup_privroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.dentry* }

@PRIVROOT_NAME = common dso_local global i32 0, align 4
@xattr_lookup_poison_ops = common dso_local global i32 0, align 4
@S_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_lookup_privroot(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = getelementptr inbounds %struct.super_block, %struct.super_block* %5, i32 0, i32 0
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i32, i32* @PRIVROOT_NAME, align 4
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load i32, i32* @PRIVROOT_NAME, align 4
  %17 = call i32 @strlen(i32 %16)
  %18 = call %struct.dentry* @lookup_one_len(i32 %12, %struct.TYPE_7__* %15, i32 %17)
  store %struct.dentry* %18, %struct.dentry** %3, align 8
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call i32 @IS_ERR(%struct.dentry* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %1
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = load %struct.super_block*, %struct.super_block** %2, align 8
  %25 = call %struct.TYPE_8__* @REISERFS_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.dentry* %23, %struct.dentry** %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %2, align 8
  %28 = call i32 @reiserfs_expose_privroot(%struct.super_block* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %22
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32* @xattr_lookup_poison_ops, i32** %34, align 8
  br label %35

35:                                               ; preds = %30, %22
  %36 = load %struct.dentry*, %struct.dentry** %3, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i32, i32* @S_PRIVATE, align 4
  %42 = load %struct.dentry*, %struct.dentry** %3, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %35
  br label %52

49:                                               ; preds = %1
  %50 = load %struct.dentry*, %struct.dentry** %3, align 8
  %51 = call i32 @PTR_ERR(%struct.dentry* %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %48
  %53 = load %struct.super_block*, %struct.super_block** %2, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.TYPE_8__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @reiserfs_expose_privroot(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
