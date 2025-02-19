; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_session_write_kbytes_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_session_write_kbytes_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_attr = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@sectors = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_attr*, %struct.ext4_sb_info*, i8*)* @session_write_kbytes_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_write_kbytes_show(%struct.ext4_attr* %0, %struct.ext4_sb_info* %1, i8* %2) #0 {
  %4 = alloca %struct.ext4_attr*, align 8
  %5 = alloca %struct.ext4_sb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.super_block*, align 8
  store %struct.ext4_attr* %0, %struct.ext4_attr** %4, align 8
  store %struct.ext4_sb_info* %1, %struct.ext4_sb_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %9 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load %struct.super_block*, %struct.super_block** %7, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** @sectors, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @part_stat_read(i32 %19, i32 %22)
  %24 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %5, align 8
  %25 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %23, %26
  %28 = ashr i32 %27, 1
  %29 = call i32 @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  ret i32 %29
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @part_stat_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
