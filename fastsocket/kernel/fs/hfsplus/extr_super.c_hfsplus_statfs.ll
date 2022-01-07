; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_super.c_hfsplus_statfs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_super.c_hfsplus_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.kstatfs = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i64, i32, i32 }
%struct.TYPE_5__ = type { i8** }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@HFSPLUS_SUPER_MAGIC = common dso_local global i32 0, align 4
@HFSPLUS_MAX_STRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @hfsplus_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kstatfs*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca %struct.TYPE_6__, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %4, align 8
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %5, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @huge_encode_dev(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @HFSPLUS_SUPER_MAGIC, align 4
  %22 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %23 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %28 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  call void @HFSPLUS_SB(%struct.TYPE_6__* sret %7, %struct.super_block* %29)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  call void @HFSPLUS_SB(%struct.TYPE_6__* sret %8, %struct.super_block* %32)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  %36 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %37 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  call void @HFSPLUS_SB(%struct.TYPE_6__* sret %9, %struct.super_block* %38)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  call void @HFSPLUS_SB(%struct.TYPE_6__* sret %10, %struct.super_block* %41)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %40, %43
  %45 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %46 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %48 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %51 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %53 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %52, i32 0, i32 3
  store i32 -1, i32* %53, align 4
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  call void @HFSPLUS_SB(%struct.TYPE_6__* sret %11, %struct.super_block* %54)
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 4294967295, %56
  %58 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %59 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %58, i32 0, i32 6
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %64 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  store i8* %62, i8** %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = ashr i32 %68, 32
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %73 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %72, i32 0, i32 5
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  store i8* %71, i8** %76, align 8
  %77 = load i32, i32* @HFSPLUS_MAX_STRLEN, align 4
  %78 = load %struct.kstatfs*, %struct.kstatfs** %4, align 8
  %79 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  ret i32 0
}

declare dso_local i32 @huge_encode_dev(i32) #1

declare dso_local void @HFSPLUS_SB(%struct.TYPE_6__* sret, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
