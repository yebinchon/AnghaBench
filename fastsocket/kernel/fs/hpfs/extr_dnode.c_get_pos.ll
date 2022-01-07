; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_get_pos.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dnode.c_get_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dnode = type { i64 }
%struct.hpfs_dirent = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"HPFS: get_pos: not_found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dnode*, %struct.hpfs_dirent*)* @get_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pos(%struct.dnode* %0, %struct.hpfs_dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dnode*, align 8
  %5 = alloca %struct.hpfs_dirent*, align 8
  %6 = alloca %struct.hpfs_dirent*, align 8
  %7 = alloca %struct.hpfs_dirent*, align 8
  %8 = alloca i32, align 4
  store %struct.dnode* %0, %struct.dnode** %4, align 8
  store %struct.hpfs_dirent* %1, %struct.hpfs_dirent** %5, align 8
  %9 = load %struct.dnode*, %struct.dnode** %4, align 8
  %10 = call %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %9)
  store %struct.hpfs_dirent* %10, %struct.hpfs_dirent** %7, align 8
  store i32 1, i32* %8, align 4
  %11 = load %struct.dnode*, %struct.dnode** %4, align 8
  %12 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %11)
  store %struct.hpfs_dirent* %12, %struct.hpfs_dirent** %6, align 8
  br label %13

13:                                               ; preds = %32, %2
  %14 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %15 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %16 = icmp ult %struct.hpfs_dirent* %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %19 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %5, align 8
  %20 = icmp eq %struct.hpfs_dirent* %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.dnode*, %struct.dnode** %4, align 8
  %23 = getelementptr inbounds %struct.dnode, %struct.dnode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %17
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %34 = call %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent* %33)
  store %struct.hpfs_dirent* %34, %struct.hpfs_dirent** %6, align 8
  br label %13

35:                                               ; preds = %13
  %36 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.dnode*, %struct.dnode** %4, align 8
  %38 = getelementptr inbounds %struct.dnode, %struct.dnode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 4
  %42 = or i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %21
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.hpfs_dirent* @dnode_end_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local %struct.hpfs_dirent* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
