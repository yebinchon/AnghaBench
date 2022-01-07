; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_sbi_ui_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_sbi_ui_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_attr = type { i32 }
%struct.ext4_sb_info = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ext4_attr*, %struct.ext4_sb_info*, i8*, i64)* @sbi_ui_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sbi_ui_store(%struct.ext4_attr* %0, %struct.ext4_sb_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_attr*, align 8
  %7 = alloca %struct.ext4_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.ext4_attr* %0, %struct.ext4_attr** %6, align 8
  store %struct.ext4_sb_info* %1, %struct.ext4_sb_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %7, align 8
  %13 = bitcast %struct.ext4_sb_info* %12 to i8*
  %14 = load %struct.ext4_attr*, %struct.ext4_attr** %6, align 8
  %15 = getelementptr inbounds %struct.ext4_attr, %struct.ext4_attr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %10, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @parse_strtoul(i8* %20, i32 -1, i64* %11)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %31

26:                                               ; preds = %4
  %27 = load i64, i64* %11, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local i64 @parse_strtoul(i8*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
