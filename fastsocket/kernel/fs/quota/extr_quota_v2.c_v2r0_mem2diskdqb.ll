; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_v2.c_v2r0_mem2diskdqb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_v2.c_v2r0_mem2diskdqb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, i32, %struct.mem_dqblk }
%struct.mem_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v2r0_disk_dqblk = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qtree_mem_dqinfo = type { i32 }
%struct.TYPE_2__ = type { %struct.qtree_mem_dqinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dquot*)* @v2r0_mem2diskdqb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v2r0_mem2diskdqb(i8* %0, %struct.dquot* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca %struct.v2r0_disk_dqblk*, align 8
  %6 = alloca %struct.mem_dqblk*, align 8
  %7 = alloca %struct.qtree_mem_dqinfo*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dquot* %1, %struct.dquot** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.v2r0_disk_dqblk*
  store %struct.v2r0_disk_dqblk* %9, %struct.v2r0_disk_dqblk** %5, align 8
  %10 = load %struct.dquot*, %struct.dquot** %4, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 3
  store %struct.mem_dqblk* %11, %struct.mem_dqblk** %6, align 8
  %12 = load %struct.dquot*, %struct.dquot** %4, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dquot*, %struct.dquot** %4, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_2__* @sb_dqinfo(i32 %14, i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %19, align 8
  store %struct.qtree_mem_dqinfo* %20, %struct.qtree_mem_dqinfo** %7, align 8
  %21 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %22 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %26 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %28 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %32 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %34 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %38 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %40 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @cpu_to_le64(i32 %41)
  %43 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %44 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %46 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @v2_stoqb(i32 %47)
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %51 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %53 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @v2_stoqb(i32 %54)
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %58 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %60 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @cpu_to_le64(i32 %61)
  %63 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %64 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %66 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_le64(i32 %67)
  %69 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %70 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.dquot*, %struct.dquot** %4, align 8
  %72 = getelementptr inbounds %struct.dquot, %struct.dquot* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %76 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %7, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @qtree_entry_unused(%struct.qtree_mem_dqinfo* %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %2
  %82 = call i8* @cpu_to_le64(i32 1)
  %83 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %84 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %2
  ret void
}

declare dso_local %struct.TYPE_2__* @sb_dqinfo(i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @v2_stoqb(i32) #1

declare dso_local i64 @qtree_entry_unused(%struct.qtree_mem_dqinfo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
