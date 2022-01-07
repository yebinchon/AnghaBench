; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_map_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_map_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@.str = private unnamed_addr constant [54 x i8] c"hpfs_map_bitmap called with bad parameter: %08x at %s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid bitmap block pointer %08x -> %08x at %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hpfs_map_bitmap(%struct.super_block* %0, i32 %1, %struct.quad_buffer_head* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.quad_buffer_head*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.quad_buffer_head* %2, %struct.quad_buffer_head** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = mul i32 %17, 16384
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ugt i32 %18, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  store i32* null, i32** %5, align 8
  br label %60

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %29, %4
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub i32 %46, 4
  %48 = icmp ugt i32 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41, %30
  %50 = load %struct.super_block*, %struct.super_block** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %50, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i8* %53)
  store i32* null, i32** %5, align 8
  br label %60

55:                                               ; preds = %41
  %56 = load %struct.super_block*, %struct.super_block** %6, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %8, align 8
  %59 = call i32* @hpfs_map_4sectors(%struct.super_block* %56, i32 %57, %struct.quad_buffer_head* %58, i32 4)
  store i32* %59, i32** %5, align 8
  br label %60

60:                                               ; preds = %55, %49, %24
  %61 = load i32*, i32** %5, align 8
  ret i32* %61
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32* @hpfs_map_4sectors(%struct.super_block*, i32, %struct.quad_buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
