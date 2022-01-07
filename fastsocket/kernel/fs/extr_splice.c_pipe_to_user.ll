; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_pipe_to_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_splice.c_pipe_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_inode_info = type { i32 }
%struct.pipe_buffer = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)* }
%struct.splice_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, %struct.splice_desc*)* @pipe_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_to_user(%struct.pipe_inode_info* %0, %struct.pipe_buffer* %1, %struct.splice_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_inode_info*, align 8
  %6 = alloca %struct.pipe_buffer*, align 8
  %7 = alloca %struct.splice_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.pipe_inode_info* %0, %struct.pipe_inode_info** %5, align 8
  store %struct.pipe_buffer* %1, %struct.pipe_buffer** %6, align 8
  store %struct.splice_desc* %2, %struct.splice_desc** %7, align 8
  %10 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %11 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %13, align 8
  %15 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %16 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %17 = call i32 %14(%struct.pipe_inode_info* %15, %struct.pipe_buffer* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %124

23:                                               ; preds = %3
  %24 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %25 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %29 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fault_in_pages_writeable(i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %23
  %34 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)** %37, align 8
  %39 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %40 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %41 = call i8* %38(%struct.pipe_inode_info* %39, %struct.pipe_buffer* %40, i32 1)
  store i8* %41, i8** %8, align 8
  %42 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %43 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %53 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__copy_to_user_inatomic(i32 %45, i8* %51, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)** %59, align 8
  %61 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %62 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 %60(%struct.pipe_inode_info* %61, %struct.pipe_buffer* %62, i8* %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %33
  %68 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %69 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %9, align 4
  br label %112

71:                                               ; preds = %33
  br label %72

72:                                               ; preds = %71, %23
  %73 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)** %76, align 8
  %78 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %79 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %80 = call i8* %77(%struct.pipe_inode_info* %78, %struct.pipe_buffer* %79, i32 0)
  store i8* %80, i8** %8, align 8
  %81 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %82 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  %84 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %85 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %90 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %95 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @copy_to_user(i32 %87, i8* %93, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %72
  %100 = load i32, i32* @EFAULT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %99, %72
  %103 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %104 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %103, i32 0, i32 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)** %106, align 8
  %108 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %5, align 8
  %109 = load %struct.pipe_buffer*, %struct.pipe_buffer** %6, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 %107(%struct.pipe_inode_info* %108, %struct.pipe_buffer* %109, i8* %110)
  br label %112

112:                                              ; preds = %102, %67
  %113 = load i32, i32* %9, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.splice_desc*, %struct.splice_desc** %7, align 8
  %118 = getelementptr inbounds %struct.splice_desc, %struct.splice_desc* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %116
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %115, %112
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %122, %21
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fault_in_pages_writeable(i32, i32) #1

declare dso_local i32 @__copy_to_user_inatomic(i32, i8*, i32) #1

declare dso_local i64 @copy_to_user(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
