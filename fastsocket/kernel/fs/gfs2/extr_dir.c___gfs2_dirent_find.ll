; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c___gfs2_dirent_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c___gfs2_dirent_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_dirent = type { i32, i32 }
%struct.qstr = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_dirent*, %struct.qstr*, i32)* @__gfs2_dirent_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gfs2_dirent_find(%struct.gfs2_dirent* %0, %struct.qstr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_dirent*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32, align 4
  store %struct.gfs2_dirent* %0, %struct.gfs2_dirent** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %9 = call i32 @gfs2_dirent_sentinel(%struct.gfs2_dirent* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %3
  %12 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %13 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @be32_to_cpu(i32 %14)
  %16 = load %struct.qstr*, %struct.qstr** %6, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %11
  %21 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %22 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @be16_to_cpu(i32 %23)
  %25 = load %struct.qstr*, %struct.qstr** %6, align 8
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %20
  %30 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_dirent, %struct.gfs2_dirent* %30, i64 1
  %32 = load %struct.qstr*, %struct.qstr** %6, align 8
  %33 = getelementptr inbounds %struct.qstr, %struct.qstr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qstr*, %struct.qstr** %6, align 8
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @memcmp(%struct.gfs2_dirent* %31, i32 %34, i64 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %29, %20, %11, %3
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %40
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @gfs2_dirent_sentinel(%struct.gfs2_dirent*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @memcmp(%struct.gfs2_dirent*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
