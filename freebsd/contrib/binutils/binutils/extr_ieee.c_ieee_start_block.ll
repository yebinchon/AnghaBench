; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_start_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ieee_bb_record_enum = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @ieee_start_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_start_block(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee_handle*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ieee_handle*
  store %struct.ieee_handle* %8, %struct.ieee_handle** %6, align 8
  %9 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %10 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %11 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %10, i32 0, i32 1
  %12 = call i32 @ieee_change_buffer(%struct.ieee_handle* %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %18 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ieee_write_number(%struct.ieee_handle* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %28 = call i32 @ieee_output_pending_parms(%struct.ieee_handle* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %80

32:                                               ; preds = %26
  br label %67

33:                                               ; preds = %16
  %34 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %35 = load i64, i64* @ieee_bb_record_enum, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ieee_write_byte(%struct.ieee_handle* %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %33
  %40 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %41 = call i32 @ieee_write_byte(%struct.ieee_handle* %40, i32 6)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %45 = call i32 @ieee_write_number(%struct.ieee_handle* %44, i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %49 = call i32 @ieee_write_id(%struct.ieee_handle* %48, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %53 = call i32 @ieee_write_number(%struct.ieee_handle* %52, i32 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %57 = call i32 @ieee_write_number(%struct.ieee_handle* %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ieee_write_number(%struct.ieee_handle* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %59, %55, %51, %47, %43, %39, %33
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %80

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %32
  %68 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @ieee_start_range(%struct.ieee_handle* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %3, align 4
  br label %80

74:                                               ; preds = %67
  %75 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %76 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %72, %64, %30, %14
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @ieee_change_buffer(%struct.ieee_handle*, i32*) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_output_pending_parms(%struct.ieee_handle*) #1

declare dso_local i32 @ieee_write_byte(%struct.ieee_handle*, i32) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

declare dso_local i32 @ieee_start_range(%struct.ieee_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
