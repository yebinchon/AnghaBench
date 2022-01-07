; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_writev.c_jffs2_flash_direct_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_writev.c_jffs2_flash_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i64, i64, i64*, i32*)* }
%struct.kvec = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_flash_direct_write(%struct.jffs2_sb_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.jffs2_sb_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [1 x %struct.kvec], align 16
  %14 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %16 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.TYPE_2__*, i64, i64, i64*, i32*)*, i32 (%struct.TYPE_2__*, i64, i64, i64*, i32*)** %18, align 8
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %21 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64*, i64** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 %19(%struct.TYPE_2__* %22, i64 %23, i64 %24, i64* %25, i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = call i64 (...) @jffs2_sum_active()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %5
  %31 = load i32*, i32** %11, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %13, i64 0, i64 0
  %34 = getelementptr inbounds %struct.kvec, %struct.kvec* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 16
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %13, i64 0, i64 0
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %39 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %13, i64 0, i64 0
  %40 = load i64, i64* %8, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @jffs2_sum_add_kvec(%struct.jffs2_sb_info* %38, %struct.kvec* %39, i32 1, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %50

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47, %5
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i64 @jffs2_sum_active(...) #1

declare dso_local i32 @jffs2_sum_add_kvec(%struct.jffs2_sb_info*, %struct.kvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
