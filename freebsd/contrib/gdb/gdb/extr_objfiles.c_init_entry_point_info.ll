; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_init_entry_point_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_init_entry_point_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@EXEC_P = common dso_local global i32 0, align 4
@INVALID_ENTRY_POINT = common dso_local global i32 0, align 4
@INVALID_ENTRY_LOWPC = common dso_local global i8* null, align 8
@INVALID_ENTRY_HIGHPC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_entry_point_info(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %3 = load %struct.objfile*, %struct.objfile** %2, align 8
  %4 = getelementptr inbounds %struct.objfile, %struct.objfile* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @bfd_get_file_flags(i32 %5)
  %7 = load i32, i32* @EXEC_P, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.objfile*, %struct.objfile** %2, align 8
  %12 = getelementptr inbounds %struct.objfile, %struct.objfile* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @bfd_get_start_address(i32 %13)
  %15 = load %struct.objfile*, %struct.objfile** %2, align 8
  %16 = getelementptr inbounds %struct.objfile, %struct.objfile* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  store i32 %14, i32* %17, align 8
  br label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @INVALID_ENTRY_POINT, align 4
  %20 = load %struct.objfile*, %struct.objfile** %2, align 8
  %21 = getelementptr inbounds %struct.objfile, %struct.objfile* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 8
  br label %23

23:                                               ; preds = %18, %10
  %24 = load i8*, i8** @INVALID_ENTRY_LOWPC, align 8
  %25 = load %struct.objfile*, %struct.objfile** %2, align 8
  %26 = getelementptr inbounds %struct.objfile, %struct.objfile* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 5
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** @INVALID_ENTRY_HIGHPC, align 8
  %29 = load %struct.objfile*, %struct.objfile** %2, align 8
  %30 = getelementptr inbounds %struct.objfile, %struct.objfile* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i8* %28, i8** %31, align 8
  %32 = load i8*, i8** @INVALID_ENTRY_LOWPC, align 8
  %33 = load %struct.objfile*, %struct.objfile** %2, align 8
  %34 = getelementptr inbounds %struct.objfile, %struct.objfile* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** @INVALID_ENTRY_HIGHPC, align 8
  %37 = load %struct.objfile*, %struct.objfile** %2, align 8
  %38 = getelementptr inbounds %struct.objfile, %struct.objfile* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @INVALID_ENTRY_LOWPC, align 8
  %41 = load %struct.objfile*, %struct.objfile** %2, align 8
  %42 = getelementptr inbounds %struct.objfile, %struct.objfile* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** @INVALID_ENTRY_HIGHPC, align 8
  %45 = load %struct.objfile*, %struct.objfile** %2, align 8
  %46 = getelementptr inbounds %struct.objfile, %struct.objfile* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  ret void
}

declare dso_local i32 @bfd_get_file_flags(i32) #1

declare dso_local i32 @bfd_get_start_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
