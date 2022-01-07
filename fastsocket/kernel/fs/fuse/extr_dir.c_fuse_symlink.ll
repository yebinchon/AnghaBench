; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32 }

@FUSE_SYMLINK = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @fuse_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_req*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %11)
  store %struct.fuse_conn* %12, %struct.fuse_conn** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %17 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %16)
  store %struct.fuse_req* %17, %struct.fuse_req** %10, align 8
  %18 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %19 = call i64 @IS_ERR(%struct.fuse_req* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %23 = call i32 @PTR_ERR(%struct.fuse_req* %22)
  store i32 %23, i32* %4, align 4
  br label %74

24:                                               ; preds = %3
  %25 = load i32, i32* @FUSE_SYMLINK, align 4
  %26 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %27 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %31 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 2, i32* %32, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %39 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %37, i32* %43, align 8
  %44 = load %struct.dentry*, %struct.dentry** %6, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %49 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i8* %47, i8** %53, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %56 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %63 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i8* %61, i8** %67, align 8
  %68 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %69 = load %struct.fuse_req*, %struct.fuse_req** %10, align 8
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = load %struct.dentry*, %struct.dentry** %6, align 8
  %72 = load i32, i32* @S_IFLNK, align 4
  %73 = call i32 @create_new_entry(%struct.fuse_conn* %68, %struct.fuse_req* %69, %struct.inode* %70, %struct.dentry* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %24, %21
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i32 @create_new_entry(%struct.fuse_conn*, %struct.fuse_req*, %struct.inode*, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
