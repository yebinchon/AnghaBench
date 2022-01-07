; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i8*, i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @coda_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = call i32 (...) @lock_kernel()
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call i64 @coda_isroot(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %3
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @coda_iscontrol(i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = call i32 (...) @unlock_kernel()
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %27, %3
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i32 @coda_i2f(%struct.inode* %40)
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = call i32 @coda_i2f(%struct.inode* %42)
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @venus_link(i32 %39, i32 %41, i32 %43, i8* %44, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.dentry*, %struct.dentry** %7, align 8
  %51 = call i32 @d_drop(%struct.dentry* %50)
  br label %63

52:                                               ; preds = %36
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i32 @coda_dir_update_mtime(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = call i32 @atomic_inc(i32* %56)
  %58 = load %struct.dentry*, %struct.dentry** %7, align 8
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = call i32 @d_instantiate(%struct.dentry* %58, %struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @inc_nlink(%struct.inode* %61)
  br label %63

63:                                               ; preds = %52, %49
  %64 = call i32 (...) @unlock_kernel()
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %63, %32
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @coda_isroot(%struct.inode*) #1

declare dso_local i64 @coda_iscontrol(i8*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i32 @venus_link(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @coda_dir_update_mtime(%struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
