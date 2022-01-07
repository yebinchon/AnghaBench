; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c___ext4_ext_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_extents.c___ext4_ext_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext4_extent_header = type { i64, i64, i64, i64 }

@EXT4_EXT_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"invalid magic\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unexpected eh_depth\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"invalid eh_max\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"too large eh_max\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"invalid eh_entries\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"invalid extent entries\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"bad header/extent in inode #%lu: %s - magic %x, entries %u, max %u(%u), depth %u(%u)\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.inode*, %struct.ext4_extent_header*, i32)* @__ext4_ext_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_ext_check(i8* %0, %struct.inode* %1, %struct.ext4_extent_header* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_extent_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_extent_header* %2, %struct.ext4_extent_header** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %13 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @EXT4_EXT_MAGIC, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %77

21:                                               ; preds = %4
  %22 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %23 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @le16_to_cpu(i64 %24)
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %77

32:                                               ; preds = %21
  %33 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %34 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %77

41:                                               ; preds = %32
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @ext4_ext_max_entries(%struct.inode* %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %46 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le16_to_cpu(i64 %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %77

55:                                               ; preds = %41
  %56 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %57 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @le16_to_cpu(i64 %58)
  %60 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %61 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @le16_to_cpu(i64 %62)
  %64 = icmp sgt i32 %59, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %10, align 8
  br label %77

69:                                               ; preds = %55
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ext4_valid_extent_entries(%struct.inode* %70, %struct.ext4_extent_header* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %77

76:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %107

77:                                               ; preds = %75, %68, %54, %40, %31, %20
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %87 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @le16_to_cpu(i64 %88)
  %90 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %91 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @le16_to_cpu(i64 %92)
  %94 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %95 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le16_to_cpu(i64 %96)
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %8, align 8
  %100 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @le16_to_cpu(i64 %101)
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @__ext4_error(i32 %80, i8* %81, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 %84, i8* %85, i32 %89, i32 %93, i32 %97, i32 %98, i32 %102, i32 %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %77, %76
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @ext4_ext_max_entries(%struct.inode*, i32) #1

declare dso_local i32 @ext4_valid_extent_entries(%struct.inode*, %struct.ext4_extent_header*, i32) #1

declare dso_local i32 @__ext4_error(i32, i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
