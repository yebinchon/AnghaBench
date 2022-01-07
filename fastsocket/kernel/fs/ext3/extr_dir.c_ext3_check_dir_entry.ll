; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_dir.c_ext3_check_dir_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_dir.c_ext3_check_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ext3_dir_entry_2 = type { i32, i32, i32 }
%struct.buffer_head = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rec_len % 4 != 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"directory entry across blocks\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"inode out of bounds\00", align 1
@.str.5 = private unnamed_addr constant [81 x i8] c"bad entry in directory #%lu: %s - offset=%lu, inode=%lu, rec_len=%d, name_len=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext3_check_dir_entry(i8* %0, %struct.inode* %1, %struct.ext3_dir_entry_2* %2, %struct.buffer_head* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext3_dir_entry_2*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext3_dir_entry_2* %2, %struct.ext3_dir_entry_2** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i64 %4, i64* %10, align 8
  store i8* null, i8** %11, align 8
  %13 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %14 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ext3_rec_len_from_disk(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i32 @EXT3_DIR_REC_LEN(i32 1)
  %19 = icmp slt i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %89

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  %26 = srem i32 %25, 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %88

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %35 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @EXT3_DIR_REC_LEN(i32 %36)
  %38 = icmp slt i32 %33, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %87

43:                                               ; preds = %32
  %44 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %45 = bitcast %struct.ext3_dir_entry_2* %44 to i8*
  %46 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %47 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %51, %53
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp sgt i64 %54, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %43
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %86

66:                                               ; preds = %43
  %67 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %68 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @le32_to_cpu(i32 %69)
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call %struct.TYPE_7__* @EXT3_SB(%struct.TYPE_6__* %73)
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @le32_to_cpu(i32 %78)
  %80 = icmp sgt i64 %70, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %66
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %11, align 8
  br label %85

85:                                               ; preds = %84, %66
  br label %86

86:                                               ; preds = %85, %65
  br label %87

87:                                               ; preds = %86, %42
  br label %88

88:                                               ; preds = %87, %31
  br label %89

89:                                               ; preds = %88, %23
  %90 = load i8*, i8** %11, align 8
  %91 = icmp ne i8* %90, null
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.inode*, %struct.inode** %7, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %106 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @le32_to_cpu(i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %8, align 8
  %111 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ext3_error(%struct.TYPE_6__* %98, i8* %99, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i32 %102, i8* %103, i64 %104, i64 %108, i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %95, %89
  %115 = load i8*, i8** %11, align 8
  %116 = icmp eq i8* %115, null
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  ret i32 %118
}

declare dso_local i32 @ext3_rec_len_from_disk(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT3_DIR_REC_LEN(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_7__* @EXT3_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @ext3_error(%struct.TYPE_6__*, i8*, i8*, i32, i8*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
