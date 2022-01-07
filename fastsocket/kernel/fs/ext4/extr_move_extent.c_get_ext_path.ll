; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_get_ext_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_move_extent.c_get_ext_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_ext_path = type { i32* }

@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.ext4_ext_path**)* @get_ext_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ext_path(%struct.inode* %0, i32 %1, %struct.ext4_ext_path** %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_ext_path**, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ext4_ext_path** %2, %struct.ext4_ext_path*** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %6, align 8
  %11 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %10, align 8
  %12 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %8, i32 %9, %struct.ext4_ext_path* %11)
  %13 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %6, align 8
  store %struct.ext4_ext_path* %12, %struct.ext4_ext_path** %13, align 8
  %14 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %6, align 8
  %15 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %14, align 8
  %16 = call i64 @IS_ERR(%struct.ext4_ext_path* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %6, align 8
  %20 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %19, align 8
  %21 = call i32 @PTR_ERR(%struct.ext4_ext_path* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %6, align 8
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %22, align 8
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.ext4_ext_path**, %struct.ext4_ext_path*** %6, align 8
  %25 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %24, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call i64 @ext_depth(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %25, i64 %27
  %29 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %32, %23
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode*, i32, %struct.ext4_ext_path*) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i64 @ext_depth(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
