; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_bmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_inode.c_ext3_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXT3_STATE_JDATA = common dso_local global i32 0, align 4
@ext3_get_block = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32)* @ext3_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_bmap(%struct.address_space* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.address_space*, %struct.address_space** %4, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @EXT3_STATE_JDATA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load i32, i32* @EXT3_STATE_JDATA, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call %struct.TYPE_2__* @EXT3_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32* @EXT3_JOURNAL(%struct.inode* %27)
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @journal_lock_updates(i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @journal_flush(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @journal_unlock_updates(i32* %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %44

38:                                               ; preds = %19
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.address_space*, %struct.address_space** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ext3_get_block, align 4
  %43 = call i32 @generic_block_bmap(%struct.address_space* %40, i32 %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %37
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.TYPE_2__* @EXT3_I(%struct.inode*) #1

declare dso_local i32* @EXT3_JOURNAL(%struct.inode*) #1

declare dso_local i32 @journal_lock_updates(i32*) #1

declare dso_local i32 @journal_flush(i32*) #1

declare dso_local i32 @journal_unlock_updates(i32*) #1

declare dso_local i32 @generic_block_bmap(%struct.address_space*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
