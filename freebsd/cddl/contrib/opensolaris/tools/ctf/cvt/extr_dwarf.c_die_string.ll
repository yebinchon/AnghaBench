; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_dwarf.c_die_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@DW_DLV_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"die %llu: failed to get string: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i8**, i32)* @die_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @die_string(%struct.TYPE_4__* %0, i32 %1, i32 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i64 @dwarf_attrval_string(i32 %13, i32 %14, i8** %12, i32* %16)
  %18 = load i64, i64* @DW_DLV_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i8*, i8** %12, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20, %5
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @die_off(%struct.TYPE_4__* %27, i32 %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dwarf_errmsg(i32 %32)
  %34 = call i32 @terminate(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33)
  br label %37

35:                                               ; preds = %23
  %36 = load i8**, i8*** %10, align 8
  store i8* null, i8** %36, align 8
  br label %37

37:                                               ; preds = %35, %26
  store i32 0, i32* %6, align 4
  br label %43

38:                                               ; preds = %20
  %39 = load i8*, i8** %12, align 8
  %40 = call i8* @xstrdup(i8* %39)
  %41 = load i8**, i8*** %10, align 8
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i64 @dwarf_attrval_string(i32, i32, i8**, i32*) #1

declare dso_local i32 @terminate(i8*, i32, i32) #1

declare dso_local i32 @die_off(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
