; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_v2.c_v2r0_disk2memdqb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_quota_v2.c_v2r0_disk2memdqb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.mem_dqblk }
%struct.mem_dqblk = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.v2r0_disk_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dquot*, i8*)* @v2r0_disk2memdqb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v2r0_disk2memdqb(%struct.dquot* %0, i8* %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.v2r0_disk_dqblk*, align 8
  %6 = alloca %struct.v2r0_disk_dqblk, align 4
  %7 = alloca %struct.mem_dqblk*, align 8
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.v2r0_disk_dqblk*
  store %struct.v2r0_disk_dqblk* %9, %struct.v2r0_disk_dqblk** %5, align 8
  %10 = load %struct.dquot*, %struct.dquot** %3, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 0
  store %struct.mem_dqblk* %11, %struct.mem_dqblk** %7, align 8
  %12 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %13 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @le32_to_cpu(i32 %14)
  %16 = load %struct.mem_dqblk*, %struct.mem_dqblk** %7, align 8
  %17 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %16, i32 0, i32 7
  store i8* %15, i8** %17, align 8
  %18 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %19 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le32_to_cpu(i32 %20)
  %22 = load %struct.mem_dqblk*, %struct.mem_dqblk** %7, align 8
  %23 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %25 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le32_to_cpu(i32 %26)
  %28 = load %struct.mem_dqblk*, %struct.mem_dqblk** %7, align 8
  %29 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %31 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le64_to_cpu(i32 %32)
  %34 = load %struct.mem_dqblk*, %struct.mem_dqblk** %7, align 8
  %35 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %37 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @le32_to_cpu(i32 %38)
  %40 = call i8* @v2_qbtos(i8* %39)
  %41 = load %struct.mem_dqblk*, %struct.mem_dqblk** %7, align 8
  %42 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %44 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le32_to_cpu(i32 %45)
  %47 = call i8* @v2_qbtos(i8* %46)
  %48 = load %struct.mem_dqblk*, %struct.mem_dqblk** %7, align 8
  %49 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %51 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @le64_to_cpu(i32 %52)
  %54 = load %struct.mem_dqblk*, %struct.mem_dqblk** %7, align 8
  %55 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %5, align 8
  %57 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @le64_to_cpu(i32 %58)
  %60 = load %struct.mem_dqblk*, %struct.mem_dqblk** %7, align 8
  %61 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = call i32 @memset(%struct.v2r0_disk_dqblk* %6, i32 0, i32 32)
  %63 = call i32 @cpu_to_le64(i32 1)
  %64 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %6, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @memcmp(%struct.v2r0_disk_dqblk* %6, i8* %65, i32 32)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %2
  %69 = load %struct.mem_dqblk*, %struct.mem_dqblk** %7, align 8
  %70 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %69, i32 0, i32 0
  store i8* null, i8** %70, align 8
  br label %71

71:                                               ; preds = %68, %2
  ret void
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i8* @v2_qbtos(i8*) #1

declare dso_local i32 @memset(%struct.v2r0_disk_dqblk*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @memcmp(%struct.v2r0_disk_dqblk*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
