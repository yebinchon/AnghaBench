; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.coda_vattr = type { i32 }
%struct.CodaFid = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @coda_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.coda_vattr, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.CodaFid, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = call i32 (...) @lock_kernel()
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i64 @coda_isroot(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @coda_iscontrol(i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 (...) @unlock_kernel()
  %33 = load i32, i32* @EPERM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %76

35:                                               ; preds = %26, %3
  %36 = load i32, i32* %7, align 4
  %37 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %9, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.inode*, %struct.inode** %5, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call i32 @coda_i2f(%struct.inode* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @venus_mkdir(i32 %40, i32 %42, i8* %43, i32 %44, %struct.CodaFid* %13, %struct.coda_vattr* %9)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %35
  %49 = call i32 (...) @unlock_kernel()
  %50 = load %struct.dentry*, %struct.dentry** %6, align 8
  %51 = call i32 @d_drop(%struct.dentry* %50)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %76

53:                                               ; preds = %35
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.inode* @coda_iget(i32 %56, %struct.CodaFid* %13, %struct.coda_vattr* %9)
  store %struct.inode* %57, %struct.inode** %8, align 8
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = call i64 @IS_ERR(%struct.inode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = call i32 (...) @unlock_kernel()
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = call i32 @d_drop(%struct.dentry* %63)
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call i32 @PTR_ERR(%struct.inode* %65)
  store i32 %66, i32* %4, align 4
  br label %76

67:                                               ; preds = %53
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call i32 @coda_dir_inc_nlink(%struct.inode* %68)
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call i32 @coda_dir_update_mtime(%struct.inode* %70)
  %72 = call i32 (...) @unlock_kernel()
  %73 = load %struct.dentry*, %struct.dentry** %6, align 8
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i32 @d_instantiate(%struct.dentry* %73, %struct.inode* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %67, %61, %48, %31
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @coda_isroot(%struct.inode*) #1

declare dso_local i64 @coda_iscontrol(i8*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @venus_mkdir(i32, i32, i8*, i32, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.inode* @coda_iget(i32, %struct.CodaFid*, %struct.coda_vattr*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @coda_dir_inc_nlink(%struct.inode*) #1

declare dso_local i32 @coda_dir_update_mtime(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
