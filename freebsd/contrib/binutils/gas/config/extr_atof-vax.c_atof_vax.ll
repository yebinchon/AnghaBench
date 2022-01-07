; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_atof_vax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_atof_vax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i32*, i32*, i64, i32* }

@MAX_PRECISION = common dso_local global i32 0, align 4
@GUARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32*)* @atof_vax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @atof_vax(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @MAX_PRECISION, align 4
  %14 = load i32, i32* @MAX_PRECISION, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @GUARD, align 4
  %17 = add nsw i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i8*, i8** %4, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i32, i32* @MAX_PRECISION, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8 0, i8* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @what_kind_of_float(i32 %30, i32* %11, i64* %12)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  store i8* null, i8** %10, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @make_invalid_floating_point_number(i32* %34)
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %36
  %40 = load i32, i32* @MAX_PRECISION, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i32* %20, i8 signext 0, i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = getelementptr inbounds i32, i32* %49, i64 -1
  %51 = load i32, i32* @GUARD, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32* %53, i32** %54, align 8
  %55 = call i64 @atof_generic(i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %7)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %39
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @make_invalid_floating_point_number(i32* %58)
  store i8* null, i8** %10, align 8
  br label %67

60:                                               ; preds = %39
  %61 = load i32, i32* %5, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = call i64 @flonum_gen2vax(i32 %61, %struct.TYPE_4__* %7, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i8* null, i8** %10, align 8
  br label %66

66:                                               ; preds = %65, %60
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67, %36
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i8* %69
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @what_kind_of_float(i32, i32*, i64*) #2

declare dso_local i32 @make_invalid_floating_point_number(i32*) #2

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i64 @atof_generic(i8**, i8*, i8*, %struct.TYPE_4__*) #2

declare dso_local i64 @flonum_gen2vax(i32, %struct.TYPE_4__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
