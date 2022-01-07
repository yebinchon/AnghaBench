; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_lookup_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qstr = type { i64 }
%struct.fuse_entry_out = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_req = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@FUSE_NAME_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_lookup_name(%struct.super_block* %0, i32 %1, %struct.qstr* %2, %struct.fuse_entry_out* %3, %struct.inode** %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.fuse_entry_out*, align 8
  %10 = alloca %struct.inode**, align 8
  %11 = alloca %struct.fuse_conn*, align 8
  %12 = alloca %struct.fuse_req*, align 8
  %13 = alloca %struct.fuse_req*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.fuse_entry_out* %3, %struct.fuse_entry_out** %9, align 8
  store %struct.inode** %4, %struct.inode*** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %16)
  store %struct.fuse_conn* %17, %struct.fuse_conn** %11, align 8
  %18 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* null, %struct.inode** %18, align 8
  %19 = load i32, i32* @ENAMETOOLONG, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %15, align 4
  %21 = load %struct.qstr*, %struct.qstr** %8, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FUSE_NAME_MAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %124

27:                                               ; preds = %5
  %28 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %29 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %28)
  store %struct.fuse_req* %29, %struct.fuse_req** %12, align 8
  %30 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %31 = call i32 @PTR_ERR(%struct.fuse_req* %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %33 = call i64 @IS_ERR(%struct.fuse_req* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %124

36:                                               ; preds = %27
  %37 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %38 = call %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn* %37)
  store %struct.fuse_req* %38, %struct.fuse_req** %13, align 8
  %39 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %40 = call i32 @PTR_ERR(%struct.fuse_req* %39)
  store i32 %40, i32* %15, align 4
  %41 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %42 = call i64 @IS_ERR(%struct.fuse_req* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %46 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %47 = call i32 @fuse_put_request(%struct.fuse_conn* %45, %struct.fuse_req* %46)
  br label %124

48:                                               ; preds = %36
  %49 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %50 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %52 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.qstr*, %struct.qstr** %8, align 8
  %55 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %56 = call i32 @fuse_lookup_init(%struct.fuse_conn* %51, %struct.fuse_req* %52, i32 %53, %struct.qstr* %54, %struct.fuse_entry_out* %55)
  %57 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %58 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %59 = call i32 @fuse_request_send(%struct.fuse_conn* %57, %struct.fuse_req* %58)
  %60 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %61 = getelementptr inbounds %struct.fuse_req, %struct.fuse_req* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  %65 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %66 = load %struct.fuse_req*, %struct.fuse_req** %12, align 8
  %67 = call i32 @fuse_put_request(%struct.fuse_conn* %65, %struct.fuse_req* %66)
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %48
  %71 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %72 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70, %48
  br label %120

76:                                               ; preds = %70
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %15, align 4
  %79 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %80 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %120

84:                                               ; preds = %76
  %85 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %86 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @fuse_valid_type(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %120

92:                                               ; preds = %84
  %93 = load %struct.super_block*, %struct.super_block** %6, align 8
  %94 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %95 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %98 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %101 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %100, i32 0, i32 1
  %102 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %103 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %102)
  %104 = load i32, i32* %14, align 4
  %105 = call %struct.inode* @fuse_iget(%struct.super_block* %93, i32 %96, i32 %99, %struct.TYPE_6__* %101, i32 %103, i32 %104)
  %106 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* %105, %struct.inode** %106, align 8
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %15, align 4
  %109 = load %struct.inode**, %struct.inode*** %10, align 8
  %110 = load %struct.inode*, %struct.inode** %109, align 8
  %111 = icmp ne %struct.inode* %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %92
  %113 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %114 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %115 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %116 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @fuse_send_forget(%struct.fuse_conn* %113, %struct.fuse_req* %114, i32 %117, i32 1)
  br label %124

119:                                              ; preds = %92
  store i32 0, i32* %15, align 4
  br label %120

120:                                              ; preds = %119, %91, %83, %75
  %121 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %122 = load %struct.fuse_req*, %struct.fuse_req** %13, align 8
  %123 = call i32 @fuse_put_request(%struct.fuse_conn* %121, %struct.fuse_req* %122)
  br label %124

124:                                              ; preds = %120, %112, %44, %35, %26
  %125 = load i32, i32* %15, align 4
  ret i32 %125
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local %struct.fuse_req* @fuse_get_req_nopages(%struct.fuse_conn*) #1

declare dso_local i32 @PTR_ERR(%struct.fuse_req*) #1

declare dso_local i64 @IS_ERR(%struct.fuse_req*) #1

declare dso_local i32 @fuse_put_request(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_lookup_init(%struct.fuse_conn*, %struct.fuse_req*, i32, %struct.qstr*, %struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_request_send(%struct.fuse_conn*, %struct.fuse_req*) #1

declare dso_local i32 @fuse_valid_type(i32) #1

declare dso_local %struct.inode* @fuse_iget(%struct.super_block*, i32, i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @entry_attr_timeout(%struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_send_forget(%struct.fuse_conn*, %struct.fuse_req*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
