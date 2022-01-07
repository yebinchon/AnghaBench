; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_proc_getattr_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32 }
%struct.dentry = type { i32 }
%struct.smb_fattr = type { %struct.TYPE_2__, %struct.TYPE_2__, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.smb_request = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@SMBgetatr = common dso_local global i32 0, align 4
@smb_vwv0 = common dso_local global i32 0, align 4
@smb_vwv1 = common dso_local global i32 0, align 4
@smb_vwv3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, %struct.dentry*, %struct.smb_fattr*)* @smb_proc_getattr_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_proc_getattr_core(%struct.smb_sb_info* %0, %struct.dentry* %1, %struct.smb_fattr* %2) #0 {
  %4 = alloca %struct.smb_sb_info*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.smb_fattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.smb_request*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.smb_fattr* %2, %struct.smb_fattr** %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = call %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info* %12, i32 %13)
  store %struct.smb_request* %14, %struct.smb_request** %9, align 8
  %15 = icmp ne %struct.smb_request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %79

17:                                               ; preds = %3
  %18 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %19 = load i32, i32* @SMBgetatr, align 4
  %20 = call i8* @smb_setup_header(%struct.smb_request* %18, i32 %19, i32 0, i32 0)
  store i8* %20, i8** %8, align 8
  %21 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call i32 @smb_simple_encode_path(%struct.smb_request* %21, i8** %8, %struct.dentry* %22, i32* null)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %76

27:                                               ; preds = %17
  %28 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @smb_setup_bcc(%struct.smb_request* %28, i8* %29)
  %31 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %32 = load i32, i32* @SMBgetatr, align 4
  %33 = call i32 @smb_request_ok(%struct.smb_request* %31, i32 %32, i32 10, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %76

36:                                               ; preds = %27
  %37 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %38 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @smb_vwv0, align 4
  %41 = call i32 @WVAL(i32 %39, i32 %40)
  %42 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %43 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.smb_sb_info*, %struct.smb_sb_info** %4, align 8
  %45 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %46 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @smb_vwv1, align 4
  %49 = call i32 @DVAL(i32 %47, i32 %48)
  %50 = call i32 @local2utc(%struct.smb_sb_info* %44, i32 %49)
  %51 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %52 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 8
  %54 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %55 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %58 = getelementptr inbounds %struct.smb_request, %struct.smb_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @smb_vwv3, align 4
  %61 = call i32 @DVAL(i32 %59, i32 %60)
  %62 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %63 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %65 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %64, i32 0, i32 2
  %66 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %67 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %66, i32 0, i32 0
  %68 = bitcast %struct.TYPE_2__* %65 to i8*
  %69 = bitcast %struct.TYPE_2__* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %71 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %70, i32 0, i32 1
  %72 = load %struct.smb_fattr*, %struct.smb_fattr** %6, align 8
  %73 = getelementptr inbounds %struct.smb_fattr, %struct.smb_fattr* %72, i32 0, i32 0
  %74 = bitcast %struct.TYPE_2__* %71 to i8*
  %75 = bitcast %struct.TYPE_2__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %36, %35, %26
  %77 = load %struct.smb_request*, %struct.smb_request** %9, align 8
  %78 = call i32 @smb_rput(%struct.smb_request* %77)
  br label %79

79:                                               ; preds = %76, %16
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.smb_request* @smb_alloc_request(%struct.smb_sb_info*, i32) #1

declare dso_local i8* @smb_setup_header(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @smb_simple_encode_path(%struct.smb_request*, i8**, %struct.dentry*, i32*) #1

declare dso_local i32 @smb_setup_bcc(%struct.smb_request*, i8*) #1

declare dso_local i32 @smb_request_ok(%struct.smb_request*, i32, i32, i32) #1

declare dso_local i32 @WVAL(i32, i32) #1

declare dso_local i32 @local2utc(%struct.smb_sb_info*, i32) #1

declare dso_local i32 @DVAL(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @smb_rput(%struct.smb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
