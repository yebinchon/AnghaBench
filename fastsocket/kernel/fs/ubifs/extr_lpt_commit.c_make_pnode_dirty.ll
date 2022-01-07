; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_make_pnode_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_lpt_commit.c_make_pnode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_pnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32, i32)* @make_pnode_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_pnode_dirty(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_pnode*, align 8
  %11 = alloca %struct.ubifs_nbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.ubifs_pnode* @pnode_lookup(%struct.ubifs_info* %12, i32 %13)
  store %struct.ubifs_pnode* %14, %struct.ubifs_pnode** %10, align 8
  %15 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %16 = call i64 @IS_ERR(%struct.ubifs_pnode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.ubifs_pnode* %19)
  store i32 %20, i32* %5, align 4
  br label %47

21:                                               ; preds = %4
  %22 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %23 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %25, align 8
  %27 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %28 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %26, i64 %29
  store %struct.ubifs_nbranch* %30, %struct.ubifs_nbranch** %11, align 8
  %31 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %11, align 8
  %32 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %21
  %37 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %11, align 8
  %38 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %21
  store i32 0, i32* %5, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %45 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %46 = call i32 @do_make_pnode_dirty(%struct.ubifs_info* %44, %struct.ubifs_pnode* %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %42, %18
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.ubifs_pnode* @pnode_lookup(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @do_make_pnode_dirty(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
