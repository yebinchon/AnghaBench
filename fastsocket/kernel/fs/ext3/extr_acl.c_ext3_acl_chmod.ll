; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_acl.c_ext3_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_acl.c_ext3_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@POSIX_ACL = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_acl_chmod(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.posix_acl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @S_ISLNK(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %101

17:                                               ; preds = %1
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @POSIX_ACL, align 4
  %22 = call i32 @test_opt(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %101

25:                                               ; preds = %17
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %28 = call %struct.posix_acl* @ext3_get_acl(%struct.inode* %26, i32 %27)
  store %struct.posix_acl* %28, %struct.posix_acl** %4, align 8
  %29 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %30 = call i64 @IS_ERR(%struct.posix_acl* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %34 = icmp ne %struct.posix_acl* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %25
  %36 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %37 = call i32 @PTR_ERR(%struct.posix_acl* %36)
  store i32 %37, i32* %2, align 4
  br label %101

38:                                               ; preds = %32
  %39 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.posix_acl* @posix_acl_clone(%struct.posix_acl* %39, i32 %40)
  store %struct.posix_acl* %41, %struct.posix_acl** %5, align 8
  %42 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %43 = call i32 @posix_acl_release(%struct.posix_acl* %42)
  %44 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %45 = icmp ne %struct.posix_acl* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %101

49:                                               ; preds = %38
  %50 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @posix_acl_chmod_masq(%struct.posix_acl* %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %96, label %57

57:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %94, %57
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @EXT3_DATA_TRANS_BLOCKS(i32 %62)
  %64 = call %struct.posix_acl* @ext3_journal_start(%struct.inode* %59, i32 %63)
  store %struct.posix_acl* %64, %struct.posix_acl** %7, align 8
  %65 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %66 = call i64 @IS_ERR(%struct.posix_acl* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %70 = call i32 @PTR_ERR(%struct.posix_acl* %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @ext3_std_error(i32 %73, i32 %74)
  br label %97

76:                                               ; preds = %58
  %77 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %80 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %81 = call i32 @ext3_set_acl(%struct.posix_acl* %77, %struct.inode* %78, i32 %79, %struct.posix_acl* %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %83 = call i32 @ext3_journal_stop(%struct.posix_acl* %82)
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @ENOSPC, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %76
  %89 = load %struct.inode*, %struct.inode** %3, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @ext3_should_retry_alloc(i32 %91, i32* %8)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %58

95:                                               ; preds = %88, %76
  br label %96

96:                                               ; preds = %95, %49
  br label %97

97:                                               ; preds = %96, %68
  %98 = load %struct.posix_acl*, %struct.posix_acl** %5, align 8
  %99 = call i32 @posix_acl_release(%struct.posix_acl* %98)
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %46, %35, %24, %14
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @test_opt(i32, i32) #1

declare dso_local %struct.posix_acl* @ext3_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @posix_acl_clone(%struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_chmod_masq(%struct.posix_acl*, i32) #1

declare dso_local %struct.posix_acl* @ext3_journal_start(%struct.inode*, i32) #1

declare dso_local i32 @EXT3_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @ext3_std_error(i32, i32) #1

declare dso_local i32 @ext3_set_acl(%struct.posix_acl*, %struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @ext3_journal_stop(%struct.posix_acl*) #1

declare dso_local i64 @ext3_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
