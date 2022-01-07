; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_path_to_nameidata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_path_to_nameidata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, i32 }
%struct.nameidata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path*, %struct.nameidata*)* @path_to_nameidata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_to_nameidata(%struct.path* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.nameidata*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %5 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %6 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dput(i32 %8)
  %10 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %11 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.path*, %struct.path** %3, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @mntput(i64 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.path*, %struct.path** %3, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.path*, %struct.path** %3, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  ret void
}

declare dso_local i32 @dput(i32) #1

declare dso_local i32 @mntput(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
