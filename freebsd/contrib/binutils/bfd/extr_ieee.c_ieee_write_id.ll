; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_write_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@ieee_extension_length_1_enum = common dso_local global i32 0, align 4
@ieee_extension_length_2_enum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s: string too long (%d chars, max 65535)\00", align 1
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ieee_write_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_write_id(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ule i64 %9, 127
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @ieee_write_byte(i32* %12, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %77

19:                                               ; preds = %11
  br label %65

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = icmp ult i64 %21, 255
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @ieee_extension_length_1_enum, align 4
  %26 = call i32 @ieee_write_byte(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @ieee_write_byte(i32* %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %77

36:                                               ; preds = %28
  br label %64

37:                                               ; preds = %20
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %38, 65535
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @ieee_extension_length_2_enum, align 4
  %43 = call i32 @ieee_write_byte(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @ieee_write_2bytes(i32* %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %45, %40
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %3, align 4
  br label %77

53:                                               ; preds = %45
  br label %63

54:                                               ; preds = %37
  %55 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @bfd_get_filename(i32* %56)
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @_bfd_error_handler(i32 %55, i32 %57, i64 %58)
  %60 = load i32, i32* @bfd_error_invalid_operation, align 4
  %61 = call i32 @bfd_set_error(i32 %60)
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %77

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %19
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @bfd_bwrite(i8* %66, i32 %68, i32* %69)
  %71 = load i64, i64* %6, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %73, %54, %51, %34, %17
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ieee_write_byte(i32*, i32) #1

declare dso_local i32 @ieee_write_2bytes(i32*, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i64 @bfd_bwrite(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
