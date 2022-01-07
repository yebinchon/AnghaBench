; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.h_gfs2_qstr2dirent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.h_gfs2_qstr2dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32, i32, i32 }
%struct.gfs2_dirent = type { i32, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qstr*, i32, %struct.gfs2_dirent*)* @gfs2_qstr2dirent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_qstr2dirent(%struct.qstr* %0, i32 %1, %struct.gfs2_dirent* %2) #0 {
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_dirent*, align 8
  store %struct.qstr* %0, %struct.qstr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.gfs2_dirent* %2, %struct.gfs2_dirent** %6, align 8
  %7 = call i8* @cpu_to_be64(i32 0)
  %8 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %9 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i8* %7, i8** %10, align 8
  %11 = call i8* @cpu_to_be64(i32 0)
  %12 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %13 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i8* %11, i8** %14, align 8
  %15 = load %struct.qstr*, %struct.qstr** %4, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_be32(i32 %17)
  %19 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %20 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @cpu_to_be16(i32 %21)
  %23 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %24 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.qstr*, %struct.qstr** %4, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_be16(i32 %27)
  %29 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %30 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = call i8* @cpu_to_be16(i32 0)
  %32 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %33 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %35 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memset(i32 %36, i32 0, i32 4)
  %38 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %6, align 8
  %39 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %38, i64 1
  %40 = load %struct.qstr*, %struct.qstr** %4, align 8
  %41 = getelementptr inbounds %struct.qstr, %struct.qstr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qstr*, %struct.qstr** %4, align 8
  %44 = getelementptr inbounds %struct.qstr, %struct.qstr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memcpy(%struct.gfs2_dirent* %39, i32 %42, i32 %45)
  ret void
}

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.gfs2_dirent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
