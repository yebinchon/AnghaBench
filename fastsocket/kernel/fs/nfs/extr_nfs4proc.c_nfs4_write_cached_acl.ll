; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_write_cached_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_write_cached_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.nfs4_cached_acl = type { i32, i64, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.page**, i64, i64)* @nfs4_write_cached_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_write_cached_acl(%struct.inode* %0, %struct.page** %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfs4_cached_acl*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = add i64 24, %11
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* @PAGE_SIZE, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load i64, i64* %10, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.nfs4_cached_acl* @kmalloc(i32 %18, i32 %19)
  store %struct.nfs4_cached_acl* %20, %struct.nfs4_cached_acl** %9, align 8
  %21 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %9, align 8
  %22 = icmp eq %struct.nfs4_cached_acl* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %47

24:                                               ; preds = %16
  %25 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %9, align 8
  %26 = getelementptr inbounds %struct.nfs4_cached_acl, %struct.nfs4_cached_acl* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %9, align 8
  %28 = getelementptr inbounds %struct.nfs4_cached_acl, %struct.nfs4_cached_acl* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.page**, %struct.page*** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @_copy_from_pages(i32 %29, %struct.page** %30, i64 %31, i64 %32)
  br label %43

34:                                               ; preds = %4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.nfs4_cached_acl* @kmalloc(i32 24, i32 %35)
  store %struct.nfs4_cached_acl* %36, %struct.nfs4_cached_acl** %9, align 8
  %37 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %9, align 8
  %38 = icmp eq %struct.nfs4_cached_acl* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %47

40:                                               ; preds = %34
  %41 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %9, align 8
  %42 = getelementptr inbounds %struct.nfs4_cached_acl, %struct.nfs4_cached_acl* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %24
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %9, align 8
  %46 = getelementptr inbounds %struct.nfs4_cached_acl, %struct.nfs4_cached_acl* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %43, %39, %23
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.nfs4_cached_acl*, %struct.nfs4_cached_acl** %9, align 8
  %50 = call i32 @nfs4_set_cached_acl(%struct.inode* %48, %struct.nfs4_cached_acl* %49)
  ret void
}

declare dso_local %struct.nfs4_cached_acl* @kmalloc(i32, i32) #1

declare dso_local i32 @_copy_from_pages(i32, %struct.page**, i64, i64) #1

declare dso_local i32 @nfs4_set_cached_acl(%struct.inode*, %struct.nfs4_cached_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
