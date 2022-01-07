; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_find_group_reloc_table_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_find_group_reloc_table_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_reloc_table_entry = type { i32 }

@group_reloc_table = common dso_local global %struct.group_reloc_table_entry* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.group_reloc_table_entry**)* @find_group_reloc_table_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_reloc_table_entry(i8** %0, %struct.group_reloc_table_entry** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.group_reloc_table_entry**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.group_reloc_table_entry** %1, %struct.group_reloc_table_entry*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %55, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.group_reloc_table_entry*, %struct.group_reloc_table_entry** @group_reloc_table, align 8
  %11 = call i32 @ARRAY_SIZE(%struct.group_reloc_table_entry* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %8
  %14 = load %struct.group_reloc_table_entry*, %struct.group_reloc_table_entry** @group_reloc_table, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.group_reloc_table_entry, %struct.group_reloc_table_entry* %14, i64 %16
  %18 = getelementptr inbounds %struct.group_reloc_table_entry, %struct.group_reloc_table_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlen(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.group_reloc_table_entry*, %struct.group_reloc_table_entry** @group_reloc_table, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.group_reloc_table_entry, %struct.group_reloc_table_entry* %21, i64 %23
  %25 = getelementptr inbounds %struct.group_reloc_table_entry, %struct.group_reloc_table_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @strncasecmp(i32 %26, i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %13
  %33 = load i8**, i8*** %4, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 58
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load %struct.group_reloc_table_entry*, %struct.group_reloc_table_entry** @group_reloc_table, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.group_reloc_table_entry, %struct.group_reloc_table_entry* %42, i64 %44
  %46 = load %struct.group_reloc_table_entry**, %struct.group_reloc_table_entry*** %5, align 8
  store %struct.group_reloc_table_entry* %45, %struct.group_reloc_table_entry** %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i8**, i8*** %4, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %49, align 8
  %53 = load i32, i32* @SUCCESS, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %32, %13
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %8

58:                                               ; preds = %8
  %59 = load i32, i32* @FAIL, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %41
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @ARRAY_SIZE(%struct.group_reloc_table_entry*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncasecmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
