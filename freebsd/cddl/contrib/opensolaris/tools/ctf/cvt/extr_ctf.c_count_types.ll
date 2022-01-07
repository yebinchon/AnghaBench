; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_count_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_count_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@CTF_LSTRUCT_THRESH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unknown CTF type %d (#%d) at %#x\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"CTF read %d types\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64)* @count_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_types(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  store i64 %16, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  store i64 %21, i64* %5, align 8
  br label %22

22:                                               ; preds = %90, %2
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = icmp slt i64 %23, %28
  br i1 %29, label %30, label %96

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %8, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @CTF_INFO_VLEN(i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = call i32 @get_ctt_size(%struct.TYPE_5__* %39, i64* %10, i64* %11)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CTF_INFO_KIND(i32 %43)
  switch i32 %44, label %80 [
    i32 135, label %45
    i32 138, label %45
    i32 134, label %48
    i32 137, label %48
    i32 131, label %48
    i32 128, label %48
    i32 140, label %48
    i32 133, label %48
    i32 136, label %48
    i32 141, label %56
    i32 132, label %59
    i32 130, label %59
    i32 139, label %74
    i32 129, label %79
  ]

45:                                               ; preds = %30, %30
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, 4
  store i64 %47, i64* %5, align 8
  br label %90

48:                                               ; preds = %30, %30, %30, %30, %30, %30, %30
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %50, 1
  %52 = add i64 %49, %51
  %53 = mul i64 4, %52
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %5, align 8
  br label %90

56:                                               ; preds = %30
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %5, align 8
  br label %90

59:                                               ; preds = %30, %30
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @CTF_LSTRUCT_THRESH, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  %65 = mul i64 4, %64
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %5, align 8
  br label %73

68:                                               ; preds = %59
  %69 = load i64, i64* %9, align 8
  %70 = mul i64 4, %69
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %68, %63
  br label %90

74:                                               ; preds = %30
  %75 = load i64, i64* %9, align 8
  %76 = mul i64 4, %75
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %5, align 8
  br label %90

79:                                               ; preds = %30
  br label %90

80:                                               ; preds = %30
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @CTF_INFO_KIND(i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %4, align 8
  %88 = sub nsw i64 %86, %87
  %89 = call i32 @parseterminate(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i64 %88)
  br label %90

90:                                               ; preds = %80, %79, %74, %73, %56, %48, %45
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %5, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %22

96:                                               ; preds = %22
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @debug(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i64 @CTF_INFO_VLEN(i32) #1

declare dso_local i32 @get_ctt_size(%struct.TYPE_5__*, i64*, i64*) #1

declare dso_local i32 @CTF_INFO_KIND(i32) #1

declare dso_local i32 @parseterminate(i8*, i32, i32, i64) #1

declare dso_local i32 @debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
