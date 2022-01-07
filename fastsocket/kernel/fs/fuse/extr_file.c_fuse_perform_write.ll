; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_perform_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_file.c_fuse_perform_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iov_iter = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.address_space*, %struct.iov_iter*, i64)* @fuse_perform_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_perform_write(%struct.file* %0, %struct.address_space* %1, %struct.iov_iter* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fuse_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.fuse_req*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.address_space* %1, %struct.address_space** %7, align 8
  store %struct.iov_iter* %2, %struct.iov_iter** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.address_space*, %struct.address_space** %7, align 8
  %19 = getelementptr inbounds %struct.address_space, %struct.address_space* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %10, align 8
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %21)
  store %struct.fuse_conn* %22, %struct.fuse_conn** %11, align 8
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call i64 @is_bad_inode(%struct.inode* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i64, i64* @EIO, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %117

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %96, %29
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %33 = call i64 @iov_iter_count(%struct.iov_iter* %32)
  %34 = call i32 @fuse_wr_pages(i64 %31, i64 %33)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %36 = load i32, i32* %16, align 4
  %37 = call %struct.fuse_req* @fuse_get_req(%struct.fuse_conn* %35, i32 %36)
  store %struct.fuse_req* %37, %struct.fuse_req** %14, align 8
  %38 = load %struct.fuse_req*, %struct.fuse_req** %14, align 8
  %39 = call i64 @IS_ERR(%struct.fuse_req* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.fuse_req*, %struct.fuse_req** %14, align 8
  %43 = call i32 @PTR_ERR(%struct.fuse_req* %42)
  store i32 %43, i32* %12, align 4
  br label %98

44:                                               ; preds = %30
  %45 = load %struct.fuse_req*, %struct.fuse_req** %14, align 8
  %46 = load %struct.address_space*, %struct.address_space** %7, align 8
  %47 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @fuse_fill_write_pages(%struct.fuse_req* %45, %struct.address_space* %46, %struct.iov_iter* %47, i64 %48)
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %15, align 8
  %51 = icmp ule i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i64, i64* %15, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %12, align 4
  br label %85

55:                                               ; preds = %44
  %56 = load %struct.fuse_req*, %struct.fuse_req** %14, align 8
  %57 = load %struct.file*, %struct.file** %6, align 8
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i64 @fuse_send_write_pages(%struct.fuse_req* %56, %struct.file* %57, %struct.inode* %58, i64 %59, i64 %60)
  store i64 %61, i64* %17, align 8
  %62 = load %struct.fuse_req*, %struct.fuse_req** %14, align 8
  %63 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %55
  %70 = load i64, i64* %17, align 8
  %71 = load i64, i64* %13, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %13, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %17, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i64, i64* @EIO, align 8
  %81 = sub i64 0, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %79, %69
  br label %84

84:                                               ; preds = %83, %55
  br label %85

85:                                               ; preds = %84, %52
  %86 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %87 = load %struct.fuse_req*, %struct.fuse_req** %14, align 8
  %88 = call i32 @fuse_put_request(%struct.fuse_conn* %86, %struct.fuse_req* %87)
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %94 = call i64 @iov_iter_count(%struct.iov_iter* %93)
  %95 = icmp ne i64 %94, 0
  br label %96

96:                                               ; preds = %92, %89
  %97 = phi i1 [ false, %89 ], [ %95, %92 ]
  br i1 %97, label %30, label %98

98:                                               ; preds = %96, %41
  %99 = load i64, i64* %13, align 8
  %100 = icmp ugt i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load %struct.inode*, %struct.inode** %10, align 8
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @fuse_write_update_size(%struct.inode* %102, i64 %103)
  br label %105

105:                                              ; preds = %101, %98
  %106 = load %struct.inode*, %struct.inode** %10, align 8
  %107 = call i32 @fuse_invalidate_attr(%struct.inode* %106)
  %108 = load i64, i64* %13, align 8
  %109 = icmp ugt i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i64, i64* %13, align 8
  br label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi i64 [ %111, %110 ], [ %114, %112 ]
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %115, %26
  %118 = load i64, i64* %5, align 8
  ret i64 %118
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @fuse_wr_pages(i64, i64) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local %struct.fuse_req* @fuse_get_req(%struct.fuse_conn*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i64 @fuse_fill_write_pages(%struct.fuse_req*, %struct.address_space*, %struct.iov_iter*, i64) #1

declare dso_local i64 @fuse_send_write_pages(%struct.fuse_req*, %struct.file*, %struct.inode*, i64, i64) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_write_update_size(%struct.inode*, i64) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
