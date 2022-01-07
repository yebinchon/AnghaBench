; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_wbuf.c_jffs2_flash_direct_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_wbuf.c_jffs2_flash_direct_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.kvec = type { i8*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_flash_write(%struct.jffs2_sb_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.jffs2_sb_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [1 x %struct.kvec], align 16
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %14 = call i32 @jffs2_is_writebuffered(%struct.jffs2_sb_info* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %5
  %17 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64*, i64** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @jffs2_flash_direct_write(%struct.jffs2_sb_info* %17, i32 %18, i64 %19, i64* %20, i32* %21)
  store i32 %22, i32* %6, align 4
  br label %36

23:                                               ; preds = %5
  %24 = load i32*, i32** %11, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %12, i64 0, i64 0
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 16
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %12, i64 0, i64 0
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %7, align 8
  %32 = getelementptr inbounds [1 x %struct.kvec], [1 x %struct.kvec]* %12, i64 0, i64 0
  %33 = load i32, i32* %8, align 4
  %34 = load i64*, i64** %10, align 8
  %35 = call i32 @jffs2_flash_writev(%struct.jffs2_sb_info* %31, %struct.kvec* %32, i32 1, i32 %33, i64* %34, i32 0)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %23, %16
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @jffs2_is_writebuffered(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_flash_direct_write(%struct.jffs2_sb_info*, i32, i64, i64*, i32*) #1

declare dso_local i32 @jffs2_flash_writev(%struct.jffs2_sb_info*, %struct.kvec*, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
