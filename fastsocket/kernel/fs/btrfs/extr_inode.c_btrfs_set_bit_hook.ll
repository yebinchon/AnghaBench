; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_set_bit_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_set_bit_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_state = type { i32, i64, i64 }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.btrfs_root* }

@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_FIRST_DELALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.extent_state*, i32*)* @btrfs_set_bit_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_set_bit_hook(%struct.inode* %0, %struct.extent_state* %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.extent_state* %1, %struct.extent_state** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %11 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EXTENT_DELALLOC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %112, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @EXTENT_DELALLOC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %112

22:                                               ; preds = %16
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %25, align 8
  store %struct.btrfs_root* %26, %struct.btrfs_root** %7, align 8
  %27 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %28 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  %31 = load %struct.extent_state*, %struct.extent_state** %5, align 8
  %32 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %8, align 8
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @btrfs_is_free_space_inode(%struct.btrfs_root* %35, %struct.inode* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EXTENT_FIRST_DELALLOC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %22
  %47 = load i32, i32* @EXTENT_FIRST_DELALLOC, align 4
  %48 = xor i32 %47, -1
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %66

52:                                               ; preds = %22
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock(i32* %64)
  br label %66

66:                                               ; preds = %52, %46
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.inode*, %struct.inode** %4, align 8
  %74 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %72
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %82 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %80
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %66
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i64 @list_empty(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %102 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = call i32 @list_add_tail(i32* %100, i32* %104)
  br label %106

106:                                              ; preds = %97, %91, %66
  %107 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %108 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock(i32* %110)
  br label %112

112:                                              ; preds = %106, %16, %3
  ret void
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_is_free_space_inode(%struct.btrfs_root*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
