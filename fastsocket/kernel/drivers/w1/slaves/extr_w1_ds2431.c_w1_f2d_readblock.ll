; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_ds2431.c_w1_f2d_readblock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/w1/slaves/extr_w1_ds2431.c_w1_f2d_readblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_slave = type { i32, i32 }

@W1_F2D_READ_MAXLEN = common dso_local global i32 0, align 4
@W1_F2D_READ_RETRIES = common dso_local global i32 0, align 4
@W1_F2D_READ_EEPROM = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"proof reading failed %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w1_slave*, i32, i32, i8*)* @w1_f2d_readblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w1_f2d_readblock(%struct.w1_slave* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.w1_slave*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [3 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.w1_slave* %0, %struct.w1_slave** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @W1_F2D_READ_MAXLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load i32, i32* @W1_F2D_READ_RETRIES, align 4
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %68, %4
  %21 = load i8, i8* @W1_F2D_READ_EEPROM, align 1
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  store i8 %25, i8* %26, align 1
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 8
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  store i8 %29, i8* %30, align 1
  %31 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %32 = call i64 @w1_reset_select_slave(%struct.w1_slave* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

35:                                               ; preds = %20
  %36 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %37 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %40 = call i32 @w1_write_block(i32 %38, i8* %39, i32 3)
  %41 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %42 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @w1_read_block(i32 %43, i8* %44, i32 %45)
  %47 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %48 = call i64 @w1_reset_select_slave(%struct.w1_slave* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

51:                                               ; preds = %35
  %52 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %53 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %56 = call i32 @w1_write_block(i32 %54, i8* %55, i32 3)
  %57 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %58 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @w1_read_block(i32 %59, i8* %18, i32 %60)
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @memcmp(i8* %18, i8* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

67:                                               ; preds = %51
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %20, label %72

72:                                               ; preds = %68
  %73 = load %struct.w1_slave*, %struct.w1_slave** %6, align 8
  %74 = getelementptr inbounds %struct.w1_slave, %struct.w1_slave* %73, i32 0, i32 0
  %75 = load i32, i32* @W1_F2D_READ_RETRIES, align 4
  %76 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %75)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %72, %66, %50, %34
  %78 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @w1_reset_select_slave(%struct.w1_slave*) #2

declare dso_local i32 @w1_write_block(i32, i8*, i32) #2

declare dso_local i32 @w1_read_block(i32, i8*, i32) #2

declare dso_local i32 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
