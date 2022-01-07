; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_dir.c_get_dtype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_dir.c_get_dtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@EXT3_FEATURE_INCOMPAT_FILETYPE = common dso_local global i32 0, align 4
@EXT3_FT_MAX = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i8 0, align 1
@ext3_filetype_table = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.super_block*, i32)* @get_dtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_dtype(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = load i32, i32* @EXT3_FEATURE_INCOMPAT_FILETYPE, align 4
  %8 = call i32 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @EXT3_FT_MAX, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load i8, i8* @DT_UNKNOWN, align 1
  store i8 %15, i8* %3, align 1
  br label %22

16:                                               ; preds = %10
  %17 = load i8*, i8** @ext3_filetype_table, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %3, align 1
  br label %22

22:                                               ; preds = %16, %14
  %23 = load i8, i8* %3, align 1
  ret i8 %23
}

declare dso_local i32 @EXT3_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
