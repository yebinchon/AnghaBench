; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_dir.c_make_empty_dir_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_dir.c_make_empty_dir_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_de_head = type { i64, i8*, i8* }

@EMPTY_DIR_SIZE = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@DOT_DOT_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_empty_dir_item(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
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
  %13 = load i32, i32* @EMPTY_DIR_SIZE, align 4
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
  %34 = load i32, i32* @EMPTY_DIR_SIZE, align 4
  %35 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @ROUND_UP(i32 %35)
  %37 = sub nsw i32 %34, %36
  %38 = call i32 @put_deh_location(%struct.reiserfs_de_head* %33, i32 %37)
  %39 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %40 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %39, i64 0
  %41 = call i32 @mark_de_visible(%struct.reiserfs_de_head* %40)
  %42 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %43 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %42, i64 1
  %44 = load i32, i32* @DOT_DOT_OFFSET, align 4
  %45 = call i32 @put_deh_offset(%struct.reiserfs_de_head* %43, i32 %44)
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %48 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %47, i64 1
  %49 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %52 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %51, i64 1
  %53 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %55 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %54, i64 1
  %56 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  %57 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %58 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %57, i64 1
  %59 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %60 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %59, i64 0
  %61 = call i32 @deh_location(%struct.reiserfs_de_head* %60)
  %62 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %63 = call i32 @ROUND_UP(i32 %62)
  %64 = sub nsw i32 %61, %63
  %65 = call i32 @put_deh_location(%struct.reiserfs_de_head* %58, i32 %64)
  %66 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %67 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %66, i64 1
  %68 = call i32 @mark_de_visible(%struct.reiserfs_de_head* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %71 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %70, i64 0
  %72 = call i32 @deh_location(%struct.reiserfs_de_head* %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  %75 = call i32 @memcpy(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %11, align 8
  %78 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %77, i64 1
  %79 = call i32 @deh_location(%struct.reiserfs_de_head* %78)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %76, i64 %80
  %82 = call i32 @memcpy(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_deh_offset(%struct.reiserfs_de_head*, i32) #1

declare dso_local i32 @put_deh_location(%struct.reiserfs_de_head*, i32) #1

declare dso_local i32 @ROUND_UP(i32) #1

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
