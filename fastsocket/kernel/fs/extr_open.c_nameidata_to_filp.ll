; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_open.c_nameidata_to_filp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_open.c_nameidata_to_filp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.nameidata = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.file* }
%struct.cred = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @nameidata_to_filp(%struct.nameidata* %0) #0 {
  %2 = alloca %struct.nameidata*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %2, align 8
  %5 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %5, %struct.cred** %3, align 8
  %6 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %7 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %10, %struct.file** %4, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.cred*, %struct.cred** %3, align 8
  %27 = call %struct.file* @__dentry_open(i32 %20, i32 %24, %struct.file* %25, i32* null, %struct.cred* %26)
  store %struct.file* %27, %struct.file** %4, align 8
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %29, i32 0, i32 0
  %31 = call i32 @path_put(%struct.TYPE_8__* %30)
  br label %32

32:                                               ; preds = %28, %16
  %33 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %33
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.file* @__dentry_open(i32, i32, %struct.file*, i32*, %struct.cred*) #1

declare dso_local i32 @path_put(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
