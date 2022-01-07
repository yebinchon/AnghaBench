; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dt_print_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_print.c_dt_print_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32*, i32* }
%struct.TYPE_5__ = type { i8*, i8* }

@NBBY = common dso_local global i32 0, align 4
@CTF_ERR = common dso_local global i64 0, align 8
@CTF_K_FUNCTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s`%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.TYPE_6__*)* @dt_print_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_print_ptr(i64 %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %7, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NBBY, align 4
  %26 = sdiv i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  store i64 %28, i64* %9, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @ctf_type_size(i32* %29, i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @ctf_type_reference(i32* %32, i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @CTF_ERR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %3
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @ctf_type_kind(i32* %39, i64 %40)
  %42 = load i64, i64* @CTF_K_FUNCTION, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %3
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @dt_print_hex(i32* %45, i64 %46, i64 %47)
  br label %72

49:                                               ; preds = %38
  %50 = load i64, i64* %9, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i64 @dtrace_lookup_by_addr(i32 %55, i32 %56, i32* %14, %struct.TYPE_5__* %13)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32*, i32** %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @dt_print_hex(i32* %60, i64 %61, i64 %62)
  br label %71

64:                                               ; preds = %49
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @fprintf(i32* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %69)
  br label %71

71:                                               ; preds = %64, %59
  br label %72

72:                                               ; preds = %71, %44
  ret void
}

declare dso_local i64 @ctf_type_size(i32*, i64) #1

declare dso_local i64 @ctf_type_reference(i32*, i64) #1

declare dso_local i64 @ctf_type_kind(i32*, i64) #1

declare dso_local i32 @dt_print_hex(i32*, i64, i64) #1

declare dso_local i64 @dtrace_lookup_by_addr(i32, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
