; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_check_dir_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_check_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ocfs2_dir_entry = type { i32, i32, i32 }
%struct.buffer_head = type { i8* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"rec_len is smaller than minimal\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rec_len % 4 != 0\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"rec_len is too small for name_len\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"directory entry across blocks\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [84 x i8] c"bad entry in directory #%llu: %s - offset=%lu, inode=%llu, rec_len=%d, name_len=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_dir_entry*, %struct.buffer_head*, i64)* @ocfs2_check_dir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_check_dir_entry(%struct.inode* %0, %struct.ocfs2_dir_entry* %1, %struct.buffer_head* %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ocfs2_dir_entry*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ocfs2_dir_entry* %1, %struct.ocfs2_dir_entry** %6, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %12 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @OCFS2_DIR_REC_LEN(i32 1)
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %55

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = srem i32 %20, 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %54

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %27 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @OCFS2_DIR_REC_LEN(i32 %28)
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %53

32:                                               ; preds = %24
  %33 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %34 = bitcast %struct.ocfs2_dir_entry* %33 to i8*
  %35 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %36 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %34 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp sgt i64 %43, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %52

52:                                               ; preds = %51, %32
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %23
  br label %55

55:                                               ; preds = %54, %18
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32, i32* @ML_ERROR, align 4
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %60)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %67 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le64_to_cpu(i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.ocfs2_dir_entry*, %struct.ocfs2_dir_entry** %6, align 8
  %72 = getelementptr inbounds %struct.ocfs2_dir_entry, %struct.ocfs2_dir_entry* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mlog(i32 %59, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i64 %63, i8* %64, i64 %65, i64 %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %58, %55
  %76 = load i8*, i8** %9, align 8
  %77 = icmp eq i8* %76, null
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  ret i32 %79
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @OCFS2_DIR_REC_LEN(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i8*, i64, i64, i32, i32) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
