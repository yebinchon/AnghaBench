; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_iter_npages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_iter_npages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32 }

@FUSE_MAX_PAGES_PER_REQ = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iov_iter*)* @fuse_iter_npages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_iter_npages(%struct.iov_iter* %0) #0 {
  %2 = alloca %struct.iov_iter*, align 8
  %3 = alloca %struct.iov_iter, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.iov_iter* %0, %struct.iov_iter** %2, align 8
  %8 = load %struct.iov_iter*, %struct.iov_iter** %2, align 8
  %9 = bitcast %struct.iov_iter* %3 to i8*
  %10 = bitcast %struct.iov_iter* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %20, %1
  %12 = call i64 @iov_iter_count(%struct.iov_iter* %3)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @FUSE_MAX_PAGES_PER_REQ, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %20, label %43

20:                                               ; preds = %18
  %21 = call i64 @fuse_get_user_addr(%struct.iov_iter* %3)
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @PAGE_MASK, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = call i64 @iov_iter_single_seg_count(%struct.iov_iter* %3)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = add i64 %31, %32
  %34 = sub i64 %33, 1
  %35 = load i64, i64* @PAGE_SHIFT, align 8
  %36 = lshr i64 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @iov_iter_advance(%struct.iov_iter* %3, i64 %41)
  br label %11

43:                                               ; preds = %18
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @FUSE_MAX_PAGES_PER_REQ, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #2

declare dso_local i64 @fuse_get_user_addr(%struct.iov_iter*) #2

declare dso_local i64 @iov_iter_single_seg_count(%struct.iov_iter*) #2

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i64) #2

declare dso_local i32 @min(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
