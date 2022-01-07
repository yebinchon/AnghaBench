; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dir_e_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_dir_e_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file_ra_state = type { i64 }
%struct.gfs2_inode = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32*, i8*, i32, %struct.file_ra_state*)* @dir_e_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_e_read(%struct.inode* %0, i32* %1, i8* %2, i32 %3, %struct.file_ra_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_ra_state*, align 8
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.file_ra_state* %4, %struct.file_ra_state** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %21)
  store %struct.gfs2_inode* %22, %struct.gfs2_inode** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gfs2_dir_offset2hash(i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %32 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 32, %33
  %35 = ashr i32 %30, %34
  store i32 %35, i32* %16, align 4
  %36 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %37 = icmp ne %struct.file_ra_state* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %5
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %45 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %38, %5
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %48 = call i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode* %47)
  store i32* %48, i32** %17, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = call i64 @IS_ERR(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32*, i32** %17, align 8
  %54 = call i32 @PTR_ERR(i32* %53)
  store i32 %54, i32* %6, align 4
  br label %100

55:                                               ; preds = %46
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.file_ra_state*, %struct.file_ra_state** %11, align 8
  %60 = call i32 @gfs2_dir_readahead(%struct.inode* %56, i32 %57, i32 %58, %struct.file_ra_state* %59)
  br label %61

61:                                               ; preds = %80, %55
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %61
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be64_to_cpu(i32 %74)
  %76 = call i32 @gfs2_dir_read_leaf(%struct.inode* %66, i32* %67, i8* %68, i32 %69, i32* %18, i32* %20, i32 %75)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %94

80:                                               ; preds = %65
  %81 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %82 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %20, align 4
  %85 = sub i32 %83, %84
  %86 = shl i32 1, %85
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %88, 1
  %90 = xor i32 %89, -1
  %91 = and i32 %87, %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %16, align 4
  br label %61

94:                                               ; preds = %79, %61
  %95 = load i32, i32* %19, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %19, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32, i32* %19, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %52
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_dir_offset2hash(i32) #1

declare dso_local i32* @gfs2_dir_get_hash_table(%struct.gfs2_inode*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @gfs2_dir_readahead(%struct.inode*, i32, i32, %struct.file_ra_state*) #1

declare dso_local i32 @gfs2_dir_read_leaf(%struct.inode*, i32*, i8*, i32, i32*, i32*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
