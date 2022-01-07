; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_get_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_acl.c_jffs2_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32 }
%struct.inode = type { i32 }

@ACL_NOT_CACHED = common dso_local global %struct.posix_acl* null, align 8
@JFFS2_XPREFIX_ACL_ACCESS = common dso_local global i32 0, align 4
@JFFS2_XPREFIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.posix_acl* (%struct.inode*, i32)* @jffs2_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.posix_acl* @jffs2_get_acl(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.posix_acl*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.posix_acl* @get_cached_acl(%struct.inode* %10, i32 %11)
  store %struct.posix_acl* %12, %struct.posix_acl** %6, align 8
  %13 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %14 = load %struct.posix_acl*, %struct.posix_acl** @ACL_NOT_CACHED, align 8
  %15 = icmp ne %struct.posix_acl* %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %17, %struct.posix_acl** %3, align 8
  br label %87

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %24 [
    i32 129, label %20
    i32 128, label %22
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* @JFFS2_XPREFIX_ACL_ACCESS, align 4
  store i32 %21, i32* %9, align 4
  br label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @JFFS2_XPREFIX_ACL_DEFAULT, align 4
  store i32 %23, i32* %9, align 4
  br label %26

24:                                               ; preds = %18
  %25 = call i32 (...) @BUG()
  br label %26

26:                                               ; preds = %24, %22, %20
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @do_jffs2_getxattr(%struct.inode* %27, i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* null, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i32 %33, i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.posix_acl* @ERR_PTR(i32 %40)
  store %struct.posix_acl* %41, %struct.posix_acl** %3, align 8
  br label %87

42:                                               ; preds = %32
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @do_jffs2_getxattr(%struct.inode* %43, i32 %44, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %42, %26
  %49 = load i32, i32* %8, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call %struct.posix_acl* @jffs2_acl_from_medium(i8* %52, i32 %53)
  store %struct.posix_acl* %54, %struct.posix_acl** %6, align 8
  br label %70

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ENODATA, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @ENOSYS, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55
  store %struct.posix_acl* null, %struct.posix_acl** %6, align 8
  br label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = call %struct.posix_acl* @ERR_PTR(i32 %67)
  store %struct.posix_acl* %68, %struct.posix_acl** %6, align 8
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %51
  %71 = load i8*, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @kfree(i8* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %78 = call i32 @IS_ERR(%struct.posix_acl* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load %struct.inode*, %struct.inode** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %84 = call i32 @set_cached_acl(%struct.inode* %81, i32 %82, %struct.posix_acl* %83)
  br label %85

85:                                               ; preds = %80, %76
  %86 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  store %struct.posix_acl* %86, %struct.posix_acl** %3, align 8
  br label %87

87:                                               ; preds = %85, %38, %16
  %88 = load %struct.posix_acl*, %struct.posix_acl** %3, align 8
  ret %struct.posix_acl* %88
}

declare dso_local %struct.posix_acl* @get_cached_acl(%struct.inode*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @do_jffs2_getxattr(%struct.inode*, i32, i8*, i8*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local %struct.posix_acl* @jffs2_acl_from_medium(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
