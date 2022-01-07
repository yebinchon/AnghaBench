; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_encode_fh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_namei.c_udf_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_4__*, %struct.inode* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.kernel_lb_addr = type { i64, i32 }
%struct.fid = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { %struct.kernel_lb_addr }

@FILEID_UDF_WITHOUT_PARENT = common dso_local global i32 0, align 4
@FILEID_UDF_WITH_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32*, i32*, i32)* @udf_encode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_encode_fh(%struct.dentry* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.kernel_lb_addr, align 8
  %13 = alloca %struct.fid*, align 8
  %14 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 2
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %11, align 8
  %20 = load %struct.inode*, %struct.inode** %11, align 8
  %21 = call %struct.TYPE_6__* @UDF_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = bitcast %struct.kernel_lb_addr* %12 to i8*
  %24 = bitcast %struct.kernel_lb_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 16, i1 false)
  %25 = load i32*, i32** %7, align 8
  %26 = bitcast i32* %25 to %struct.fid*
  store %struct.fid* %26, %struct.fid** %13, align 8
  %27 = load i32, i32* @FILEID_UDF_WITHOUT_PARENT, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %36, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %4
  store i32 255, i32* %5, align 4
  br label %103

37:                                               ; preds = %33, %30
  %38 = load i32*, i32** %8, align 8
  store i32 3, i32* %38, align 4
  %39 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fid*, %struct.fid** %13, align 8
  %42 = getelementptr inbounds %struct.fid, %struct.fid* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  store i32 %40, i32* %43, align 8
  %44 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fid*, %struct.fid** %13, align 8
  %47 = getelementptr inbounds %struct.fid, %struct.fid* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  store i64 %45, i64* %48, align 8
  %49 = load %struct.fid*, %struct.fid** %13, align 8
  %50 = getelementptr inbounds %struct.fid, %struct.fid* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fid*, %struct.fid** %13, align 8
  %56 = getelementptr inbounds %struct.fid, %struct.fid* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %101

60:                                               ; preds = %37
  %61 = load %struct.inode*, %struct.inode** %11, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @S_ISDIR(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %101, label %66

66:                                               ; preds = %60
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.inode*, %struct.inode** %73, align 8
  store %struct.inode* %74, %struct.inode** %11, align 8
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = call %struct.TYPE_6__* @UDF_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = bitcast %struct.kernel_lb_addr* %12 to i8*
  %79 = bitcast %struct.kernel_lb_addr* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.fid*, %struct.fid** %13, align 8
  %83 = getelementptr inbounds %struct.fid, %struct.fid* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.fid*, %struct.fid** %13, align 8
  %88 = getelementptr inbounds %struct.fid, %struct.fid* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = load %struct.inode*, %struct.inode** %11, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fid*, %struct.fid** %13, align 8
  %94 = getelementptr inbounds %struct.fid, %struct.fid* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load %struct.dentry*, %struct.dentry** %6, align 8
  %97 = getelementptr inbounds %struct.dentry, %struct.dentry* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load i32*, i32** %8, align 8
  store i32 5, i32* %99, align 4
  %100 = load i32, i32* @FILEID_UDF_WITH_PARENT, align 4
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %66, %60, %37
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %36
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local %struct.TYPE_6__* @UDF_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
