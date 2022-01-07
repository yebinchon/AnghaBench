; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_sort_pacl_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4acl.c_sort_pacl_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.posix_acl_entry* }
%struct.posix_acl_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.posix_acl*, i32, i32)* @sort_pacl_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_pacl_range(%struct.posix_acl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.posix_acl_entry, align 8
  store %struct.posix_acl* %0, %struct.posix_acl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %76, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %77

14:                                               ; preds = %10
  store i32 1, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %73, %14
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %76

20:                                               ; preds = %16
  %21 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %22 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %21, i32 0, i32 0
  %23 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %23, i64 %25
  %27 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %30 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %29, i32 0, i32 0
  %31 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %31, i64 %34
  %36 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %28, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  %40 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %41 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %40, i32 0, i32 0
  %42 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %42, i64 %44
  %46 = bitcast %struct.posix_acl_entry* %9 to i8*
  %47 = bitcast %struct.posix_acl_entry* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 8, i1 false)
  %48 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %49 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %48, i32 0, i32 0
  %50 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %50, i64 %52
  %54 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %55 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %54, i32 0, i32 0
  %56 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %56, i64 %59
  %61 = bitcast %struct.posix_acl_entry* %53 to i8*
  %62 = bitcast %struct.posix_acl_entry* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  %64 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %63, i32 0, i32 0
  %65 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %65, i64 %68
  %70 = bitcast %struct.posix_acl_entry* %69 to i8*
  %71 = bitcast %struct.posix_acl_entry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 8, i1 false)
  br label %72

72:                                               ; preds = %39, %20
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %16

76:                                               ; preds = %16
  br label %10

77:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
