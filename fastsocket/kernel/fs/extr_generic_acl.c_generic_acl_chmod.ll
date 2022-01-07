; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_generic_acl.c_generic_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_generic_acl.c_generic_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.generic_acl_operations = type { i32 (%struct.inode*, i32, %struct.posix_acl*)*, %struct.posix_acl* (%struct.inode*, i32)* }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_acl_chmod(%struct.inode* %0, %struct.generic_acl_operations* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.generic_acl_operations*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.generic_acl_operations* %1, %struct.generic_acl_operations** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @S_ISLNK(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %58

17:                                               ; preds = %2
  %18 = load %struct.generic_acl_operations*, %struct.generic_acl_operations** %5, align 8
  %19 = getelementptr inbounds %struct.generic_acl_operations, %struct.generic_acl_operations* %18, i32 0, i32 1
  %20 = load %struct.posix_acl* (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)** %19, align 8
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %23 = call %struct.posix_acl* %20(%struct.inode* %21, i32 %22)
  store %struct.posix_acl* %23, %struct.posix_acl** %6, align 8
  %24 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %25 = icmp ne %struct.posix_acl* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %17
  %27 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %27, i32 %28)
  store %struct.posix_acl* %29, %struct.posix_acl** %7, align 8
  %30 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %31 = call i32 @posix_acl_release(%struct.posix_acl* %30)
  %32 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %33 = icmp ne %struct.posix_acl* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %58

37:                                               ; preds = %26
  %38 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @posix_acl_chmod_masq(%struct.posix_acl* %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.generic_acl_operations*, %struct.generic_acl_operations** %5, align 8
  %47 = getelementptr inbounds %struct.generic_acl_operations, %struct.generic_acl_operations* %46, i32 0, i32 0
  %48 = load i32 (%struct.inode*, i32, %struct.posix_acl*)*, i32 (%struct.inode*, i32, %struct.posix_acl*)** %47, align 8
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %51 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %52 = call i32 %48(%struct.inode* %49, i32 %50, %struct.posix_acl* %51)
  br label %53

53:                                               ; preds = %45, %37
  %54 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %55 = call i32 @posix_acl_release(%struct.posix_acl* %54)
  br label %56

56:                                               ; preds = %53, %17
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %34, %14
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_chmod_masq(%struct.posix_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
