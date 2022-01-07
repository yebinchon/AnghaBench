; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_sysfile.c_ocfs2_get_system_file_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_sysfile.c_ocfs2_get_system_file_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_super = type { %struct.inode** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode**, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  store %struct.inode** null, %struct.inode*** %9, align 8
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i64 @is_in_system_inode_array(%struct.ocfs2_super* %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = load %struct.inode**, %struct.inode*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.inode*, %struct.inode** %18, i64 %20
  store %struct.inode** %21, %struct.inode*** %9, align 8
  br label %22

22:                                               ; preds = %15, %3
  %23 = load %struct.inode**, %struct.inode*** %9, align 8
  %24 = icmp ne %struct.inode** %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.inode**, %struct.inode*** %9, align 8
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %8, align 8
  %28 = icmp ne %struct.inode* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call %struct.inode* @igrab(%struct.inode* %30)
  store %struct.inode* %31, %struct.inode** %8, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = icmp ne %struct.inode* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %37, %struct.inode** %4, align 8
  br label %60

38:                                               ; preds = %25, %22
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.inode* @_ocfs2_get_system_file_inode(%struct.ocfs2_super* %39, i32 %40, i32 %41)
  store %struct.inode* %42, %struct.inode** %8, align 8
  %43 = load %struct.inode**, %struct.inode*** %9, align 8
  %44 = icmp ne %struct.inode** %43, null
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = icmp ne %struct.inode* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = call %struct.inode* @igrab(%struct.inode* %49)
  %51 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode* %50, %struct.inode** %51, align 8
  %52 = load %struct.inode**, %struct.inode*** %9, align 8
  %53 = load %struct.inode*, %struct.inode** %52, align 8
  %54 = icmp ne %struct.inode* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  br label %58

58:                                               ; preds = %48, %45, %38
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %59, %struct.inode** %4, align 8
  br label %60

60:                                               ; preds = %58, %29
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %61
}

declare dso_local i64 @is_in_system_inode_array(%struct.ocfs2_super*, i32, i32) #1

declare dso_local %struct.inode* @igrab(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.inode* @_ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
