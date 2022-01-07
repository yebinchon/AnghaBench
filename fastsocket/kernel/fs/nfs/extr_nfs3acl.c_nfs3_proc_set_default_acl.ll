; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_proc_set_default_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_proc_set_default_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_proc_set_default_acl(%struct.inode* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %13 = call %struct.posix_acl* @nfs3_proc_getacl(%struct.inode* %11, i32 %12)
  store %struct.posix_acl* %13, %struct.posix_acl** %8, align 8
  %14 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %15 = call i64 @IS_ERR(%struct.posix_acl* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %19 = call i32 @PTR_ERR(%struct.posix_acl* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 0, %24 ], [ %26, %25 ]
  store i32 %28, i32* %4, align 4
  br label %69

29:                                               ; preds = %3
  %30 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %31 = icmp ne %struct.posix_acl* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %69

33:                                               ; preds = %29
  %34 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %34, i32 %35)
  store %struct.posix_acl* %36, %struct.posix_acl** %9, align 8
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %40 = icmp ne %struct.posix_acl* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %65

42:                                               ; preds = %33
  %43 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %44 = call i32 @posix_acl_create_masq(%struct.posix_acl* %43, i32* %7)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %62

48:                                               ; preds = %42
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISDIR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  br label %59

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi %struct.posix_acl* [ %57, %56 ], [ null, %58 ]
  %61 = call i32 @nfs3_proc_setacls(%struct.inode* %49, %struct.posix_acl* %50, %struct.posix_acl* %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %59, %47
  %63 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %64 = call i32 @posix_acl_release(%struct.posix_acl* %63)
  br label %65

65:                                               ; preds = %62, %41
  %66 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %67 = call i32 @posix_acl_release(%struct.posix_acl* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %32, %27
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.posix_acl* @nfs3_proc_getacl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_create_masq(%struct.posix_acl*, i32*) #1

declare dso_local i32 @nfs3_proc_setacls(%struct.inode*, %struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
