; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_write_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_write_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@ieee_extension_length_1_enum = common dso_local global i64 0, align 8
@ieee_extension_length_2_enum = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"IEEE string length overflow: %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee_handle*, i8*)* @ieee_write_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_write_id(%struct.ieee_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee_handle* %0, %struct.ieee_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @strlen(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ule i32 %9, 127
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = trunc i32 %13 to i8
  %15 = call i32 @ieee_write_byte(%struct.ieee_handle* %12, i8 signext %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %85

19:                                               ; preds = %11
  br label %65

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ule i32 %21, 255
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %25 = load i64, i64* @ieee_extension_length_1_enum, align 8
  %26 = trunc i64 %25 to i32
  %27 = trunc i32 %26 to i8
  %28 = call i32 @ieee_write_byte(%struct.ieee_handle* %24, i8 signext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = trunc i32 %32 to i8
  %34 = call i32 @ieee_write_byte(%struct.ieee_handle* %31, i8 signext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30, %23
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %85

38:                                               ; preds = %30
  br label %64

39:                                               ; preds = %20
  %40 = load i32, i32* %6, align 4
  %41 = icmp ule i32 %40, 65535
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %44 = load i64, i64* @ieee_extension_length_2_enum, align 8
  %45 = trunc i64 %44 to i32
  %46 = trunc i32 %45 to i8
  %47 = call i32 @ieee_write_byte(%struct.ieee_handle* %43, i8 signext %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ieee_write_2bytes(%struct.ieee_handle* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49, %42
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %85

56:                                               ; preds = %49
  br label %63

57:                                               ; preds = %39
  %58 = load i32, i32* @stderr, align 4
  %59 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @fprintf(i32 %58, i8* %59, i32 %60)
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %38
  br label %65

65:                                               ; preds = %64, %19
  br label %66

66:                                               ; preds = %80, %65
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @ieee_write_byte(%struct.ieee_handle* %72, i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  br label %66

83:                                               ; preds = %66
  %84 = load i32, i32* @TRUE, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %77, %57, %54, %36, %17
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i8 signext) #1

declare dso_local i32 @ieee_write_2bytes(%struct.ieee_handle*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
