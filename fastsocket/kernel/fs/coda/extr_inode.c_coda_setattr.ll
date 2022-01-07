; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_coda_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_coda_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.iattr = type { i32 }
%struct.coda_vattr = type { i32 }

@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@C_VNON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.coda_vattr, align 4
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %5, align 8
  %11 = call i32 (...) @lock_kernel()
  %12 = call i32 @memset(%struct.coda_vattr* %6, i32 0, i32 4)
  %13 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.iattr*, %struct.iattr** %4, align 8
  %17 = call i32 @coda_iattr_to_vattr(%struct.iattr* %16, %struct.coda_vattr* %6)
  %18 = load i32, i32* @C_VNON, align 4
  %19 = getelementptr inbounds %struct.coda_vattr, %struct.coda_vattr* %6, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = call i32 @coda_i2f(%struct.inode* %23)
  %25 = call i32 @venus_setattr(i32 %22, i32 %24, %struct.coda_vattr* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i32 @coda_vattr_to_iattr(%struct.inode* %29, %struct.coda_vattr* %6)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @coda_cache_clear_inode(%struct.inode* %31)
  br label %33

33:                                               ; preds = %28, %2
  %34 = call i32 (...) @unlock_kernel()
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @memset(%struct.coda_vattr*, i32, i32) #1

declare dso_local i32 @coda_iattr_to_vattr(%struct.iattr*, %struct.coda_vattr*) #1

declare dso_local i32 @venus_setattr(i32, i32, %struct.coda_vattr*) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i32 @coda_vattr_to_iattr(%struct.inode*, %struct.coda_vattr*) #1

declare dso_local i32 @coda_cache_clear_inode(%struct.inode*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
