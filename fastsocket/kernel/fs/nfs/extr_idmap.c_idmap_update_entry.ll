; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_update_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_idmap.c_idmap_update_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idmap_hashent = type { i8*, i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@nfs_idmap_cache_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idmap_hashent*, i8*, i64, i32)* @idmap_update_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idmap_update_entry(%struct.idmap_hashent* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.idmap_hashent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.idmap_hashent* %0, %struct.idmap_hashent** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = add i64 %10, 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kmalloc(i64 %11, i32 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %43

17:                                               ; preds = %4
  %18 = load %struct.idmap_hashent*, %struct.idmap_hashent** %5, align 8
  %19 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @kfree(i8* %20)
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.idmap_hashent*, %struct.idmap_hashent** %5, align 8
  %24 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @memcpy(i8* %25, i8* %26, i64 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.idmap_hashent*, %struct.idmap_hashent** %5, align 8
  %34 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.idmap_hashent*, %struct.idmap_hashent** %5, align 8
  %37 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i64, i64* @nfs_idmap_cache_timeout, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.idmap_hashent*, %struct.idmap_hashent** %5, align 8
  %42 = getelementptr inbounds %struct.idmap_hashent, %struct.idmap_hashent* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %17, %16
  ret void
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
