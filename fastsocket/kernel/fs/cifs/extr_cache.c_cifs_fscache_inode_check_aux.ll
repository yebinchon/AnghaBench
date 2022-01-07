; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cache.c_cifs_fscache_inode_check_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cache.c_cifs_fscache_inode_check_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fscache_inode_auxdata = type { i32, i32, i32 }
%struct.cifsInodeInfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FSCACHE_CHECKAUX_OBSOLETE = common dso_local global i32 0, align 4
@FSCACHE_CHECKAUX_OKAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @cifs_fscache_inode_check_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_fscache_inode_check_aux(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cifs_fscache_inode_auxdata, align 4
  %9 = alloca %struct.cifsInodeInfo*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.cifsInodeInfo*
  store %struct.cifsInodeInfo* %11, %struct.cifsInodeInfo** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 12
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = call i32 @memset(%struct.cifs_fscache_inode_auxdata* %8, i32 0, i32 12)
  %19 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %9, align 8
  %20 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %8, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %9, align 8
  %24 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %8, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.cifsInodeInfo*, %struct.cifsInodeInfo** %9, align 8
  %29 = getelementptr inbounds %struct.cifsInodeInfo, %struct.cifsInodeInfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.cifs_fscache_inode_auxdata, %struct.cifs_fscache_inode_auxdata* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @memcmp(i8* %33, %struct.cifs_fscache_inode_auxdata* %8, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @FSCACHE_CHECKAUX_OBSOLETE, align 4
  store i32 %38, i32* %4, align 4
  br label %41

39:                                               ; preds = %17
  %40 = load i32, i32* @FSCACHE_CHECKAUX_OKAY, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %37, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.cifs_fscache_inode_auxdata*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, %struct.cifs_fscache_inode_auxdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
