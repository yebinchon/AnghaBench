; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dump_meta_lvb_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dump_meta_lvb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32 }
%struct.ocfs2_meta_lvb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"LVB information for %s (called from %s:%u):\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"version: %u, clusters: %u, generation: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"size: %llu, uid %u, gid %u, mode 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"nlink %u, atime_packed 0x%llx, ctime_packed 0x%llx, mtime_packed 0x%llx iattr 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, %struct.ocfs2_lock_res*)* @ocfs2_dump_meta_lvb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_dump_meta_lvb_info(i32 %0, i8* %1, i32 %2, %struct.ocfs2_lock_res* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_lock_res*, align 8
  %9 = alloca %struct.ocfs2_meta_lvb*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ocfs2_lock_res* %3, %struct.ocfs2_lock_res** %8, align 8
  %10 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %11 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %10, i32 0, i32 1
  %12 = call %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32* %11)
  store %struct.ocfs2_meta_lvb* %12, %struct.ocfs2_meta_lvb** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %8, align 8
  %15 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i32, i8*, i64, ...) @mlog(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %17, i8* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %23 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %27 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  %30 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %31 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be32_to_cpu(i32 %32)
  %34 = call i32 (i32, i8*, i64, ...) @mlog(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %25, i32 %29, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %37 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be64_to_cpu(i32 %38)
  %40 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %41 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %45 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  %48 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %49 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @be16_to_cpu(i32 %50)
  %52 = call i32 (i32, i8*, i64, ...) @mlog(i32 %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %39, i32 %43, i32 %47, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %55 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be16_to_cpu(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %60 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @be64_to_cpu(i32 %61)
  %63 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %64 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @be64_to_cpu(i32 %65)
  %67 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %68 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @be64_to_cpu(i32 %69)
  %71 = load %struct.ocfs2_meta_lvb*, %struct.ocfs2_meta_lvb** %9, align 8
  %72 = getelementptr inbounds %struct.ocfs2_meta_lvb, %struct.ocfs2_meta_lvb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @be32_to_cpu(i32 %73)
  %75 = call i32 (i32, i8*, i64, ...) @mlog(i32 %53, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i64 %58, i64 %62, i64 %66, i64 %70, i32 %74)
  ret void
}

declare dso_local %struct.ocfs2_meta_lvb* @ocfs2_dlm_lvb(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
