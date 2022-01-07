; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_splice_actor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_vfs.c_nfsd_splice_actor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, %struct.TYPE_5__*, %struct.page* }
%struct.TYPE_5__ = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)* }
%struct.page = type { i32 }
%struct.splice_desc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.svc_rqst* }
%struct.svc_rqst = type { i32, %struct.TYPE_6__, %struct.page** }
%struct.TYPE_6__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* @nfsd_splice_actor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_splice_actor(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca %struct.splice_desc*, align 8
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %6, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %7, align 8
  %13 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %14 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %15, align 8
  store %struct.svc_rqst* %16, %struct.svc_rqst** %8, align 8
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %18 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %17, i32 0, i32 2
  %19 = load %struct.page**, %struct.page*** %18, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %21 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.page*, %struct.page** %19, i64 %23
  store %struct.page** %24, %struct.page*** %9, align 8
  %25 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %25, i32 0, i32 2
  %27 = load %struct.page*, %struct.page** %26, align 8
  store %struct.page* %27, %struct.page** %10, align 8
  %28 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %31, align 8
  %33 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %34 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %35 = call i32 %32(%struct.pipe_inode_info* %33, %struct.pipe_buffer* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  br label %112

41:                                               ; preds = %3
  %42 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %43 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %46 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %41
  %51 = load %struct.page*, %struct.page** %10, align 8
  %52 = call i32 @get_page(%struct.page* %51)
  %53 = load %struct.page**, %struct.page*** %9, align 8
  %54 = load %struct.page*, %struct.page** %53, align 8
  %55 = call i32 @put_page(%struct.page* %54)
  %56 = load %struct.page*, %struct.page** %10, align 8
  %57 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page* %56, %struct.page** %57, align 8
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %66 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %70 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  br label %109

72:                                               ; preds = %41
  %73 = load %struct.page*, %struct.page** %10, align 8
  %74 = load %struct.page**, %struct.page*** %9, align 8
  %75 = getelementptr inbounds %struct.page*, %struct.page** %74, i64 -1
  %76 = load %struct.page*, %struct.page** %75, align 8
  %77 = icmp ne %struct.page* %73, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %72
  %79 = load %struct.page*, %struct.page** %10, align 8
  %80 = call i32 @get_page(%struct.page* %79)
  %81 = load %struct.page**, %struct.page*** %9, align 8
  %82 = load %struct.page*, %struct.page** %81, align 8
  %83 = icmp ne %struct.page* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.page**, %struct.page*** %9, align 8
  %86 = load %struct.page*, %struct.page** %85, align 8
  %87 = call i32 @put_page(%struct.page* %86)
  br label %88

88:                                               ; preds = %84, %78
  %89 = load %struct.page*, %struct.page** %10, align 8
  %90 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page* %89, %struct.page** %90, align 8
  %91 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %92 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %97 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %95
  store i64 %100, i64* %98, align 8
  br label %108

101:                                              ; preds = %72
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %104 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %102
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %101, %88
  br label %109

109:                                              ; preds = %108, %50
  %110 = load i64, i64* %11, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %109, %39
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
