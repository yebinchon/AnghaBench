; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_make_policycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_make_policycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32, i32* }

@policycap_dir = common dso_local global %struct.TYPE_4__* null, align 8
@POLICYDB_CAPABILITY_MAX = common dso_local global i32 0, align 4
@policycap_names = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@sel_policycap_ops = common dso_local global i32 0, align 4
@SEL_POLICYCAP_INO_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sel_make_policycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_make_policycap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.dentry* null, %struct.dentry** %3, align 8
  store %struct.inode* null, %struct.inode** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @policycap_dir, align 8
  %6 = call i32 @sel_remove_entries(%struct.TYPE_4__* %5)
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %57, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @POLICYDB_CAPABILITY_MAX, align 4
  %10 = icmp ule i32 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = load i8**, i8*** @policycap_names, align 8
  %14 = call i32 @ARRAY_SIZE(i8** %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @policycap_dir, align 8
  %18 = load i8**, i8*** @policycap_names, align 8
  %19 = load i32, i32* %2, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call %struct.dentry* @d_alloc_name(%struct.TYPE_4__* %17, i8* %22)
  store %struct.dentry* %23, %struct.dentry** %3, align 8
  br label %27

24:                                               ; preds = %11
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @policycap_dir, align 8
  %26 = call %struct.dentry* @d_alloc_name(%struct.TYPE_4__* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* %26, %struct.dentry** %3, align 8
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = icmp eq %struct.dentry* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %1, align 4
  br label %61

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @policycap_dir, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @S_IFREG, align 4
  %38 = load i32, i32* @S_IRUGO, align 4
  %39 = or i32 %37, %38
  %40 = call %struct.inode* @sel_make_inode(i32 %36, i32 %39)
  store %struct.inode* %40, %struct.inode** %4, align 8
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = icmp eq %struct.inode* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %1, align 4
  br label %61

46:                                               ; preds = %33
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  store i32* @sel_policycap_ops, i32** %48, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @SEL_POLICYCAP_INO_OFFSET, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.dentry*, %struct.dentry** %3, align 8
  %55 = load %struct.inode*, %struct.inode** %4, align 8
  %56 = call i32 @d_add(%struct.dentry* %54, %struct.inode* %55)
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %2, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %7

60:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %61

61:                                               ; preds = %60, %43, %30
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare dso_local i32 @sel_remove_entries(%struct.TYPE_4__*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.TYPE_4__*, i8*) #1

declare dso_local %struct.inode* @sel_make_inode(i32, i32) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
