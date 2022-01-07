; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_line_numbers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_decode_line_numbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZEOF_LINETBL_LENGTH = common dso_local global i64 0, align 8
@GET_UNSIGNED = common dso_local global i32 0, align 4
@current_objfile = common dso_local global i32 0, align 4
@objfile = common dso_local global i32 0, align 4
@baseaddr = common dso_local global i64 0, align 8
@SIZEOF_LINETBL_LINENO = common dso_local global i64 0, align 8
@SIZEOF_LINETBL_STMT = common dso_local global i64 0, align 8
@SIZEOF_LINETBL_DELTA = common dso_local global i64 0, align 8
@current_subfile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @decode_line_numbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_line_numbers(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %72

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  store i8* %12, i8** %4, align 8
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* @SIZEOF_LINETBL_LENGTH, align 8
  %15 = load i32, i32* @GET_UNSIGNED, align 4
  %16 = load i32, i32* @current_objfile, align 4
  %17 = call i64 @target_to_host(i8* %13, i64 %14, i32 %15, i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* @SIZEOF_LINETBL_LENGTH, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  store i8* %20, i8** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @objfile, align 4
  %26 = call i64 @TARGET_FT_POINTER_SIZE(i32 %25)
  %27 = load i32, i32* @GET_UNSIGNED, align 4
  %28 = load i32, i32* @current_objfile, align 4
  %29 = call i64 @target_to_host(i8* %24, i64 %26, i32 %27, i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i32, i32* @objfile, align 4
  %31 = call i64 @TARGET_FT_POINTER_SIZE(i32 %30)
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 %31
  store i8* %33, i8** %3, align 8
  %34 = load i64, i64* @baseaddr, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %70, %11
  %38 = load i8*, i8** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ult i8* %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* @SIZEOF_LINETBL_LINENO, align 8
  %44 = load i32, i32* @GET_UNSIGNED, align 4
  %45 = load i32, i32* @current_objfile, align 4
  %46 = call i64 @target_to_host(i8* %42, i64 %43, i32 %44, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* @SIZEOF_LINETBL_LINENO, align 8
  %48 = load i64, i64* @SIZEOF_LINETBL_STMT, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 %49
  store i8* %51, i8** %3, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = load i64, i64* @SIZEOF_LINETBL_DELTA, align 8
  %54 = load i32, i32* @GET_UNSIGNED, align 4
  %55 = load i32, i32* @current_objfile, align 4
  %56 = call i64 @target_to_host(i8* %52, i64 %53, i32 %54, i32 %55)
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* @SIZEOF_LINETBL_DELTA, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %59, i8** %3, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %41
  %66 = load i32, i32* @current_subfile, align 4
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @record_line(i32 %66, i64 %67, i64 %68)
  br label %70

70:                                               ; preds = %65, %41
  br label %37

71:                                               ; preds = %37
  br label %72

72:                                               ; preds = %71, %1
  ret void
}

declare dso_local i64 @target_to_host(i8*, i64, i32, i32) #1

declare dso_local i64 @TARGET_FT_POINTER_SIZE(i32) #1

declare dso_local i32 @record_line(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
