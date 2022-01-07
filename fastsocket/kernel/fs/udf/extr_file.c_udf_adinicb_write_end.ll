; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_file.c_udf_adinicb_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_file.c_udf_adinicb_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.udf_inode_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @udf_adinicb_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_adinicb_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.udf_inode_info*, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %19 = load %struct.address_space*, %struct.address_space** %9, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %22, %24
  store i32 %25, i32* %16, align 4
  %26 = load %struct.inode*, %struct.inode** %15, align 8
  %27 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %26)
  store %struct.udf_inode_info* %27, %struct.udf_inode_info** %18, align 8
  %28 = load %struct.page*, %struct.page** %13, align 8
  %29 = load i32, i32* @KM_USER0, align 4
  %30 = call i8* @kmap_atomic(%struct.page* %28, i32 %29)
  store i8* %30, i8** %17, align 8
  %31 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %32 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.udf_inode_info*, %struct.udf_inode_info** %18, align 8
  %36 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* %16, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i8*, i8** %17, align 8
  %43 = load i32, i32* %16, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @memcpy(i64 %41, i8* %45, i32 %46)
  %48 = load i8*, i8** %17, align 8
  %49 = load i32, i32* @KM_USER0, align 4
  %50 = call i32 @kunmap_atomic(i8* %48, i32 %49)
  %51 = load %struct.file*, %struct.file** %8, align 8
  %52 = load %struct.address_space*, %struct.address_space** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.page*, %struct.page** %13, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @simple_write_end(%struct.file* %51, %struct.address_space* %52, i32 %53, i32 %54, i32 %55, %struct.page* %56, i8* %57)
  ret i32 %58
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @simple_write_end(%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
