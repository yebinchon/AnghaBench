; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_fallocate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_space_resv = type { i8*, i8*, i64 }

@EOPNOTSUPP = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@OCFS2_IOC_RESVSP64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i32, i64, i64)* @ocfs2_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocfs2_fallocate(%struct.inode* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ocfs2_super*, align 8
  %11 = alloca %struct.ocfs2_space_resv, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocfs2_super* @OCFS2_SB(i32 %15)
  store %struct.ocfs2_super* %16, %struct.ocfs2_super** %10, align 8
  store i32 1, i32* %12, align 4
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %10, align 8
  %18 = call i32 @ocfs2_writes_unwritten_extents(%struct.ocfs2_super* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @EOPNOTSUPP, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %51

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @S_ISDIR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* @ENODEV, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %51

32:                                               ; preds = %23
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %11, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %8, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %11, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = inttoptr i64 %43 to i8*
  %45 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %11, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i32, i32* @OCFS2_IOC_RESVSP64, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @__ocfs2_change_file_space(i32* null, %struct.inode* %46, i64 %47, i32 %48, %struct.ocfs2_space_resv* %11, i32 %49)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %38, %29, %20
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_writes_unwritten_extents(%struct.ocfs2_super*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @__ocfs2_change_file_space(i32*, %struct.inode*, i64, i32, %struct.ocfs2_space_resv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
