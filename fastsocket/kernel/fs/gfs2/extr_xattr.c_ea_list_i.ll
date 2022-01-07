; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_list_i.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_list_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i32, i32 }
%struct.ea_list = type { i64, %struct.gfs2_ea_request* }
%struct.gfs2_ea_request = type { i64, i64 }

@GFS2_EATYPE_UNUSED = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"user.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"system.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"security.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)* @ea_list_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_list_i(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_ea_header*, align 8
  %10 = alloca %struct.gfs2_ea_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ea_list*, align 8
  %13 = alloca %struct.gfs2_ea_request*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header** %9, align 8
  store %struct.gfs2_ea_header* %3, %struct.gfs2_ea_header** %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.ea_list*
  store %struct.ea_list* %19, %struct.ea_list** %12, align 8
  %20 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %21 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %20, i32 0, i32 1
  %22 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %21, align 8
  store %struct.gfs2_ea_request* %22, %struct.gfs2_ea_request** %13, align 8
  %23 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %24 = call i32 @gfs2_ea_strlen(%struct.gfs2_ea_header* %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %26 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GFS2_EATYPE_UNUSED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %107

31:                                               ; preds = %5
  %32 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %33 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %31
  store i8* null, i8** %15, align 8
  store i32 0, i32* %16, align 4
  store i8 0, i8* %17, align 1
  %37 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %38 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %44 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @ERANGE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %107

50:                                               ; preds = %36
  %51 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %52 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %57 [
    i32 128, label %54
    i32 129, label %55
    i32 130, label %56
  ]

54:                                               ; preds = %50
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  store i32 5, i32* %16, align 4
  br label %57

55:                                               ; preds = %50
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  store i32 7, i32* %16, align 4
  br label %57

56:                                               ; preds = %50
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  store i32 9, i32* %16, align 4
  br label %57

57:                                               ; preds = %50, %56, %55, %54
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  %62 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %63 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %66 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load i8*, i8** %15, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @memcpy(i64 %68, i8* %69, i32 %70)
  %72 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %73 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %76 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = load i32, i32* %16, align 4
  %80 = zext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %83 = call i8* @GFS2_EA2NAME(%struct.gfs2_ea_header* %82)
  %84 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %85 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i64 %81, i8* %83, i32 %86)
  %88 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  %89 = getelementptr inbounds %struct.gfs2_ea_request, %struct.gfs2_ea_request* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %92 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load i32, i32* %14, align 4
  %96 = zext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = sub nsw i64 %97, 1
  %99 = call i32 @memcpy(i64 %98, i8* %17, i32 1)
  br label %100

100:                                              ; preds = %57, %31
  %101 = load i32, i32* %14, align 4
  %102 = zext i32 %101 to i64
  %103 = load %struct.ea_list*, %struct.ea_list** %12, align 8
  %104 = getelementptr inbounds %struct.ea_list, %struct.ea_list* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, %102
  store i64 %106, i64* %104, align 8
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %100, %47, %30
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @gfs2_ea_strlen(%struct.gfs2_ea_header*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i8* @GFS2_EA2NAME(%struct.gfs2_ea_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
