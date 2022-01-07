; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_make_class_dir_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_make_class_dir_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.inode = type { i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@sel_class_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"perms\00", align 1
@last_class_ino = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dentry*)* @sel_make_class_dir_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_make_class_dir_entries(i8* %0, i32 %1, %struct.dentry* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  store %struct.dentry* null, %struct.dentry** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = call %struct.dentry* @d_alloc_name(%struct.dentry* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* %11, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = icmp ne %struct.dentry* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @S_IFREG, align 4
  %22 = load i32, i32* @S_IRUGO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.inode* @sel_make_inode(i32 %20, i32 %23)
  store %struct.inode* %24, %struct.inode** %8, align 8
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %61

30:                                               ; preds = %17
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  store i32* @sel_class_ops, i32** %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @sel_class_to_ino(i32 %33)
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dentry*, %struct.dentry** %7, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i32 @d_add(%struct.dentry* %37, %struct.inode* %38)
  %40 = load %struct.dentry*, %struct.dentry** %6, align 8
  %41 = call %struct.dentry* @d_alloc_name(%struct.dentry* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dentry* %41, %struct.dentry** %7, align 8
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = icmp ne %struct.dentry* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %9, align 4
  br label %61

47:                                               ; preds = %30
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = call i32 @sel_make_dir(i32 %50, %struct.dentry* %51, i32* @last_class_ino)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %61

56:                                               ; preds = %47
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = call i32 @sel_make_perm_files(i8* %57, i32 %58, %struct.dentry* %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56, %55, %44, %27, %14
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local %struct.inode* @sel_make_inode(i32, i32) #1

declare dso_local i32 @sel_class_to_ino(i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @sel_make_dir(i32, %struct.dentry*, i32*) #1

declare dso_local i32 @sel_make_perm_files(i8*, i32, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
