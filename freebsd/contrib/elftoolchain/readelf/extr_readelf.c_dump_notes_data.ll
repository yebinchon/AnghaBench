; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_notes_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/readelf/extr_readelf.c_dump_notes_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.readelf = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"bad note data alignment\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"   ABI tag: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"   Arch tag: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"   Features:\00", align 1
@note_feature_ctl_flags = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"GNU\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"   description data:\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.readelf*, i8*, i32, i8*, i64)* @dump_notes_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_notes_data(%struct.readelf* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.readelf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store %struct.readelf* %0, %struct.readelf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 3
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %71

19:                                               ; preds = %5
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %12, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %56 [
    i32 131, label %27
    i32 130, label %36
    i32 129, label %45
  ]

27:                                               ; preds = %25
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %71

31:                                               ; preds = %27
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %89

36:                                               ; preds = %25
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 4
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %71

40:                                               ; preds = %36
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  br label %89

45:                                               ; preds = %25
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  br label %71

49:                                               ; preds = %45
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @note_feature_ctl_flags, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dump_flags(i32 %51, i32 %54)
  br label %89

56:                                               ; preds = %25
  br label %70

57:                                               ; preds = %19
  %58 = load i8*, i8** %7, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  switch i32 %62, label %68 [
    i32 128, label %63
  ]

63:                                               ; preds = %61
  %64 = load %struct.readelf*, %struct.readelf** %6, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @dump_gnu_property_type_0(%struct.readelf* %64, i8* %65, i64 %66)
  br label %89

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %48, %39, %30, %17
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %11, align 8
  br label %73

73:                                               ; preds = %84, %71
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %10, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %77
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %11, align 8
  br label %73

87:                                               ; preds = %73
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %63, %49, %40, %31
  ret void
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_flags(i32, i32) #1

declare dso_local i32 @dump_gnu_property_type_0(%struct.readelf*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
