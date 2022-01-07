; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_file_has_perm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_file_has_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }
%struct.file = type { %struct.TYPE_7__, %struct.file_security_struct* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file_security_struct = type { i64 }
%struct.common_audit_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }

@FS = common dso_local global i32 0, align 4
@SECCLASS_FD = common dso_local global i32 0, align 4
@FD__USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred*, %struct.file*, i64)* @file_has_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_has_perm(%struct.cred* %0, %struct.file* %1, i64 %2) #0 {
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file_security_struct*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.common_audit_data, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load %struct.file_security_struct*, %struct.file_security_struct** %13, align 8
  store %struct.file_security_struct* %14, %struct.file_security_struct** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.cred*, %struct.cred** %4, align 8
  %22 = call i64 @cred_sid(%struct.cred* %21)
  store i64 %22, i64* %10, align 8
  %23 = load i32, i32* @FS, align 4
  %24 = call i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data* %9, i32 %23)
  %25 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = bitcast %struct.TYPE_7__* %27 to i8*
  %31 = bitcast %struct.TYPE_7__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %34 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %3
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.file_security_struct*, %struct.file_security_struct** %7, align 8
  %40 = getelementptr inbounds %struct.file_security_struct, %struct.file_security_struct* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @SECCLASS_FD, align 4
  %43 = load i32, i32* @FD__USE, align 4
  %44 = call i32 @avc_has_perm(i64 %38, i64 %41, i32 %42, i32 %43, %struct.common_audit_data* %9)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %58

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %3
  store i32 0, i32* %11, align 4
  %50 = load i64, i64* %6, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.cred*, %struct.cred** %4, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @inode_has_perm(%struct.cred* %53, %struct.inode* %54, i64 %55, %struct.common_audit_data* %9)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %52, %49
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i64 @cred_sid(%struct.cred*) #1

declare dso_local i32 @COMMON_AUDIT_DATA_INIT(%struct.common_audit_data*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @avc_has_perm(i64, i64, i32, i32, %struct.common_audit_data*) #1

declare dso_local i32 @inode_has_perm(%struct.cred*, %struct.inode*, i64, %struct.common_audit_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
