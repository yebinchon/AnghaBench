; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_bool.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_bool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DW_DLV_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"die %llu: failed to get flag: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i64*, i32)* @die_bool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @die_bool(%struct.TYPE_4__* %0, i32 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i64*, i64** %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i64*, i64** %10, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i64 @dwarf_attrval_flag(i32 %13, i32 %14, i64* %15, i32* %17)
  %19 = load i64, i64* @DW_DLV_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @die_off(%struct.TYPE_4__* %25, i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dwarf_errmsg(i32 %30)
  %32 = call i32 @terminate(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %24, %21
  store i32 0, i32* %6, align 4
  br label %35

34:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i64 @dwarf_attrval_flag(i32, i32, i64*, i32*) #1

declare dso_local i32 @terminate(i8*, i32, i32) #1

declare dso_local i32 @die_off(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
