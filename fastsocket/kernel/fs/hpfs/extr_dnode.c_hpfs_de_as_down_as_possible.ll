; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_de_as_down_as_possible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_hpfs_de_as_down_as_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i64 }
%struct.hpfs_dirent = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.dnode = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"hpfs_de_as_down_as_possible\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"hpfs_de_as_down_as_possible: bad up pointer; dnode %08x, down %08x points to %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpfs_de_as_down_as_possible(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.quad_buffer_head, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hpfs_dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %70, %2
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @hpfs_stop_cycles(%struct.super_block* %20, i64 %21, i32* %10, i32* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %3, align 8
  br label %75

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call %struct.hpfs_dirent* @map_nth_dirent(%struct.super_block* %28, i64 %29, i32 1, %struct.quad_buffer_head* %6, i32* null)
  store %struct.hpfs_dirent* %30, %struct.hpfs_dirent** %9, align 8
  %31 = icmp ne %struct.hpfs_dirent* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %3, align 8
  br label %75

34:                                               ; preds = %27
  %35 = load %struct.super_block*, %struct.super_block** %4, align 8
  %36 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.dnode*
  %47 = getelementptr inbounds %struct.dnode, %struct.dnode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %6, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.dnode*
  %58 = getelementptr inbounds %struct.dnode, %struct.dnode* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @hpfs_error(%struct.super_block* %52, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %54, i64 %59)
  br label %61

61:                                               ; preds = %51, %43, %40
  br label %62

62:                                               ; preds = %61, %34
  %63 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %64 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %3, align 8
  br label %75

70:                                               ; preds = %62
  %71 = load i64, i64* %7, align 8
  store i64 %71, i64* %8, align 8
  %72 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %73 = call i64 @de_down_pointer(%struct.hpfs_dirent* %72)
  store i64 %73, i64* %7, align 8
  %74 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  br label %13

75:                                               ; preds = %67, %32, %24
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i64, i32*, i32*, i8*) #1

declare dso_local %struct.hpfs_dirent* @map_nth_dirent(%struct.super_block*, i64, i32, %struct.quad_buffer_head*, i32*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i64, i64, i64) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i64 @de_down_pointer(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
