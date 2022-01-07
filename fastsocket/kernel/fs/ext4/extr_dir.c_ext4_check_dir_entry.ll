; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_dir.c_ext4_check_dir_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_dir.c_ext4_check_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ext4_dir_entry_2 = type { i32, i32, i32 }
%struct.buffer_head = type { i8*, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rec_len % 4 != 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"directory entry across blocks\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"inode out of bounds\00", align 1
@.str.5 = private unnamed_addr constant [93 x i8] c"bad entry in directory #%lu: %s - block=%lluoffset=%u(%u), inode=%u, rec_len=%d, name_len=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_check_dir_entry(i8* %0, %struct.inode* %1, %struct.ext4_dir_entry_2* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ext4_dir_entry_2*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.ext4_dir_entry_2* %2, %struct.ext4_dir_entry_2** %9, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %14 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %15 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ext4_rec_len_from_disk(i32 %16, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @EXT4_DIR_REC_LEN(i32 1)
  %25 = icmp slt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %96

30:                                               ; preds = %5
  %31 = load i32, i32* %13, align 4
  %32 = srem i32 %31, 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %95

38:                                               ; preds = %30
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %41 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @EXT4_DIR_REC_LEN(i32 %42)
  %44 = icmp slt i32 %39, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %94

49:                                               ; preds = %38
  %50 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %51 = bitcast %struct.ext4_dir_entry_2* %50 to i8*
  %52 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = ptrtoint i8* %51 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp sgt i64 %60, %66
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %49
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %93

72:                                               ; preds = %49
  %73 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %74 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = call %struct.TYPE_7__* @EXT4_SB(%struct.TYPE_6__* %79)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @le32_to_cpu(i32 %84)
  %86 = icmp sgt i64 %76, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %72
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %92

91:                                               ; preds = %72
  store i32 1, i32* %6, align 4
  br label %123

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %48
  br label %95

95:                                               ; preds = %94, %37
  br label %96

96:                                               ; preds = %95, %29
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load %struct.inode*, %struct.inode** %8, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = urem i32 %108, %111
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %115 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @le32_to_cpu(i32 %116)
  %118 = load i32, i32* %13, align 4
  %119 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %9, align 8
  %120 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @__ext4_error(%struct.TYPE_6__* %99, i8* %100, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.5, i64 0, i64 0), i32 %103, i8* %104, i64 %107, i32 %112, i32 %113, i64 %117, i32 %118, i32 %121)
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %96, %91
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_7__* @EXT4_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @__ext4_error(%struct.TYPE_6__*, i8*, i8*, i32, i8*, i64, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
