; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_file.c_bfs_move_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/bfs/extr_file.c_bfs_move_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%08lx-%08lx->%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to move block %08lx -> %08lx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, i64, i64)* @bfs_move_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_move_blocks(%struct.super_block* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 (i8*, i64, i64, ...) @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %11, i64 %12, i64 %13)
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %37, %4
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add i64 %22, %23
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = call i64 @bfs_move_block(i64 %21, i64 %24, %struct.super_block* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %10, align 8
  %32 = add i64 %30, %31
  %33 = call i32 (i8*, i64, i64, ...) @dprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %29, i64 %32)
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %41

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %10, align 8
  br label %16

40:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @dprintf(i8*, i64, i64, ...) #1

declare dso_local i64 @bfs_move_block(i64, i64, %struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
