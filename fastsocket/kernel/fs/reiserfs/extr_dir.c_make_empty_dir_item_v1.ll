; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_dir.c_make_empty_dir_item_v1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_dir.c_make_empty_dir_item_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_de_head = type { i64, i8*, i8* }

@EMPTY_DIR_SIZE_V1 = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DOT_DOT_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_empty_dir_item_v1(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.reiserfs_de_head*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @EMPTY_DIR_SIZE_V1, align 4
  %14 = call i32 @memset(i8* %12, i32 0, i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.reiserfs_de_head*
  store %struct.reiserfs_de_head* %16, %struct.reiserfs_de_head** %11, align 8
  %17 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %18 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %17, i64 0
  %19 = load i32, i32* @DOT_OFFSET, align 4
  %20 = call i32 @put_deh_offset(%struct.reiserfs_de_head* %18, i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %23 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %22, i64 0
  %24 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %23, i32 0, i32 2
  store i8* %21, i8** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %27 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %26, i64 0
  %28 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %30 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %29, i64 0
  %31 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %33 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %32, i64 0
  %34 = load i32, i32* @EMPTY_DIR_SIZE_V1, align 4
  %35 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = sub nsw i32 %34, %35
  %37 = call i32 @put_deh_location(%struct.reiserfs_de_head* %33, i32 %36)
  %38 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %39 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %38, i64 0
  %40 = call i32 @mark_de_visible(%struct.reiserfs_de_head* %39)
  %41 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %42 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %41, i64 1
  %43 = load i32, i32* @DOT_DOT_OFFSET, align 4
  %44 = call i32 @put_deh_offset(%struct.reiserfs_de_head* %42, i32 %43)
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %47 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %46, i64 1
  %48 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %51 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %50, i64 1
  %52 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %54 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %53, i64 1
  %55 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %57 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %56, i64 1
  %58 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %59 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %58, i64 0
  %60 = call i32 @deh_location(%struct.reiserfs_de_head* %59)
  %61 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %62 = sub nsw i32 %60, %61
  %63 = call i32 @put_deh_location(%struct.reiserfs_de_head* %57, i32 %62)
  %64 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %65 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %64, i64 1
  %66 = call i32 @mark_de_visible(%struct.reiserfs_de_head* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %69 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %68, i64 0
  %70 = call i32 @deh_location(%struct.reiserfs_de_head* %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = call i32 @memcpy(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %76 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %75, i64 1
  %77 = call i32 @deh_location(%struct.reiserfs_de_head* %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  %80 = call i32 @memcpy(i8* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_deh_offset(%struct.reiserfs_de_head*, i32) #1

declare dso_local i32 @put_deh_location(%struct.reiserfs_de_head*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mark_de_visible(%struct.reiserfs_de_head*) #1

declare dso_local i32 @deh_location(%struct.reiserfs_de_head*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
