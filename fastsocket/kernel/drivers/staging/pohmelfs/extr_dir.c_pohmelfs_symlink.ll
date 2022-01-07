; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_dir.c_pohmelfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode*, %struct.qstr }
%struct.qstr = type { i8*, i64, i32 }

@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @pohmelfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qstr, align 8
  %9 = alloca %struct.qstr, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = bitcast %struct.qstr* %9 to i8*
  %15 = bitcast %struct.qstr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @jhash(i8* %19, i64 %23, i32 0)
  %25 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 2
  store i32 %24, i32* %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @POHMELFS_I(%struct.inode* %31)
  %33 = call i32 @pohmelfs_create_link(i32 %32, %struct.qstr* %9, i32* null, %struct.qstr* %8)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %68

37:                                               ; preds = %3
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = load i32, i32* @S_IFLNK, align 4
  %41 = load i32, i32* @S_IRWXU, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @S_IRWXG, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @S_IRWXO, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @pohmelfs_create_entry(%struct.inode* %38, %struct.dentry* %39, i32 0, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %68

51:                                               ; preds = %37
  %52 = load %struct.dentry*, %struct.dentry** %6, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = load %struct.inode*, %struct.inode** %53, align 8
  store %struct.inode* %54, %struct.inode** %10, align 8
  %55 = load %struct.inode*, %struct.inode** %10, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds %struct.qstr, %struct.qstr* %8, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @page_symlink(%struct.inode* %55, i8* %56, i64 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %65

64:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %70

65:                                               ; preds = %63
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = call i32 @iput(%struct.inode* %66)
  br label %68

68:                                               ; preds = %65, %50, %36
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @jhash(i8*, i64, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @pohmelfs_create_link(i32, %struct.qstr*, i32*, %struct.qstr*) #2

declare dso_local i32 @POHMELFS_I(%struct.inode*) #2

declare dso_local i32 @pohmelfs_create_entry(%struct.inode*, %struct.dentry*, i32, i32) #2

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i64) #2

declare dso_local i32 @iput(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
