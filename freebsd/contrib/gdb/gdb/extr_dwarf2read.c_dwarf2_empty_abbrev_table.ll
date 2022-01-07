; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_empty_abbrev_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_empty_abbrev_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abbrev_info = type { %struct.abbrev_info*, %struct.abbrev_info* }

@ABBREV_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dwarf2_empty_abbrev_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_empty_abbrev_table(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.abbrev_info*, align 8
  %5 = alloca %struct.abbrev_info*, align 8
  %6 = alloca %struct.abbrev_info**, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.abbrev_info**
  store %struct.abbrev_info** %8, %struct.abbrev_info*** %6, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ABBREV_HASH_SIZE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  store %struct.abbrev_info* null, %struct.abbrev_info** %5, align 8
  %14 = load %struct.abbrev_info**, %struct.abbrev_info*** %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.abbrev_info*, %struct.abbrev_info** %14, i64 %16
  %18 = load %struct.abbrev_info*, %struct.abbrev_info** %17, align 8
  store %struct.abbrev_info* %18, %struct.abbrev_info** %4, align 8
  br label %19

19:                                               ; preds = %22, %13
  %20 = load %struct.abbrev_info*, %struct.abbrev_info** %4, align 8
  %21 = icmp ne %struct.abbrev_info* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.abbrev_info*, %struct.abbrev_info** %4, align 8
  %24 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %23, i32 0, i32 1
  %25 = load %struct.abbrev_info*, %struct.abbrev_info** %24, align 8
  store %struct.abbrev_info* %25, %struct.abbrev_info** %5, align 8
  %26 = load %struct.abbrev_info*, %struct.abbrev_info** %4, align 8
  %27 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %26, i32 0, i32 0
  %28 = load %struct.abbrev_info*, %struct.abbrev_info** %27, align 8
  %29 = call i32 @xfree(%struct.abbrev_info* %28)
  %30 = load %struct.abbrev_info*, %struct.abbrev_info** %4, align 8
  %31 = call i32 @xfree(%struct.abbrev_info* %30)
  %32 = load %struct.abbrev_info*, %struct.abbrev_info** %5, align 8
  store %struct.abbrev_info* %32, %struct.abbrev_info** %4, align 8
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.abbrev_info**, %struct.abbrev_info*** %6, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.abbrev_info*, %struct.abbrev_info** %34, i64 %36
  store %struct.abbrev_info* null, %struct.abbrev_info** %37, align 8
  br label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %9

41:                                               ; preds = %9
  ret void
}

declare dso_local i32 @xfree(%struct.abbrev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
