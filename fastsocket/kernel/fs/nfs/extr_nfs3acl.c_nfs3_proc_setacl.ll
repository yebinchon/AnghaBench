; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_proc_setacl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3acl.c_nfs3_proc_setacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_proc_setacl(%struct.inode* %0, i32 %1, %struct.posix_acl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.posix_acl* %2, %struct.posix_acl** %7, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %8, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @S_ISDIR(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %35 [
    i32 129, label %18
    i32 128, label %26
  ]

18:                                               ; preds = %16
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.posix_acl* @nfs3_proc_getacl(%struct.inode* %19, i32 128)
  store %struct.posix_acl* %20, %struct.posix_acl** %9, align 8
  store %struct.posix_acl* %20, %struct.posix_acl** %8, align 8
  %21 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %22 = call i64 @IS_ERR(%struct.posix_acl* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %68

25:                                               ; preds = %18
  br label %38

26:                                               ; preds = %16
  %27 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  store %struct.posix_acl* %27, %struct.posix_acl** %9, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = call %struct.posix_acl* @nfs3_proc_getacl(%struct.inode* %28, i32 129)
  store %struct.posix_acl* %29, %struct.posix_acl** %7, align 8
  store %struct.posix_acl* %29, %struct.posix_acl** %8, align 8
  %30 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %31 = call i64 @IS_ERR(%struct.posix_acl* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %68

34:                                               ; preds = %26
  br label %38

35:                                               ; preds = %16
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %71

38:                                               ; preds = %34, %25
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 129
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %71

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %38
  %47 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %48 = icmp eq %struct.posix_acl* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.posix_acl* @posix_acl_from_mode(i32 %52, i32 %53)
  store %struct.posix_acl* %54, %struct.posix_acl** %7, align 8
  store %struct.posix_acl* %54, %struct.posix_acl** %8, align 8
  %55 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %56 = call i64 @IS_ERR(%struct.posix_acl* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %68

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %63 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %64 = call i32 @nfs3_proc_setacls(%struct.inode* %61, %struct.posix_acl* %62, %struct.posix_acl* %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %66 = call i32 @posix_acl_release(%struct.posix_acl* %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %71

68:                                               ; preds = %58, %33, %24
  %69 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %70 = call i32 @PTR_ERR(%struct.posix_acl* %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68, %60, %42, %35
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.posix_acl* @nfs3_proc_getacl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_from_mode(i32, i32) #1

declare dso_local i32 @nfs3_proc_setacls(%struct.inode*, %struct.posix_acl*, %struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
