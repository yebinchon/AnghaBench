; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_dynamic_section_parisc_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_readelf.c_dynamic_section_parisc_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i64, i8* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@dynamic_section_parisc_val.flags = internal global [17 x %struct.anon] [%struct.anon { i64 137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0) }, %struct.anon { i64 139, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0) }, %struct.anon { i64 138, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i64 131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i64 143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0) }, %struct.anon { i64 144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i64 140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0) }, %struct.anon { i64 142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i64 141, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0) }, %struct.anon { i64 129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i64 145, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0) }, %struct.anon { i64 134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i64 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0) }, %struct.anon { i64 133, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i64 132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0) }, %struct.anon { i64 135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i64 130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0) }], align 16
@.str = private unnamed_addr constant [17 x i8] c"HP_DEBUG_PRIVATE\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"HP_DEBUG_CALLBACK\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"HP_DEBUG_CALLBACK_BOR\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"HP_NO_ENVVAR\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"HP_BIND_NOW\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"HP_BIND_NONFATAL\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"HP_BIND_VERBOSE\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"HP_BIND_RESTRICTED\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"HP_BIND_SYMBOLIC\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"HP_RPATH_FIRST\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"HP_BIND_DEPTH_FIRST\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"HP_GST\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"HP_SHLIB_FIXED\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"HP_MERGE_SHLIB_SEG\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"HP_NODELETE\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"HP_GROUP\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"HP_PROTECT_LINKAGE_TABLE\00", align 1
@stdout = common dso_local global i32 0, align 4
@HEX = common dso_local global i32 0, align 4
@PREFIX_HEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @dynamic_section_parisc_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dynamic_section_parisc_val(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %66 [
    i32 136, label %9
  ]

9:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %47, %9
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %15, 17
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @dynamic_section_parisc_val.flags, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 16
  %24 = and i64 %19, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 @putchar(i8 signext 32)
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @dynamic_section_parisc_val.flags, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fputs(i8* %35, i32 %36)
  store i32 0, i32* %3, align 4
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @dynamic_section_parisc_val.flags, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 16
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = xor i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %31, %17
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %4, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %4, align 8
  br label %14

50:                                               ; preds = %14
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 @putchar(i8 signext 32)
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @HEX, align 4
  %64 = call i32 @print_vma(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %53
  br label %73

66:                                               ; preds = %1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PREFIX_HEX, align 4
  %72 = call i32 @print_vma(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %66, %65
  %74 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @print_vma(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
