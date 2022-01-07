; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_reiserfs_xattr_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_reiserfs_xattr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.dentry*, %struct.dentry* }

@MS_RDONLY = common dso_local global i32 0, align 4
@reiserfs_xattr_handlers = common dso_local global i32 0, align 4
@XAROOT_NAME = common dso_local global i32 0, align 4
@REISERFS_XATTRS_USER = common dso_local global i32 0, align 4
@REISERFS_POSIXACL = common dso_local global i32 0, align 4
@MS_POSIXACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_xattr_init(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_8__* @REISERFS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %6, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = call i32 @xattr_mount_check(%struct.super_block* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MS_RDONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %22
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.super_block*, %struct.super_block** %3, align 8
  %36 = call %struct.TYPE_8__* @REISERFS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load %struct.dentry*, %struct.dentry** %37, align 8
  %39 = call i32 @create_privroot(%struct.dentry* %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.super_block*, %struct.super_block** %3, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  br label %47

47:                                               ; preds = %27, %22, %17
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %90

52:                                               ; preds = %47
  %53 = load i32, i32* @reiserfs_xattr_handlers, align 4
  %54 = load %struct.super_block*, %struct.super_block** %3, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.super_block*, %struct.super_block** %3, align 8
  %62 = call %struct.TYPE_8__* @REISERFS_SB(%struct.super_block* %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.dentry*, %struct.dentry** %63, align 8
  %65 = icmp ne %struct.dentry* %64, null
  br i1 %65, label %84, label %66

66:                                               ; preds = %52
  %67 = load i32, i32* @XAROOT_NAME, align 4
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = load i32, i32* @XAROOT_NAME, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = call %struct.dentry* @lookup_one_len(i32 %67, %struct.dentry* %68, i32 %70)
  store %struct.dentry* %71, %struct.dentry** %7, align 8
  %72 = load %struct.dentry*, %struct.dentry** %7, align 8
  %73 = call i32 @IS_ERR(%struct.dentry* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %66
  %76 = load %struct.dentry*, %struct.dentry** %7, align 8
  %77 = load %struct.super_block*, %struct.super_block** %3, align 8
  %78 = call %struct.TYPE_8__* @REISERFS_SB(%struct.super_block* %77)
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  store %struct.dentry* %76, %struct.dentry** %79, align 8
  br label %83

80:                                               ; preds = %66
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = call i32 @PTR_ERR(%struct.dentry* %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %80, %75
  br label %84

84:                                               ; preds = %83, %52
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  br label %90

90:                                               ; preds = %84, %47
  br label %91

91:                                               ; preds = %90, %16
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %91
  %95 = load i32, i32* @REISERFS_XATTRS_USER, align 4
  %96 = load %struct.super_block*, %struct.super_block** %3, align 8
  %97 = call %struct.TYPE_8__* @REISERFS_SB(%struct.super_block* %96)
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = call i32 @clear_bit(i32 %95, i32* %98)
  %100 = load i32, i32* @REISERFS_POSIXACL, align 4
  %101 = load %struct.super_block*, %struct.super_block** %3, align 8
  %102 = call %struct.TYPE_8__* @REISERFS_SB(%struct.super_block* %101)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = call i32 @clear_bit(i32 %100, i32* %103)
  br label %105

105:                                              ; preds = %94, %91
  %106 = load %struct.super_block*, %struct.super_block** %3, align 8
  %107 = call i64 @reiserfs_posixacl(%struct.super_block* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* @MS_POSIXACL, align 4
  %111 = load %struct.super_block*, %struct.super_block** %3, align 8
  %112 = getelementptr inbounds %struct.super_block, %struct.super_block* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %122

115:                                              ; preds = %105
  %116 = load i32, i32* @MS_POSIXACL, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.super_block*, %struct.super_block** %3, align 8
  %119 = getelementptr inbounds %struct.super_block, %struct.super_block* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %115, %109
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_8__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @xattr_mount_check(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @create_privroot(%struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @reiserfs_posixacl(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
