; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c___add_prelim_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_backref.c___add_prelim_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.__prelim_ref = type { i32, i32, i32, i8*, i8*, i32*, %struct.btrfs_key, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, %struct.btrfs_key*, i32, i8*, i8*, i32)* @__add_prelim_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_prelim_ref(%struct.list_head* %0, i8* %1, %struct.btrfs_key* %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.btrfs_key*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.__prelim_ref*, align 8
  store %struct.list_head* %0, %struct.list_head** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.__prelim_ref* @kmalloc(i32 56, i32 %17)
  store %struct.__prelim_ref* %18, %struct.__prelim_ref** %16, align 8
  %19 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %20 = icmp ne %struct.__prelim_ref* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %8, align 4
  br label %59

24:                                               ; preds = %7
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %27 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %29 = icmp ne %struct.btrfs_key* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %32 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %31, i32 0, i32 6
  %33 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %34 = bitcast %struct.btrfs_key* %32 to i8*
  %35 = bitcast %struct.btrfs_key* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 4 %35, i64 4, i1 false)
  br label %40

36:                                               ; preds = %24
  %37 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %38 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %37, i32 0, i32 6
  %39 = call i32 @memset(%struct.btrfs_key* %38, i32 0, i32 4)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %42 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %41, i32 0, i32 5
  store i32* null, i32** %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %45 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %48 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %51 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %54 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.__prelim_ref*, %struct.__prelim_ref** %16, align 8
  %56 = getelementptr inbounds %struct.__prelim_ref, %struct.__prelim_ref* %55, i32 0, i32 2
  %57 = load %struct.list_head*, %struct.list_head** %9, align 8
  %58 = call i32 @list_add_tail(i32* %56, %struct.list_head* %57)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %40, %21
  %60 = load i32, i32* %8, align 4
  ret i32 %60
}

declare dso_local %struct.__prelim_ref* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.btrfs_key*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
