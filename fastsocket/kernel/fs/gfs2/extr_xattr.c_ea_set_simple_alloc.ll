; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_simple_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_set_simple_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_ea_request = type { i32 }
%struct.ea_set = type { i64, i64, i32, %struct.gfs2_ea_header* }
%struct.gfs2_ea_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_ea_request*, i8*)* @ea_set_simple_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_set_simple_alloc(%struct.gfs2_inode* %0, %struct.gfs2_ea_request* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_ea_request*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ea_set*, align 8
  %9 = alloca %struct.gfs2_ea_header*, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.gfs2_ea_request* %1, %struct.gfs2_ea_request** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.ea_set*
  store %struct.ea_set* %12, %struct.ea_set** %8, align 8
  %13 = load %struct.ea_set*, %struct.ea_set** %8, align 8
  %14 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %13, i32 0, i32 3
  %15 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %14, align 8
  store %struct.gfs2_ea_header* %15, %struct.gfs2_ea_header** %9, align 8
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ea_set*, %struct.ea_set** %8, align 8
  %20 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @gfs2_trans_add_meta(i32 %18, i32 %21)
  %23 = load %struct.ea_set*, %struct.ea_set** %8, align 8
  %24 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %29 = call %struct.gfs2_ea_header* @ea_split_ea(%struct.gfs2_ea_header* %28)
  store %struct.gfs2_ea_header* %29, %struct.gfs2_ea_header** %9, align 8
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %32 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %33 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %6, align 8
  %34 = call i32 @ea_write(%struct.gfs2_inode* %31, %struct.gfs2_ea_header* %32, %struct.gfs2_ea_request* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %51

39:                                               ; preds = %30
  %40 = load %struct.ea_set*, %struct.ea_set** %8, align 8
  %41 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %46 = load %struct.ea_set*, %struct.ea_set** %8, align 8
  %47 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ea_set_remove_stuffed(%struct.gfs2_inode* %45, i64 %48)
  br label %50

50:                                               ; preds = %44, %39
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @gfs2_trans_add_meta(i32, i32) #1

declare dso_local %struct.gfs2_ea_header* @ea_split_ea(%struct.gfs2_ea_header*) #1

declare dso_local i32 @ea_write(%struct.gfs2_inode*, %struct.gfs2_ea_header*, %struct.gfs2_ea_request*) #1

declare dso_local i32 @ea_set_remove_stuffed(%struct.gfs2_inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
