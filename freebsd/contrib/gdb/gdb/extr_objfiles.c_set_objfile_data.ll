; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_set_objfile_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_set_objfile_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i64, i8** }
%struct.objfile_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_objfile_data(%struct.objfile* %0, %struct.objfile_data* %1, i8* %2) #0 {
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.objfile_data*, align 8
  %6 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store %struct.objfile_data* %1, %struct.objfile_data** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.objfile_data*, %struct.objfile_data** %5, align 8
  %8 = getelementptr inbounds %struct.objfile_data, %struct.objfile_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.objfile*, %struct.objfile** %4, align 8
  %11 = getelementptr inbounds %struct.objfile, %struct.objfile* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gdb_assert(i32 %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.objfile*, %struct.objfile** %4, align 8
  %18 = getelementptr inbounds %struct.objfile, %struct.objfile* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = load %struct.objfile_data*, %struct.objfile_data** %5, align 8
  %21 = getelementptr inbounds %struct.objfile_data, %struct.objfile_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8*, i8** %19, i64 %22
  store i8* %16, i8** %23, align 8
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
