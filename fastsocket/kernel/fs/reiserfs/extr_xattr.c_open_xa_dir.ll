; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_open_xa_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr.c_open_xa_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%X.%X\00", align 1
@I_MUTEX_XATTR = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, i32)* @open_xa_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @open_xa_dir(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca [17 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.dentry* @open_xa_root(i32 %12, i32 %13)
  store %struct.dentry* %14, %struct.dentry** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = call i64 @IS_ERR(%struct.dentry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %19, %struct.dentry** %3, align 8
  br label %80

20:                                               ; preds = %2
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = call %struct.TYPE_4__* @INODE_PKEY(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le32_to_cpu(i32 %25)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @snprintf(i8* %21, i32 17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* @I_MUTEX_XATTR, align 4
  %36 = call i32 @mutex_lock_nested(i32* %34, i32 %35)
  %37 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = getelementptr inbounds [17 x i8], [17 x i8]* %8, i64 0, i64 0
  %40 = call i32 @strlen(i8* %39)
  %41 = call %struct.dentry* @lookup_one_len(i8* %37, %struct.dentry* %38, i32 %40)
  store %struct.dentry* %41, %struct.dentry** %7, align 8
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = call i64 @IS_ERR(%struct.dentry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %20
  %46 = load %struct.dentry*, %struct.dentry** %7, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %71, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENODATA, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @xattr_may_create(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = call i32 @xattr_mkdir(%struct.TYPE_3__* %59, %struct.dentry* %60, i32 448)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = call i32 @dput(%struct.dentry* %66)
  %68 = load i32, i32* %9, align 4
  %69 = call %struct.dentry* @ERR_PTR(i32 %68)
  store %struct.dentry* %69, %struct.dentry** %7, align 8
  br label %70

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %45, %20
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = call i32 @dput(%struct.dentry* %77)
  %79 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %79, %struct.dentry** %3, align 8
  br label %80

80:                                               ; preds = %71, %18
  %81 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %81
}

declare dso_local %struct.dentry* @open_xa_root(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @xattr_may_create(i32) #1

declare dso_local i32 @xattr_mkdir(%struct.TYPE_3__*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
