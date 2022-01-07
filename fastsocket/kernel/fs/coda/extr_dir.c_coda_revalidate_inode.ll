; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_revalidate_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_revalidate_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i64, i32 }
%struct.coda_vattr = type { i32 }
%struct.coda_inode_info = type { i32, i32 }

@C_VATTR = common dso_local global i32 0, align 4
@C_PURGE = common dso_local global i32 0, align 4
@C_FLUSH = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Coda: inode %ld, fid %s changed type!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_revalidate_inode(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.coda_vattr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.coda_inode_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = call %struct.coda_inode_info* @ITOC(%struct.inode* %13)
  store %struct.coda_inode_info* %14, %struct.coda_inode_info** %9, align 8
  %15 = call i32 (...) @lock_kernel()
  %16 = load %struct.coda_inode_info*, %struct.coda_inode_info** %9, align 8
  %17 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.coda_inode_info*, %struct.coda_inode_info** %9, align 8
  %23 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @C_VATTR, align 4
  %26 = load i32, i32* @C_PURGE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @C_FLUSH, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %24, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %89

32:                                               ; preds = %21
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.coda_inode_info*, %struct.coda_inode_info** %9, align 8
  %37 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %36, i32 0, i32 1
  %38 = call i32 @venus_getattr(i32 %35, i32* %37, %struct.coda_vattr* %4)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %92

42:                                               ; preds = %32
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %6, align 4
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = call i32 @coda_vattr_to_iattr(%struct.inode* %49, %struct.coda_vattr* %4)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @S_IFMT, align 4
  %53 = and i32 %51, %52
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @S_IFMT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %53, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %42
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.coda_inode_info*, %struct.coda_inode_info** %9, align 8
  %65 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %64, i32 0, i32 1
  %66 = call i32 @coda_f2s(i32* %65)
  %67 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %63, i32 %66)
  br label %68

68:                                               ; preds = %60, %42
  %69 = load %struct.inode*, %struct.inode** %8, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %92

75:                                               ; preds = %68
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = load i32, i32* @C_FLUSH, align 4
  %78 = call i32 @coda_flag_inode_children(%struct.inode* %76, i32 %77)
  %79 = load i32, i32* @C_VATTR, align 4
  %80 = load i32, i32* @C_PURGE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @C_FLUSH, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.coda_inode_info*, %struct.coda_inode_info** %9, align 8
  %86 = getelementptr inbounds %struct.coda_inode_info, %struct.coda_inode_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %75, %21
  br label %90

90:                                               ; preds = %89, %20
  %91 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %2, align 4
  br label %96

92:                                               ; preds = %74, %41
  %93 = call i32 (...) @unlock_kernel()
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %90
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.coda_inode_info* @ITOC(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @venus_getattr(i32, i32*, %struct.coda_vattr*) #1

declare dso_local i32 @coda_vattr_to_iattr(%struct.inode*, %struct.coda_vattr*) #1

declare dso_local i32 @printk(i8*, i64, i32) #1

declare dso_local i32 @coda_f2s(i32*) #1

declare dso_local i32 @coda_flag_inode_children(%struct.inode*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
