; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_setlease.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsfs.c_cifs_setlease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cifsFileInfo*, %struct.TYPE_6__ }
%struct.cifsFileInfo = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_lock = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i64 0, align 8
@F_WRLCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, %struct.file_lock**)* @cifs_setlease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_setlease(%struct.file* %0, i64 %1, %struct.file_lock** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file_lock**, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.cifsFileInfo*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.file_lock** %2, %struct.file_lock*** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %17, align 8
  store %struct.cifsFileInfo* %18, %struct.cifsFileInfo** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISREG(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %74

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @F_RDLCK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call %struct.TYPE_8__* @CIFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %31, %27
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @F_WRLCK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call %struct.TYPE_8__* @CIFS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41, %31
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.file_lock**, %struct.file_lock*** %7, align 8
  %51 = call i32 @generic_setlease(%struct.file* %48, i64 %49, %struct.file_lock** %50)
  store i32 %51, i32* %4, align 4
  br label %74

52:                                               ; preds = %41, %37
  %53 = load %struct.cifsFileInfo*, %struct.cifsFileInfo** %9, align 8
  %54 = getelementptr inbounds %struct.cifsFileInfo, %struct.cifsFileInfo* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_7__* @tlink_tcon(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call %struct.TYPE_8__* @CIFS_I(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load %struct.file*, %struct.file** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.file_lock**, %struct.file_lock*** %7, align 8
  %70 = call i32 @generic_setlease(%struct.file* %67, i64 %68, %struct.file_lock** %69)
  store i32 %70, i32* %4, align 4
  br label %74

71:                                               ; preds = %60, %52
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %66, %47, %24
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local %struct.TYPE_8__* @CIFS_I(%struct.inode*) #1

declare dso_local i32 @generic_setlease(%struct.file*, i64, %struct.file_lock**) #1

declare dso_local %struct.TYPE_7__* @tlink_tcon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
