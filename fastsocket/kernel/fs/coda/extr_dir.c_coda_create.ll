; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.nameidata = type { i32 }
%struct.CodaFid = type { i32 }
%struct.coda_vattr = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @coda_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.CodaFid, align 4
  %15 = alloca %struct.coda_vattr, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %11, align 8
  %20 = load %struct.dentry*, %struct.dentry** %7, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = call i32 (...) @lock_kernel()
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call i64 @coda_isroot(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i64 @coda_iscontrol(i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = call i32 (...) @unlock_kernel()
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %75

37:                                               ; preds = %28, %4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = call i32 @coda_i2f(%struct.inode* %41)
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @venus_create(i32 %40, i32 %42, i8* %43, i32 %44, i32 0, i32 %45, %struct.CodaFid* %14, %struct.coda_vattr* %15)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = call i32 (...) @unlock_kernel()
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = call i32 @d_drop(%struct.dentry* %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %75

54:                                               ; preds = %37
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.inode* @coda_iget(i32 %57, %struct.CodaFid* %14, %struct.coda_vattr* %15)
  store %struct.inode* %58, %struct.inode** %13, align 8
  %59 = load %struct.inode*, %struct.inode** %13, align 8
  %60 = call i64 @IS_ERR(%struct.inode* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = call i32 (...) @unlock_kernel()
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = call i32 @d_drop(%struct.dentry* %64)
  %66 = load %struct.inode*, %struct.inode** %13, align 8
  %67 = call i32 @PTR_ERR(%struct.inode* %66)
  store i32 %67, i32* %5, align 4
  br label %75

68:                                               ; preds = %54
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call i32 @coda_dir_update_mtime(%struct.inode* %69)
  %71 = call i32 (...) @unlock_kernel()
  %72 = load %struct.dentry*, %struct.dentry** %7, align 8
  %73 = load %struct.inode*, %struct.inode** %13, align 8
  %74 = call i32 @d_instantiate(%struct.dentry* %72, %struct.inode* %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %68, %62, %49, %33
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @coda_isroot(%struct.inode*) #1

declare dso_local i64 @coda_iscontrol(i8*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @venus_create(i32, i32, i8*, i32, i32, i32, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.inode* @coda_iget(i32, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @coda_dir_update_mtime(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
