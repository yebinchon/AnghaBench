; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_gnu_property_type_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_gnu_property_type_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"      Properties: \00", align 1
@GNU_PROPERTY_LOPROC = common dso_local global i64 0, align 8
@GNU_PROPERTY_HIPROC = common dso_local global i64 0, align 8
@EM_X86_64 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"machine type %x unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"x86 features:\00", align 1
@gnu_property_x86_feature_1_and_bits = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"corrupt GNU property\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"remaining description data:\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i8*, i64)* @dump_gnu_property_type_0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_gnu_property_type_0(%struct.readelf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.readelf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.readelf* %0, %struct.readelf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %69, %3
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %78

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %79

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = bitcast i8* %23 to i64*
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 8
  store i8* %27, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %28, 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %79

34:                                               ; preds = %18
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @GNU_PROPERTY_LOPROC, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @GNU_PROPERTY_HIPROC, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %38
  %43 = load %struct.readelf*, %struct.readelf** %4, align 8
  %44 = getelementptr inbounds %struct.readelf, %struct.readelf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EM_X86_64, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.readelf*, %struct.readelf** %4, align 8
  %51 = getelementptr inbounds %struct.readelf, %struct.readelf* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  br label %81

55:                                               ; preds = %42
  %56 = load i64, i64* %8, align 8
  switch i64 %56, label %68 [
    i64 128, label %57
  ]

57:                                               ; preds = %55
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 4
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %79

62:                                               ; preds = %57
  %63 = load i32, i32* @gnu_property_x86_feature_1_and_bits, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = bitcast i8* %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @dump_flags(i32 %63, i64 %66)
  br label %68

68:                                               ; preds = %55, %62
  br label %69

69:                                               ; preds = %68, %38, %34
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @roundup2(i64 %70, i32 8)
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @roundup2(i64 %74, i32 8)
  %76 = load i64, i64* %6, align 8
  %77 = sub i64 %76, %75
  store i64 %77, i64* %6, align 8
  br label %11

78:                                               ; preds = %11
  br label %99

79:                                               ; preds = %61, %33, %17
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %49
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %83

83:                                               ; preds = %94, %81
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %87
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %7, align 8
  br label %83

97:                                               ; preds = %83
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %78
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_flags(i32, i64) #1

declare dso_local i64 @roundup2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
