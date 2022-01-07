; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_gather_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_direct.c_nilfs_direct_gather_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_direct = type { i32 }

@NILFS_DIRECT_NBLOCKS = common dso_local global i32 0, align 4
@NILFS_BMAP_INVALID_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32*, i32*, i32)* @nilfs_direct_gather_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_direct_gather_data(%struct.nilfs_bmap* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nilfs_bmap*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nilfs_direct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %5, align 8
  %14 = bitcast %struct.nilfs_bmap* %13 to %struct.nilfs_direct*
  store %struct.nilfs_direct* %14, %struct.nilfs_direct** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NILFS_DIRECT_NBLOCKS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @NILFS_DIRECT_NBLOCKS, align 4
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %18, %4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %struct.nilfs_direct*, %struct.nilfs_direct** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @nilfs_direct_get_ptr(%struct.nilfs_direct* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @NILFS_BMAP_INVALID_PTR, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %32, %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load i32, i32* %12, align 4
  ret i32 %50
}

declare dso_local i32 @nilfs_direct_get_ptr(%struct.nilfs_direct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
