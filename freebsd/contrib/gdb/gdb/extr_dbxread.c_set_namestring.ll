; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_set_namestring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dbxread.c_set_namestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }
%struct.internal_nlist = type { i8* }

@file_string_table_offset = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"bad string table offset in symbol %d\00", align 1
@symnum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"<bad string table offset>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.objfile*, i8*)* @set_namestring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @set_namestring(%struct.objfile* %0, i8* %1) #0 {
  %3 = alloca %struct.internal_nlist, align 8
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca i8*, align 8
  %6 = getelementptr inbounds %struct.internal_nlist, %struct.internal_nlist* %3, i32 0, i32 0
  store i8* %1, i8** %6, align 8
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  %7 = getelementptr inbounds %struct.internal_nlist, %struct.internal_nlist* %3, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = load i32, i32* @file_string_table_offset, align 4
  %11 = add i32 %9, %10
  %12 = load %struct.objfile*, %struct.objfile** %4, align 8
  %13 = call i32 @DBX_STRINGTAB_SIZE(%struct.objfile* %12)
  %14 = icmp uge i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @symnum, align 4
  %17 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %28

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.internal_nlist, %struct.internal_nlist* %3, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @file_string_table_offset, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load %struct.objfile*, %struct.objfile** %4, align 8
  %25 = call i32 @DBX_STRINGTAB(%struct.objfile* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %18, %15
  %29 = load i8*, i8** %5, align 8
  ret i8* %29
}

declare dso_local i32 @DBX_STRINGTAB_SIZE(%struct.objfile*) #1

declare dso_local i32 @complaint(i32*, i8*, i32) #1

declare dso_local i32 @DBX_STRINGTAB(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
