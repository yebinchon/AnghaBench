; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_dentry_revalidate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_dentry_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.nameidata = type { i32 }
%struct.coda_inode_info = type { i32 }

@C_PURGE = common dso_local global i32 0, align 4
@C_FLUSH = common dso_local global i32 0, align 4
@C_VATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.nameidata*)* @coda_dentry_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_dentry_revalidate(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.coda_inode_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 1
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %73

14:                                               ; preds = %2
  %15 = call i32 (...) @lock_kernel()
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call i64 @coda_isroot(%struct.inode* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %71

20:                                               ; preds = %14
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call i64 @is_bad_inode(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %69

25:                                               ; preds = %20
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  %29 = call %struct.coda_inode_info* @ITOC(%struct.inode* %28)
  store %struct.coda_inode_info* %29, %struct.coda_inode_info** %7, align 8
  %30 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %31 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @C_PURGE, align 4
  %34 = load i32, i32* @C_FLUSH, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %71

39:                                               ; preds = %25
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = call i32 @shrink_dcache_parent(%struct.dentry* %40)
  %42 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %43 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @C_FLUSH, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load i32, i32* @C_FLUSH, align 4
  %51 = call i32 @coda_flag_inode_children(%struct.inode* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %39
  %53 = load %struct.dentry*, %struct.dentry** %4, align 8
  %54 = getelementptr inbounds %struct.dentry, %struct.dentry* %53, i32 0, i32 0
  %55 = call i32 @atomic_read(i32* %54)
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %71

58:                                               ; preds = %52
  %59 = load i32, i32* @C_VATTR, align 4
  %60 = load i32, i32* @C_PURGE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @C_FLUSH, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load %struct.coda_inode_info*, %struct.coda_inode_info** %7, align 8
  %66 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %58, %24
  %70 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %73

71:                                               ; preds = %57, %38, %19
  %72 = call i32 (...) @unlock_kernel()
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %69, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @coda_isroot(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @coda_flag_inode_children(%struct.inode*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
