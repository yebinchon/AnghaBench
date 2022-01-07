; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_uaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_uaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@EDT_DMISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i8*, i32*, i8*, i64, i64)* @pfprint_uaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfprint_uaddr(%struct.TYPE_8__* %0, i32* %1, i8* %2, i32* %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 256, i32* %18, align 4
  store i64 0, i64* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_9__* @dt_idhash_lookup(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %21, align 8
  %26 = load i64, i64* %14, align 8
  switch i64 %26, label %47 [
    i64 4, label %27
    i64 8, label %32
    i64 16, label %36
  ]

27:                                               ; preds = %7
  %28 = load i8*, i8** %13, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %19, align 8
  br label %51

32:                                               ; preds = %7
  %33 = load i8*, i8** %13, align 8
  %34 = bitcast i8* %33 to i64*
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %19, align 8
  br label %51

36:                                               ; preds = %7
  %37 = load i8*, i8** %13, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = inttoptr i64 %38 to i64*
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %20, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = inttoptr i64 %43 to i64*
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %19, align 8
  br label %51

47:                                               ; preds = %7
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = load i32, i32* @EDT_DMISMATCH, align 4
  %50 = call i32 @dt_set_errno(%struct.TYPE_8__* %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %86

51:                                               ; preds = %36, %32, %27
  %52 = load i64, i64* %20, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %61 = icmp ne %struct.TYPE_9__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %20, align 8
  br label %66

66:                                               ; preds = %62, %59, %54, %51
  br label %67

67:                                               ; preds = %71, %66
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i8* @alloca(i32 %69)
  store i8* %70, i8** %16, align 8
  br label %71

71:                                               ; preds = %67
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = load i64, i64* %20, align 8
  %74 = load i64, i64* %19, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @dtrace_uaddr2str(%struct.TYPE_8__* %72, i64 %73, i64 %74, i8* %75, i32 %76)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %67, label %80

80:                                               ; preds = %71
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = call i32 @dt_printf(%struct.TYPE_8__* %81, i32* %82, i8* %83, i8* %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %80, %47
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_9__* @dt_idhash_lookup(i32, i8*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @dtrace_uaddr2str(%struct.TYPE_8__*, i64, i64, i8*, i32) #1

declare dso_local i32 @dt_printf(%struct.TYPE_8__*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
