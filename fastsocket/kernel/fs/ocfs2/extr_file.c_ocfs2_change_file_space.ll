; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_change_file_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_change_file_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.ocfs2_space_resv = type { i32 }
%struct.ocfs2_super = type { i32 }

@OCFS2_IOC_RESVSP = common dso_local global i32 0, align 4
@OCFS2_IOC_RESVSP64 = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@OCFS2_IOC_UNRESVSP = common dso_local global i32 0, align 4
@OCFS2_IOC_UNRESVSP64 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_change_file_space(%struct.file* %0, i32 %1, %struct.ocfs2_space_resv* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_space_resv*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocfs2_space_resv* %2, %struct.ocfs2_space_resv** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ocfs2_super* @OCFS2_SB(i32 %18)
  store %struct.ocfs2_super* %19, %struct.ocfs2_super** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @OCFS2_IOC_RESVSP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @OCFS2_IOC_RESVSP64, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %3
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %29 = call i32 @ocfs2_writes_unwritten_extents(%struct.ocfs2_super* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @ENOTTY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %78

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @OCFS2_IOC_UNRESVSP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @OCFS2_IOC_UNRESVSP64, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38, %34
  %43 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %44 = call i32 @ocfs2_sparse_alloc(%struct.ocfs2_super* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @ENOTTY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %78

49:                                               ; preds = %42, %38
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @S_ISREG(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %78

59:                                               ; preds = %50
  %60 = load %struct.file*, %struct.file** %5, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FMODE_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @EBADF, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %78

69:                                               ; preds = %59
  %70 = load %struct.file*, %struct.file** %5, align 8
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %7, align 8
  %77 = call i32 @__ocfs2_change_file_space(%struct.file* %70, %struct.inode* %71, i32 %74, i32 %75, %struct.ocfs2_space_resv* %76, i32 0)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %69, %66, %56, %46, %31
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_writes_unwritten_extents(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_sparse_alloc(%struct.ocfs2_super*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @__ocfs2_change_file_space(%struct.file*, %struct.inode*, i32, i32, %struct.ocfs2_space_resv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
