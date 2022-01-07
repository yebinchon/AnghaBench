; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_hpfs_fn.h_copy_de.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_hpfs_fn.h_copy_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpfs_dirent*, %struct.hpfs_dirent*)* @copy_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_de(%struct.hpfs_dirent* %0, %struct.hpfs_dirent* %1) #0 {
  %3 = alloca %struct.hpfs_dirent*, align 8
  %4 = alloca %struct.hpfs_dirent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hpfs_dirent* %0, %struct.hpfs_dirent** %3, align 8
  store %struct.hpfs_dirent* %1, %struct.hpfs_dirent** %4, align 8
  %7 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %3, align 8
  %8 = icmp ne %struct.hpfs_dirent* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %4, align 8
  %11 = icmp ne %struct.hpfs_dirent* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %33

13:                                               ; preds = %9
  %14 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %3, align 8
  %15 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %3, align 8
  %18 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %3, align 8
  %21 = bitcast %struct.hpfs_dirent* %20 to i8*
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %4, align 8
  %24 = bitcast %struct.hpfs_dirent* %23 to i8*
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = call i32 @memcpy(i8* %22, i8* %25, i32 28)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %3, align 8
  %29 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %3, align 8
  %32 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
