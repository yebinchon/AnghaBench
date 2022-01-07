; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_abbrev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_lookup_abbrev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abbrev_info = type { i32, %struct.abbrev_info* }

@ABBREV_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.abbrev_info* (i32, %struct.abbrev_info**)* @lookup_abbrev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.abbrev_info* @lookup_abbrev(i32 %0, %struct.abbrev_info** %1) #0 {
  %3 = alloca %struct.abbrev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.abbrev_info**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.abbrev_info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.abbrev_info** %1, %struct.abbrev_info*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ABBREV_HASH_SIZE, align 4
  %10 = urem i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.abbrev_info**, %struct.abbrev_info*** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.abbrev_info*, %struct.abbrev_info** %11, i64 %13
  %15 = load %struct.abbrev_info*, %struct.abbrev_info** %14, align 8
  store %struct.abbrev_info* %15, %struct.abbrev_info** %7, align 8
  br label %16

16:                                               ; preds = %31, %2
  %17 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %18 = icmp ne %struct.abbrev_info* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %21 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  store %struct.abbrev_info* %26, %struct.abbrev_info** %3, align 8
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.abbrev_info*, %struct.abbrev_info** %7, align 8
  %29 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %28, i32 0, i32 1
  %30 = load %struct.abbrev_info*, %struct.abbrev_info** %29, align 8
  store %struct.abbrev_info* %30, %struct.abbrev_info** %7, align 8
  br label %31

31:                                               ; preds = %27
  br label %16

32:                                               ; preds = %16
  store %struct.abbrev_info* null, %struct.abbrev_info** %3, align 8
  br label %33

33:                                               ; preds = %32, %25
  %34 = load %struct.abbrev_info*, %struct.abbrev_info** %3, align 8
  ret %struct.abbrev_info* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
