; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_find_refcount_rec_in_rl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_find_refcount_rec_in_rl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_caching_info = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_refcount_rec = type { i8*, i32, i64 }
%struct.ocfs2_refcount_block = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ocfs2_refcount_rec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_caching_info*, %struct.buffer_head*, i64, i32, %struct.ocfs2_refcount_rec*, i32*)* @ocfs2_find_refcount_rec_in_rl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_find_refcount_rec_in_rl(%struct.ocfs2_caching_info* %0, %struct.buffer_head* %1, i64 %2, i32 %3, %struct.ocfs2_refcount_rec* %4, i32* %5) #0 {
  %7 = alloca %struct.ocfs2_caching_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ocfs2_refcount_rec*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_refcount_block*, align 8
  %15 = alloca %struct.ocfs2_refcount_rec*, align 8
  store %struct.ocfs2_caching_info* %0, %struct.ocfs2_caching_info** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ocfs2_refcount_rec* %4, %struct.ocfs2_refcount_rec** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %19, %struct.ocfs2_refcount_block** %14, align 8
  store %struct.ocfs2_refcount_rec* null, %struct.ocfs2_refcount_rec** %15, align 8
  br label %20

20:                                               ; preds = %66, %6
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %23 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %20
  %29 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %30 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %31, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %32, i64 %34
  store %struct.ocfs2_refcount_rec* %35, %struct.ocfs2_refcount_rec** %15, align 8
  %36 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %15, align 8
  %37 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @le64_to_cpu(i32 %38)
  %40 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %15, align 8
  %41 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @le32_to_cpu(i8* %42)
  %44 = add nsw i64 %39, %43
  %45 = load i64, i64* %9, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %66

48:                                               ; preds = %28
  %49 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %15, align 8
  %50 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @le64_to_cpu(i32 %51)
  %53 = load i64, i64* %9, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %69

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %11, align 8
  %59 = icmp ne %struct.ocfs2_refcount_rec* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %11, align 8
  %62 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %15, align 8
  %63 = bitcast %struct.ocfs2_refcount_rec* %61 to i8*
  %64 = bitcast %struct.ocfs2_refcount_rec* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  br label %65

65:                                               ; preds = %60, %57
  br label %114

66:                                               ; preds = %47
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %20

69:                                               ; preds = %55, %20
  %70 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %11, align 8
  %71 = icmp ne %struct.ocfs2_refcount_rec* %70, null
  br i1 %71, label %72, label %113

72:                                               ; preds = %69
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @cpu_to_le64(i64 %73)
  %75 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %11, align 8
  %76 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %11, align 8
  %78 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %14, align 8
  %81 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = icmp slt i32 %79, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %72
  %87 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %15, align 8
  %88 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @le64_to_cpu(i32 %89)
  %91 = load i64, i64* %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = icmp slt i64 %90, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %86
  %97 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %15, align 8
  %98 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @le64_to_cpu(i32 %99)
  %101 = load i64, i64* %9, align 8
  %102 = sub nsw i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %11, align 8
  %106 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  br label %112

107:                                              ; preds = %86, %72
  %108 = load i32, i32* %10, align 4
  %109 = call i8* @cpu_to_le32(i32 %108)
  %110 = load %struct.ocfs2_refcount_rec*, %struct.ocfs2_refcount_rec** %11, align 8
  %111 = getelementptr inbounds %struct.ocfs2_refcount_rec, %struct.ocfs2_refcount_rec* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %107, %96
  br label %113

113:                                              ; preds = %112, %69
  br label %114

114:                                              ; preds = %113, %65
  %115 = load i32, i32* %13, align 4
  %116 = load i32*, i32** %12, align 8
  store i32 %115, i32* %116, align 4
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
