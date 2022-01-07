; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_objfile_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objfiles.c_objfile_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i64, i8** }
%struct.objfile_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @objfile_data(%struct.objfile* %0, %struct.objfile_data* %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca %struct.objfile_data*, align 8
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store %struct.objfile_data* %1, %struct.objfile_data** %4, align 8
  %5 = load %struct.objfile_data*, %struct.objfile_data** %4, align 8
  %6 = getelementptr inbounds %struct.objfile_data, %struct.objfile_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.objfile*, %struct.objfile** %3, align 8
  %9 = getelementptr inbounds %struct.objfile, %struct.objfile* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @gdb_assert(i32 %12)
  %14 = load %struct.objfile*, %struct.objfile** %3, align 8
  %15 = getelementptr inbounds %struct.objfile, %struct.objfile* %14, i32 0, i32 1
  %16 = load i8**, i8*** %15, align 8
  %17 = load %struct.objfile_data*, %struct.objfile_data** %4, align 8
  %18 = getelementptr inbounds %struct.objfile_data, %struct.objfile_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8*, i8** %16, i64 %19
  %21 = load i8*, i8** %20, align 8
  ret i8* %21
}

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
