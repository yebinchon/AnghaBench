; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_set_inode_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_inode.c_smb_set_inode_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.smb_fattr = type { i64, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32 }
%struct.smb_inode_info = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%ld changed, old=%ld, new=%ld, oz=%ld, nz=%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_set_inode_attr(%struct.inode* %0, %struct.smb_fattr* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.smb_fattr*, align 8
  %5 = alloca %struct.smb_inode_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.smb_fattr* %1, %struct.smb_fattr** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.smb_inode_info* @SMB_I(%struct.inode* %8)
  store %struct.smb_inode_info* %9, %struct.smb_inode_info** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %18 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %23 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 8
  %27 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %28 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 4
  %32 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %33 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %38 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 4
  %42 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %43 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %48 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.inode*, %struct.inode** %3, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  %54 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %55 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %54, i32 0, i32 3
  %56 = bitcast %struct.TYPE_2__* %53 to i8*
  %57 = bitcast %struct.TYPE_2__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %59 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.smb_fattr*, %struct.smb_fattr** %4, align 8
  %64 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.smb_inode_info*, %struct.smb_inode_info** %5, align 8
  %67 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @jiffies, align 4
  %69 = load %struct.smb_inode_info*, %struct.smb_inode_info** %5, align 8
  %70 = getelementptr inbounds %struct.smb_inode_info, %struct.smb_inode_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %2
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %77, %2
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.inode*, %struct.inode** %3, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.inode*, %struct.inode** %3, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @VERBOSE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %87, i64 %91, i64 %92, i64 %95)
  %97 = load %struct.inode*, %struct.inode** %3, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @S_ISDIR(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %83
  %103 = load %struct.inode*, %struct.inode** %3, align 8
  %104 = call i32 @invalidate_remote_inode(%struct.inode* %103)
  br label %105

105:                                              ; preds = %102, %83
  br label %106

106:                                              ; preds = %105, %77
  ret void
}

declare dso_local %struct.smb_inode_info* @SMB_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @VERBOSE(i8*, i32, i64, i64, i64, i64) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @invalidate_remote_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
