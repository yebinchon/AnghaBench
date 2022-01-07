; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_path_put_conditional.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_path_put_conditional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, i32 }
%struct.nameidata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path*, %struct.nameidata*)* @path_put_conditional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_put_conditional(%struct.path* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.nameidata*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %5 = load %struct.path*, %struct.path** %3, align 8
  %6 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @dput(i32 %7)
  %9 = load %struct.path*, %struct.path** %3, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %11, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.path*, %struct.path** %3, align 8
  %19 = getelementptr inbounds %struct.path, %struct.path* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @mntput(i64 %20)
  br label %22

22:                                               ; preds = %17, %2
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
