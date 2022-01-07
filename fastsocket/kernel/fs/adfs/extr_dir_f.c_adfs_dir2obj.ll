; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir_f.c_adfs_dir2obj.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/adfs/extr_dir_f.c_adfs_dir2obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_info = type { i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.adfs_direntry = type { i32, i32, i32, i32, i32, i32 }

@ADFS_F_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_info*, %struct.adfs_direntry*)* @adfs_dir2obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adfs_dir2obj(%struct.object_info* %0, %struct.adfs_direntry* %1) #0 {
  %3 = alloca %struct.object_info*, align 8
  %4 = alloca %struct.adfs_direntry*, align 8
  store %struct.object_info* %0, %struct.object_info** %3, align 8
  store %struct.adfs_direntry* %1, %struct.adfs_direntry** %4, align 8
  %5 = load %struct.object_info*, %struct.object_info** %3, align 8
  %6 = getelementptr inbounds %struct.object_info, %struct.object_info* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.adfs_direntry*, %struct.adfs_direntry** %4, align 8
  %9 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ADFS_F_NAME_LEN, align 4
  %12 = call i32 @adfs_readname(i32 %7, i32 %10, i32 %11)
  %13 = load %struct.object_info*, %struct.object_info** %3, align 8
  %14 = getelementptr inbounds %struct.object_info, %struct.object_info* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 4
  %15 = load %struct.adfs_direntry*, %struct.adfs_direntry** %4, align 8
  %16 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @adfs_readval(i32 %17, i32 3)
  %19 = load %struct.object_info*, %struct.object_info** %3, align 8
  %20 = getelementptr inbounds %struct.object_info, %struct.object_info* %19, i32 0, i32 4
  store i8* %18, i8** %20, align 8
  %21 = load %struct.adfs_direntry*, %struct.adfs_direntry** %4, align 8
  %22 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @adfs_readval(i32 %23, i32 4)
  %25 = load %struct.object_info*, %struct.object_info** %3, align 8
  %26 = getelementptr inbounds %struct.object_info, %struct.object_info* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load %struct.adfs_direntry*, %struct.adfs_direntry** %4, align 8
  %28 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @adfs_readval(i32 %29, i32 4)
  %31 = load %struct.object_info*, %struct.object_info** %3, align 8
  %32 = getelementptr inbounds %struct.object_info, %struct.object_info* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.adfs_direntry*, %struct.adfs_direntry** %4, align 8
  %34 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @adfs_readval(i32 %35, i32 4)
  %37 = load %struct.object_info*, %struct.object_info** %3, align 8
  %38 = getelementptr inbounds %struct.object_info, %struct.object_info* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.adfs_direntry*, %struct.adfs_direntry** %4, align 8
  %40 = getelementptr inbounds %struct.adfs_direntry, %struct.adfs_direntry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.object_info*, %struct.object_info** %3, align 8
  %43 = getelementptr inbounds %struct.object_info, %struct.object_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  ret void
}

declare dso_local i32 @adfs_readname(i32, i32, i32) #1

declare dso_local i8* @adfs_readval(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
