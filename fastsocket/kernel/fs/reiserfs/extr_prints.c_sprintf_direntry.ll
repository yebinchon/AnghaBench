; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_direntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_prints.c_sprintf_direntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_dir_entry = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"\22%s\22==>[%d %d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.reiserfs_dir_entry*)* @sprintf_direntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprintf_direntry(i8* %0, %struct.reiserfs_dir_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.reiserfs_dir_entry*, align 8
  %5 = alloca [20 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.reiserfs_dir_entry* %1, %struct.reiserfs_dir_entry** %4, align 8
  %6 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %7 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %8 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %11 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 19
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %17 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ 19, %14 ], [ %18, %15 ]
  %21 = call i32 @memcpy(i8* %6, i32 %9, i32 %20)
  %22 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %23 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 19
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %29 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %31

31:                                               ; preds = %27, %26
  %32 = phi i32 [ 19, %26 ], [ %30, %27 ]
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 %33
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %37 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %38 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %4, align 8
  %41 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sprintf(i8* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39, i32 %42)
  ret void
}

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
