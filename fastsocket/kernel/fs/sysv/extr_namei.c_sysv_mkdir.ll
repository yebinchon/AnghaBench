; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_namei.c_sysv_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_namei.c_sysv_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EMLINK = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @sysv_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @EMLINK, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.TYPE_2__* @SYSV_SB(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %13, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %58

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @inode_inc_link_count(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load i32, i32* @S_IFDIR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.inode* @sysv_new_inode(%struct.inode* %25, i32 %28)
  store %struct.inode* %29, %struct.inode** %7, align 8
  %30 = load %struct.inode*, %struct.inode** %7, align 8
  %31 = call i32 @PTR_ERR(%struct.inode* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i64 @IS_ERR(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %67

36:                                               ; preds = %22
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = call i32 @sysv_set_inode(%struct.inode* %37, i32 0)
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @inode_inc_link_count(%struct.inode* %39)
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call i32 @sysv_make_empty(%struct.inode* %41, %struct.inode* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %60

47:                                               ; preds = %36
  %48 = load %struct.dentry*, %struct.dentry** %5, align 8
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @sysv_add_link(%struct.dentry* %48, %struct.inode* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %60

54:                                               ; preds = %47
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call i32 @d_instantiate(%struct.dentry* %55, %struct.inode* %56)
  br label %58

58:                                               ; preds = %67, %54, %21
  %59 = load i32, i32* %8, align 4
  ret i32 %59

60:                                               ; preds = %53, %46
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @inode_dec_link_count(%struct.inode* %61)
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call i32 @inode_dec_link_count(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %7, align 8
  %66 = call i32 @iput(%struct.inode* %65)
  br label %67

67:                                               ; preds = %60, %35
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = call i32 @inode_dec_link_count(%struct.inode* %68)
  br label %58
}

declare dso_local %struct.TYPE_2__* @SYSV_SB(i32) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @sysv_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @sysv_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @sysv_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @sysv_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
