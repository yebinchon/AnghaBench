; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_name_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dir.c_ocfs2_dx_dir_name_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_dx_hinfo = type { i8*, i8* }
%struct.ocfs2_super = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i8*, i32, %struct.ocfs2_dx_hinfo*)* @ocfs2_dx_dir_name_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dx_dir_name_hash(%struct.inode* %0, i8* %1, i32 %2, %struct.ocfs2_dx_hinfo* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dx_hinfo*, align 8
  %9 = alloca %struct.ocfs2_super*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [8 x i8*], align 16
  %12 = alloca [4 x i8*], align 16
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ocfs2_dx_hinfo* %3, %struct.ocfs2_dx_hinfo** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ocfs2_super* @OCFS2_SB(i32 %15)
  store %struct.ocfs2_super* %16, %struct.ocfs2_super** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strncmp(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %20, i32 1)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %27, i32 2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %19
  %31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  store i8* null, i8** %31, align 8
  %32 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  store i8* null, i8** %32, align 16
  br label %56

33:                                               ; preds = %26, %23
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %9, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @memcpy(i8** %34, i32 %37, i32 32)
  %39 = load i8*, i8** %6, align 8
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %43, %33
  %41 = load i32, i32* %7, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i8*, i8** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i64 0, i64 0
  %47 = call i32 @str2hashbuf(i8* %44, i32 %45, i8** %46, i32 4)
  %48 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %49 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i64 0, i64 0
  %50 = call i32 @TEA_transform(i8** %48, i8** %49)
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 16
  store i32 %52, i32* %7, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 16
  store i8* %54, i8** %10, align 8
  br label %40

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %30
  %57 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %58 = load i8*, i8** %57, align 16
  %59 = load %struct.ocfs2_dx_hinfo*, %struct.ocfs2_dx_hinfo** %8, align 8
  %60 = getelementptr inbounds %struct.ocfs2_dx_hinfo, %struct.ocfs2_dx_hinfo* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.ocfs2_dx_hinfo*, %struct.ocfs2_dx_hinfo** %8, align 8
  %64 = getelementptr inbounds %struct.ocfs2_dx_hinfo, %struct.ocfs2_dx_hinfo* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  ret void
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8**, i32, i32) #1

declare dso_local i32 @str2hashbuf(i8*, i32, i8**, i32) #1

declare dso_local i32 @TEA_transform(i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
