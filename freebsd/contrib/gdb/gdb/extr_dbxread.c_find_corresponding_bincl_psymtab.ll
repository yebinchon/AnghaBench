; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_find_corresponding_bincl_psymtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_find_corresponding_bincl_psymtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.header_file_location = type { i32, %struct.partial_symtab*, i32 }
%struct.partial_symtab = type { i32 }

@bincl_list = common dso_local global %struct.header_file_location* null, align 8
@next_bincl = common dso_local global %struct.header_file_location* null, align 8
@symnum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.partial_symtab* (i8*, i32)* @find_corresponding_bincl_psymtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.partial_symtab* @find_corresponding_bincl_psymtab(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.partial_symtab*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.header_file_location*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.header_file_location*, %struct.header_file_location** @bincl_list, align 8
  store %struct.header_file_location* %7, %struct.header_file_location** %6, align 8
  br label %8

8:                                                ; preds = %30, %2
  %9 = load %struct.header_file_location*, %struct.header_file_location** %6, align 8
  %10 = load %struct.header_file_location*, %struct.header_file_location** @next_bincl, align 8
  %11 = icmp ult %struct.header_file_location* %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.header_file_location*, %struct.header_file_location** %6, align 8
  %14 = getelementptr inbounds %struct.header_file_location, %struct.header_file_location* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.header_file_location*, %struct.header_file_location** %6, align 8
  %21 = getelementptr inbounds %struct.header_file_location, %struct.header_file_location* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strcmp(i8* %19, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.header_file_location*, %struct.header_file_location** %6, align 8
  %27 = getelementptr inbounds %struct.header_file_location, %struct.header_file_location* %26, i32 0, i32 1
  %28 = load %struct.partial_symtab*, %struct.partial_symtab** %27, align 8
  store %struct.partial_symtab* %28, %struct.partial_symtab** %3, align 8
  br label %37

29:                                               ; preds = %18, %12
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.header_file_location*, %struct.header_file_location** %6, align 8
  %32 = getelementptr inbounds %struct.header_file_location, %struct.header_file_location* %31, i32 1
  store %struct.header_file_location* %32, %struct.header_file_location** %6, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @symnum, align 4
  %36 = call i32 @repeated_header_complaint(i8* %34, i32 %35)
  store %struct.partial_symtab* null, %struct.partial_symtab** %3, align 8
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.partial_symtab*, %struct.partial_symtab** %3, align 8
  ret %struct.partial_symtab* %38
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @repeated_header_complaint(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
