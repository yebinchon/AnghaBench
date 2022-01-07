; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_lock_owner_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_lock_owner_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_lock_owner_id(%struct.fuse_conn* %0, i64 %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.fuse_conn*, %struct.fuse_conn** %3, align 8
  %12 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 32
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %62, %2
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %65

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 %23, 4
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 5
  %27 = xor i32 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %30, %36
  %38 = xor i32 %29, %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, -1640531527
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = shl i32 %43, 4
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 5
  %47 = xor i32 %44, %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = ashr i32 %52, 11
  %54 = and i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %50, %57
  %59 = xor i32 %49, %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %22
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %19

65:                                               ; preds = %19
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 32
  %69 = add nsw i32 %66, %68
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
