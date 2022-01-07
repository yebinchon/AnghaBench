; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@C_VATTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @coda_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %6, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  %18 = load %struct.dentry*, %struct.dentry** %8, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  %26 = load %struct.dentry*, %struct.dentry** %8, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = call i32 (...) @lock_kernel()
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @coda_i2f(%struct.inode* %34)
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i32 @coda_i2f(%struct.inode* %36)
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @venus_rename(i32 %33, i32 %35, i32 %37, i32 %38, i32 %39, i8* %40, i8* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %81, label %45

45:                                               ; preds = %4
  %46 = load %struct.dentry*, %struct.dentry** %8, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = load %struct.inode*, %struct.inode** %47, align 8
  %49 = icmp ne %struct.inode* %48, null
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  %51 = load %struct.dentry*, %struct.dentry** %8, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.inode*, %struct.inode** %52, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @S_ISDIR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call i32 @coda_dir_drop_nlink(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @coda_dir_inc_nlink(%struct.inode* %61)
  br label %63

63:                                               ; preds = %58, %50
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = call i32 @coda_dir_update_mtime(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call i32 @coda_dir_update_mtime(%struct.inode* %66)
  %68 = load %struct.dentry*, %struct.dentry** %8, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = load %struct.inode*, %struct.inode** %69, align 8
  %71 = load i32, i32* @C_VATTR, align 4
  %72 = call i32 @coda_flag_inode(%struct.inode* %70, i32 %71)
  br label %80

73:                                               ; preds = %45
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = load i32, i32* @C_VATTR, align 4
  %76 = call i32 @coda_flag_inode(%struct.inode* %74, i32 %75)
  %77 = load %struct.inode*, %struct.inode** %7, align 8
  %78 = load i32, i32* @C_VATTR, align 4
  %79 = call i32 @coda_flag_inode(%struct.inode* %77, i32 %78)
  br label %80

80:                                               ; preds = %73, %63
  br label %81

81:                                               ; preds = %80, %4
  %82 = call i32 (...) @unlock_kernel()
  %83 = load i32, i32* %13, align 4
  ret i32 %83
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @venus_rename(i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @coda_dir_drop_nlink(%struct.inode*) #1

declare dso_local i32 @coda_dir_inc_nlink(%struct.inode*) #1

declare dso_local i32 @coda_dir_update_mtime(%struct.inode*) #1

declare dso_local i32 @coda_flag_inode(%struct.inode*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
