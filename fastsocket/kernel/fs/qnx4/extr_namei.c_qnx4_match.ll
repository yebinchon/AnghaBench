; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_namei.c_qnx4_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/qnx4/extr_namei.c_qnx4_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.qnx4_inode_entry = type { i32, i8* }

@.str = private unnamed_addr constant [36 x i8] c"qnx4: matching unassigned buffer !\0A\00", align 1
@QNX4_DIR_ENTRY_SIZE = common dso_local global i64 0, align 8
@QNX4_FILE_LINK = common dso_local global i32 0, align 4
@QNX4_NAME_MAX = common dso_local global i32 0, align 4
@QNX4_SHORT_NAME_MAX = common dso_local global i32 0, align 4
@QNX4_FILE_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.buffer_head*, i64*)* @qnx4_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx4_match(i32 %0, i8* %1, %struct.buffer_head* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.qnx4_inode_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %14 = icmp eq %struct.buffer_head* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %94

17:                                               ; preds = %4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %20, %22
  %24 = inttoptr i64 %23 to %struct.qnx4_inode_entry*
  store %struct.qnx4_inode_entry* %24, %struct.qnx4_inode_entry** %10, align 8
  %25 = load i64, i64* @QNX4_DIR_ENTRY_SIZE, align 8
  %26 = load i64*, i64** %9, align 8
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %25
  store i64 %28, i64* %26, align 8
  %29 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %10, align 8
  %30 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @QNX4_FILE_LINK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* @QNX4_NAME_MAX, align 4
  store i32 %36, i32* %11, align 4
  br label %39

37:                                               ; preds = %17
  %38 = load i32, i32* @QNX4_SHORT_NAME_MAX, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  %43 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %10, align 8
  %44 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %10, align 8
  %52 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %94

59:                                               ; preds = %50, %42, %39
  %60 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %10, align 8
  %61 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strlen(i8* %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %67, %59
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %94

74:                                               ; preds = %69
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %10, align 8
  %77 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i64 @strncmp(i8* %75, i8* %78, i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load %struct.qnx4_inode_entry*, %struct.qnx4_inode_entry** %10, align 8
  %84 = getelementptr inbounds %struct.qnx4_inode_entry, %struct.qnx4_inode_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @QNX4_FILE_USED, align 4
  %87 = load i32, i32* @QNX4_FILE_LINK, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 1, i32* %5, align 4
  br label %94

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %74
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %91, %73, %58, %15
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
