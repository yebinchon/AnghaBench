; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_objfile_to_front.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_objfile_to_front.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.objfile* }

@object_files = common dso_local global %struct.objfile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @objfile_to_front(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca %struct.objfile**, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  store %struct.objfile** @object_files, %struct.objfile*** %3, align 8
  br label %4

4:                                                ; preds = %23, %1
  %5 = load %struct.objfile**, %struct.objfile*** %3, align 8
  %6 = load %struct.objfile*, %struct.objfile** %5, align 8
  %7 = icmp ne %struct.objfile* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %4
  %9 = load %struct.objfile**, %struct.objfile*** %3, align 8
  %10 = load %struct.objfile*, %struct.objfile** %9, align 8
  %11 = load %struct.objfile*, %struct.objfile** %2, align 8
  %12 = icmp eq %struct.objfile* %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.objfile*, %struct.objfile** %2, align 8
  %15 = getelementptr inbounds %struct.objfile, %struct.objfile* %14, i32 0, i32 0
  %16 = load %struct.objfile*, %struct.objfile** %15, align 8
  %17 = load %struct.objfile**, %struct.objfile*** %3, align 8
  store %struct.objfile* %16, %struct.objfile** %17, align 8
  %18 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  %19 = load %struct.objfile*, %struct.objfile** %2, align 8
  %20 = getelementptr inbounds %struct.objfile, %struct.objfile* %19, i32 0, i32 0
  store %struct.objfile* %18, %struct.objfile** %20, align 8
  %21 = load %struct.objfile*, %struct.objfile** %2, align 8
  store %struct.objfile* %21, %struct.objfile** @object_files, align 8
  br label %27

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.objfile**, %struct.objfile*** %3, align 8
  %25 = load %struct.objfile*, %struct.objfile** %24, align 8
  %26 = getelementptr inbounds %struct.objfile, %struct.objfile* %25, i32 0, i32 0
  store %struct.objfile** %26, %struct.objfile*** %3, align 8
  br label %4

27:                                               ; preds = %13, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
