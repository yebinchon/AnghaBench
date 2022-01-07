; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_dir.c_call_filldir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_dir.c_call_filldir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_4__, %struct.dir_private_info* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dir_private_info = type { %struct.fname* }
%struct.fname = type { %struct.fname*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"call_filldir: called with null fname?!?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32 (i8*, i32, i32, i32, i32, i32)*, %struct.fname*)* @call_filldir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_filldir(%struct.file* %0, i8* %1, i32 (i8*, i32, i32, i32, i32, i32)* %2, %struct.fname* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i32, i32, i32, i32, i32)*, align 8
  %9 = alloca %struct.fname*, align 8
  %10 = alloca %struct.dir_private_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, i32, i32, i32, i32, i32)* %2, i32 (i8*, i32, i32, i32, i32, i32)** %8, align 8
  store %struct.fname* %3, %struct.fname** %9, align 8
  %15 = load %struct.file*, %struct.file** %6, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 2
  %17 = load %struct.dir_private_info*, %struct.dir_private_info** %16, align 8
  store %struct.dir_private_info* %17, %struct.dir_private_info** %10, align 8
  %18 = load %struct.file*, %struct.file** %6, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %12, align 8
  %24 = load %struct.inode*, %struct.inode** %12, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %13, align 8
  %27 = load %struct.fname*, %struct.fname** %9, align 8
  %28 = icmp ne %struct.fname* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %4
  %30 = call i32 @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %76

31:                                               ; preds = %4
  %32 = load %struct.fname*, %struct.fname** %9, align 8
  %33 = getelementptr inbounds %struct.fname, %struct.fname* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fname*, %struct.fname** %9, align 8
  %36 = getelementptr inbounds %struct.fname, %struct.fname* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hash2pos(i32 %34, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %71, %31
  %40 = load %struct.fname*, %struct.fname** %9, align 8
  %41 = icmp ne %struct.fname* %40, null
  br i1 %41, label %42, label %75

42:                                               ; preds = %39
  %43 = load i32 (i8*, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32)** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.fname*, %struct.fname** %9, align 8
  %46 = getelementptr inbounds %struct.fname, %struct.fname* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fname*, %struct.fname** %9, align 8
  %49 = getelementptr inbounds %struct.fname, %struct.fname* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.fname*, %struct.fname** %9, align 8
  %53 = getelementptr inbounds %struct.fname, %struct.fname* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.super_block*, %struct.super_block** %13, align 8
  %56 = load %struct.fname*, %struct.fname** %9, align 8
  %57 = getelementptr inbounds %struct.fname, %struct.fname* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @get_dtype(%struct.super_block* %55, i32 %58)
  %60 = call i32 %43(i8* %44, i32 %47, i32 %50, i32 %51, i32 %54, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %42
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.file*, %struct.file** %6, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.fname*, %struct.fname** %9, align 8
  %68 = load %struct.dir_private_info*, %struct.dir_private_info** %10, align 8
  %69 = getelementptr inbounds %struct.dir_private_info, %struct.dir_private_info* %68, i32 0, i32 0
  store %struct.fname* %67, %struct.fname** %69, align 8
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %5, align 4
  br label %76

71:                                               ; preds = %42
  %72 = load %struct.fname*, %struct.fname** %9, align 8
  %73 = getelementptr inbounds %struct.fname, %struct.fname* %72, i32 0, i32 0
  %74 = load %struct.fname*, %struct.fname** %73, align 8
  store %struct.fname* %74, %struct.fname** %9, align 8
  br label %39

75:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %63, %29
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @hash2pos(i32, i32) #1

declare dso_local i32 @get_dtype(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
