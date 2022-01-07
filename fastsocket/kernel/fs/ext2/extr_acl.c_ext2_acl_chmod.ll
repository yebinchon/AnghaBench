; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_acl.c_ext2_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_acl.c_ext2_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.posix_acl = type { i32 }

@POSIX_ACL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_acl_chmod(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @POSIX_ACL, align 4
  %11 = call i32 @test_opt(i32 %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISLNK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %64

23:                                               ; preds = %14
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %26 = call %struct.posix_acl* @ext2_get_acl(%struct.inode* %24, i32 %25)
  store %struct.posix_acl* %26, %struct.posix_acl** %4, align 8
  %27 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %28 = call i64 @IS_ERR(%struct.posix_acl* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %32 = icmp ne %struct.posix_acl* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %35 = call i32 @PTR_ERR(%struct.posix_acl* %34)
  store i32 %35, i32* %2, align 4
  br label %64

36:                                               ; preds = %30
  %37 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %37, i32 %38)
  store %struct.posix_acl* %39, %struct.posix_acl** %5, align 8
  %40 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %41 = call i32 @posix_acl_release(%struct.posix_acl* %40)
  %42 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %43 = icmp ne %struct.posix_acl* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %64

47:                                               ; preds = %36
  %48 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @posix_acl_chmod_masq(%struct.posix_acl* %48, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %58 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %59 = call i32 @ext2_set_acl(%struct.inode* %56, i32 %57, %struct.posix_acl* %58)
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %47
  %61 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %62 = call i32 @posix_acl_release(%struct.posix_acl* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %44, %33, %20, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @test_opt(i32, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.posix_acl* @ext2_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_chmod_masq(%struct.posix_acl*, i32) #1

declare dso_local i32 @ext2_set_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
