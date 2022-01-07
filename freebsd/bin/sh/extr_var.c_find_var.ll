; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_find_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_var.c_find_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.var = type { i32, i32, %struct.var* }

@vartab = common dso_local global %struct.var** null, align 8
@VTABSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.var* (i8*, %struct.var***, i32*)* @find_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.var* @find_var(i8* %0, %struct.var*** %1, i32* %2) #0 {
  %4 = alloca %struct.var*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.var***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.var*, align 8
  %11 = alloca %struct.var**, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.var*** %1, %struct.var**** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %12, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i8*, i8** %12, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %12, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 61
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 2, %27
  %29 = load i8*, i8** %12, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %12, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  %33 = add i32 %28, %32
  store i32 %33, i32* %8, align 4
  br label %14

34:                                               ; preds = %24
  %35 = load i8*, i8** %12, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %34
  %47 = load %struct.var**, %struct.var*** @vartab, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @VTABSIZE, align 4
  %50 = urem i32 %48, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.var*, %struct.var** %47, i64 %51
  store %struct.var** %52, %struct.var*** %11, align 8
  %53 = load %struct.var***, %struct.var**** %6, align 8
  %54 = icmp ne %struct.var*** %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.var**, %struct.var*** %11, align 8
  %57 = load %struct.var***, %struct.var**** %6, align 8
  store %struct.var** %56, %struct.var*** %57, align 8
  br label %58

58:                                               ; preds = %55, %46
  %59 = load %struct.var**, %struct.var*** %11, align 8
  %60 = load %struct.var*, %struct.var** %59, align 8
  store %struct.var* %60, %struct.var** %10, align 8
  br label %61

61:                                               ; preds = %88, %58
  %62 = load %struct.var*, %struct.var** %10, align 8
  %63 = icmp ne %struct.var* %62, null
  br i1 %63, label %64, label %93

64:                                               ; preds = %61
  %65 = load %struct.var*, %struct.var** %10, align 8
  %66 = getelementptr inbounds %struct.var, %struct.var* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %88

71:                                               ; preds = %64
  %72 = load %struct.var*, %struct.var** %10, align 8
  %73 = getelementptr inbounds %struct.var, %struct.var* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i64 @memcmp(i32 %74, i8* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %88

80:                                               ; preds = %71
  %81 = load %struct.var***, %struct.var**** %6, align 8
  %82 = icmp ne %struct.var*** %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.var**, %struct.var*** %11, align 8
  %85 = load %struct.var***, %struct.var**** %6, align 8
  store %struct.var** %84, %struct.var*** %85, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.var*, %struct.var** %10, align 8
  store %struct.var* %87, %struct.var** %4, align 8
  br label %94

88:                                               ; preds = %79, %70
  %89 = load %struct.var*, %struct.var** %10, align 8
  %90 = getelementptr inbounds %struct.var, %struct.var* %89, i32 0, i32 2
  store %struct.var** %90, %struct.var*** %11, align 8
  %91 = load %struct.var**, %struct.var*** %11, align 8
  %92 = load %struct.var*, %struct.var** %91, align 8
  store %struct.var* %92, %struct.var** %10, align 8
  br label %61

93:                                               ; preds = %61
  store %struct.var* null, %struct.var** %4, align 8
  br label %94

94:                                               ; preds = %93, %86
  %95 = load %struct.var*, %struct.var** %4, align 8
  ret %struct.var* %95
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
